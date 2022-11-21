package com.prineside.tdi2.systems;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.StringBuilder;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.BasicLevelQuestConfig;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.managers.BasicLevelManager;
import com.prineside.tdi2.p036ui.components.QuestList;
import com.prineside.tdi2.systems.GameStateSystem;
import com.prineside.tdi2.utils.NAGS;
@NAGS
/* loaded from: classes2.dex */
public class QuestSystem extends GameSystem {

    /* renamed from: d */
    public float f11739d;

    /* renamed from: k */
    public boolean f11740k;

    /* renamed from: q */
    public BasicLevelWaveQuest f11742q;

    /* renamed from: r */
    public int f11743r;

    /* renamed from: a */
    public final DelayedRemovalArray<QuestEntry> f11737a = new DelayedRemovalArray<>(true, 1, QuestEntry.class);

    /* renamed from: b */
    public final DelayedRemovalArray<DelayedQuestRemoveEntry> f11738b = new DelayedRemovalArray<>(false, 1, DelayedQuestRemoveEntry.class);

    /* renamed from: p */
    public int f11741p = 0;

    /* loaded from: classes2.dex */
    public static class BasicLevelQuest extends RegularQuest {

        /* renamed from: i */
        public final BasicLevel f11744i;

        /* renamed from: j */
        public final BasicLevelQuestConfig f11745j;

        /* renamed from: k */
        public final GameSystemProvider f11746k;

        /* renamed from: l */
        public double f11747l;

        @Override // com.prineside.tdi2.systems.QuestSystem.RegularQuest
        public double getValue() {
            if (this.f11745j.isDuringGame()) {
                return this.f11746k.statistics.getCurrentGameStatistic(this.f11745j.statisticsType);
            }
            BasicLevelQuestConfig basicLevelQuestConfig = this.f11745j;
            return basicLevelQuestConfig.savedValue + this.f11746k.statistics.getCurrentGameStatistic(basicLevelQuestConfig.statisticsType);
        }

        @Override // com.prineside.tdi2.systems.QuestSystem.Quest
        public void onCompletion() {
            this.f11746k._quest.getListItem(this);
            this.f11746k.gameState.addCompletedQuest(this.f11761b);
            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.QUEST, Game.getTimestampSeconds());
            issuedItems.items.addAll(this.f11764e);
            int extraDustInEndless = this.f11745j.getExtraDustInEndless(this.f11746k.gameValue);
            if (extraDustInEndless > 0 && DifficultyMode.isEndless(this.f11746k.gameState.difficultyMode)) {
                issuedItems.items.add(new ItemStack(Item.C1543D.BIT_DUST, extraDustInEndless));
            }
            issuedItems.questBasicLevel = this.f11744i.name;
            issuedItems.questId = this.f11761b;
            this.f11746k.gameState.addCompletedQuestIssuedPrizes(issuedItems, 512.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 240.0f, 16);
            int i = 0;
            while (true) {
                Array<ItemStack> array = this.f11764e;
                if (i < array.size) {
                    if (array.get(i).getItem() == Item.C1543D.STAR) {
                        QuestSystem.m20906a(this.f11746k._quest, this.f11764e.get(i).getCount());
                        this.f11746k._quest.m20904c();
                    }
                    i++;
                } else {
                    return;
                }
            }
        }

        public BasicLevelQuest(BasicLevel basicLevel, BasicLevelQuestConfig basicLevelQuestConfig, GameSystemProvider gameSystemProvider) {
            super(basicLevelQuestConfig.getId(), basicLevelQuestConfig.getTitle(false, true), basicLevelQuestConfig.getRequiredValue(gameSystemProvider.gameValue.getSnapshot()), basicLevelQuestConfig.getPrizes(gameSystemProvider.gameValue.getSnapshot()), gameSystemProvider);
            this.f11747l = -1.0d;
            this.f11744i = basicLevel;
            this.f11745j = basicLevelQuestConfig;
            this.f11746k = gameSystemProvider;
        }

        @Override // com.prineside.tdi2.systems.QuestSystem.RegularQuest, com.prineside.tdi2.systems.QuestSystem.Quest
        public void update() {
            double value = getValue();
            if (this.f11747l != value) {
                QuestList.QuestListItem listItem = this.f11746k._quest.getListItem(this);
                if (listItem != null) {
                    StringBuilder stringBuilder = RegularQuest.f11759h;
                    stringBuilder.setLength(0);
                    stringBuilder.append(this.f11762c);
                    if (this.f11763d > 1.0d) {
                        stringBuilder.append(' ').append(this.f11745j.formatValueForUi((long) StrictMath.min(value, this.f11763d), this.f11763d, true));
                    }
                    listItem.setText(stringBuilder);
                }
                this.f11747l = value;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class BasicLevelWaveQuest extends RegularQuest {

        /* renamed from: i */
        public final BasicLevel.WaveQuest f11748i;

        /* renamed from: j */
        public final BasicLevel f11749j;

        /* renamed from: k */
        public final GameSystemProvider f11750k;

        /* renamed from: l */
        public double f11751l;

        @Override // com.prineside.tdi2.systems.QuestSystem.RegularQuest
        public double getValue() {
            return this.f11750k.wave.getCompletedWavesCount();
        }

        public BasicLevelWaveQuest(BasicLevel basicLevel, BasicLevel.WaveQuest waveQuest, GameSystemProvider gameSystemProvider) {
            super(waveQuest.f8465id, Game.f8589i.localeManager.i18n.get("defeat_waves"), waveQuest.waves, waveQuest.prizes, gameSystemProvider);
            this.f11751l = -1.0d;
            this.f11749j = basicLevel;
            this.f11748i = waveQuest;
            this.f11750k = gameSystemProvider;
        }

        @Override // com.prineside.tdi2.systems.QuestSystem.Quest
        public void onCompletion() {
            this.f11750k._quest.getListItem(this);
            this.f11750k.gameState.addCompletedQuest(this.f11748i.f8465id);
            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.WAVE_QUEST, Game.getTimestampSeconds());
            issuedItems.items.addAll(this.f11748i.prizes);
            issuedItems.waveQuestBasicLevel = this.f11749j.name;
            issuedItems.waveQuestId = this.f11748i.f8465id;
            this.f11750k.gameState.addCompletedQuestIssuedPrizes(issuedItems, 512.0f, Game.f8589i.settingsManager.getScaledViewportHeight() - 240.0f, 16);
            int i = 0;
            while (true) {
                Array<ItemStack> array = this.f11748i.prizes;
                if (i < array.size) {
                    if (array.get(i).getItem() == Item.C1543D.STAR) {
                        QuestSystem.m20906a(this.f11750k._quest, this.f11748i.prizes.get(i).getCount());
                        this.f11750k._quest.m20904c();
                    }
                    i++;
                } else {
                    return;
                }
            }
        }

        @Override // com.prineside.tdi2.systems.QuestSystem.RegularQuest, com.prineside.tdi2.systems.QuestSystem.Quest
        public void update() {
            double value = getValue();
            if (this.f11751l != value) {
                QuestList.QuestListItem listItem = this.f11750k._quest.getListItem(this);
                if (listItem != null) {
                    StringBuilder stringBuilder = RegularQuest.f11759h;
                    stringBuilder.setLength(0);
                    stringBuilder.append(this.f11762c);
                    stringBuilder.append(" [#90A4AE]").append((int) StrictMath.min(value, this.f11763d)).append("[] / [#FFFFFF]").append((int) this.f11763d).append("[]");
                    listItem.setText(stringBuilder);
                }
                this.f11751l = value;
            }
        }
    }

    /* loaded from: classes2.dex */
    public class DelayedQuestRemoveEntry {

        /* renamed from: a */
        public Quest f11752a;

        /* renamed from: b */
        public float f11753b;

        public DelayedQuestRemoveEntry() {
        }

        /* renamed from: e */
        public static /* synthetic */ float m20898e(DelayedQuestRemoveEntry delayedQuestRemoveEntry, float f) {
            float f2 = delayedQuestRemoveEntry.f11753b - f;
            delayedQuestRemoveEntry.f11753b = f2;
            return f2;
        }
    }

    /* loaded from: classes2.dex */
    public interface Quest {
        String getTitle();

        boolean isCompleted();

        void onCompletion();

        void update();
    }

    /* loaded from: classes2.dex */
    public class QuestEntry {

        /* renamed from: a */
        public Quest f11755a;

        /* renamed from: b */
        public QuestList.QuestListItem f11756b;

        /* renamed from: c */
        public boolean f11757c;

        public QuestEntry() {
        }
    }

    /* renamed from: a */
    public static /* synthetic */ int m20906a(QuestSystem questSystem, int i) {
        int i2 = questSystem.f11743r + i;
        questSystem.f11743r = i2;
        return i2;
    }

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return false;
    }

    public int getBasicLevelStars() {
        return this.f11743r;
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Quest";
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postStateRestore() {
    }

    public void removeQuest(Quest quest) {
        this.f11737a.begin();
        int i = 0;
        while (true) {
            DelayedRemovalArray<QuestEntry> delayedRemovalArray = this.f11737a;
            if (i < delayedRemovalArray.size) {
                if (delayedRemovalArray.items[i].f11755a == quest) {
                    GraphicsSystem graphicsSystem = this.f8844S._graphics;
                    if (graphicsSystem != null) {
                        graphicsSystem.questList.removeQuestListItem(this.f11737a.items[i].f11756b);
                    }
                    this.f11737a.removeIndex(i);
                }
                i++;
            } else {
                delayedRemovalArray.end();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
    }

    /* loaded from: classes2.dex */
    public static abstract class RegularQuest implements Quest {

        /* renamed from: h */
        public static final StringBuilder f11759h = new StringBuilder();

        /* renamed from: a */
        public final GameSystemProvider f11760a;

        /* renamed from: b */
        public final String f11761b;

        /* renamed from: c */
        public final String f11762c;

        /* renamed from: d */
        public final double f11763d;

        /* renamed from: e */
        public final Array<ItemStack> f11764e;

        /* renamed from: f */
        public double f11765f = -1.0d;

        /* renamed from: g */
        public final GameSystemProvider f11766g;

        @Override // com.prineside.tdi2.systems.QuestSystem.Quest
        public String getTitle() {
            return this.f11762c;
        }

        public abstract double getValue();

        @Override // com.prineside.tdi2.systems.QuestSystem.Quest
        public boolean isCompleted() {
            return getValue() >= this.f11763d;
        }

        public RegularQuest(String str, CharSequence charSequence, double d, Array<ItemStack> array, GameSystemProvider gameSystemProvider) {
            this.f11760a = gameSystemProvider;
            this.f11761b = str;
            this.f11762c = charSequence.toString();
            this.f11764e = array;
            this.f11763d = d;
            this.f11766g = gameSystemProvider;
        }

        @Override // com.prineside.tdi2.systems.QuestSystem.Quest
        public void update() {
            double value = getValue();
            if (this.f11765f != value) {
                QuestList.QuestListItem listItem = this.f11766g._quest.getListItem(this);
                if (listItem != null) {
                    StringBuilder stringBuilder = f11759h;
                    stringBuilder.setLength(0);
                    stringBuilder.append(this.f11762c);
                    if (this.f11763d > 1.0d) {
                        stringBuilder.append(' ').append((long) StrictMath.min(value, this.f11763d)).append('/').append((long) this.f11763d);
                    }
                    listItem.setText(stringBuilder);
                }
                this.f11765f = value;
            }
        }
    }

    public QuestEntry addQuest(Quest quest) {
        if (quest != null) {
            QuestEntry questEntry = new QuestEntry();
            questEntry.f11755a = quest;
            GraphicsSystem graphicsSystem = this.f8844S._graphics;
            if (graphicsSystem != null) {
                QuestList.QuestListItem addQuestListItem = graphicsSystem.questList.addQuestListItem();
                int i = 0;
                if (quest instanceof BasicLevelQuest) {
                    BasicLevelQuest basicLevelQuest = (BasicLevelQuest) quest;
                    if (Game.f8589i.dailyQuestManager.getDailyLootCurrentQuest().equals(basicLevelQuest.f11745j.f8469id)) {
                        addQuestListItem.setTitlePrefix(Game.f8589i.assetManager.replaceRegionAliasesWithChars("[#03A9F4]<@icon-calendar>[] "));
                    } else {
                        while (true) {
                            Array<ItemStack> array = basicLevelQuest.f11745j.prizes;
                            if (i >= array.size) {
                                break;
                            } else if (array.items[i].getItem() == Item.C1543D.STAR) {
                                addQuestListItem.setTitlePrefix(Game.f8589i.assetManager.replaceRegionAliasesWithChars("[#FFC107]<@icon-star>[] "));
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                } else if (quest instanceof BasicLevelWaveQuest) {
                    BasicLevelWaveQuest basicLevelWaveQuest = (BasicLevelWaveQuest) quest;
                    while (true) {
                        if (i >= basicLevelWaveQuest.f11748i.prizes.size) {
                            break;
                        } else if (basicLevelWaveQuest.f11748i.prizes.items[i].getItem() == Item.C1543D.STAR) {
                            addQuestListItem.setTitlePrefix(Game.f8589i.assetManager.replaceRegionAliasesWithChars("[#FFC107]<@icon-star>[] "));
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                addQuestListItem.setText(quest.getTitle());
                questEntry.f11756b = addQuestListItem;
            }
            this.f11737a.add(questEntry);
            return questEntry;
        }
        throw new IllegalArgumentException("Quest is null");
    }

    /* renamed from: c */
    public final void m20904c() {
        GameSystemProvider gameSystemProvider = this.f8844S;
        GraphicsSystem graphicsSystem = gameSystemProvider._graphics;
        if (graphicsSystem == null) {
            return;
        }
        if (gameSystemProvider.gameState.gameMode == GameStateSystem.GameMode.BASIC_LEVELS) {
            graphicsSystem.mainUi.setLevelStarsIcon(this.f11743r);
        } else {
            graphicsSystem.mainUi.setLevelStarsIcon(1);
        }
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f11737a.clear();
        this.f11738b.clear();
        this.f11742q = null;
        super.dispose();
    }

    public void draw(float f, float f2) {
        DelayedRemovalArray<QuestEntry> delayedRemovalArray;
        DelayedRemovalArray<DelayedQuestRemoveEntry> delayedRemovalArray2;
        float f3 = f2 * 1.25f;
        this.f11737a.begin();
        int i = 0;
        int i2 = 0;
        while (true) {
            delayedRemovalArray = this.f11737a;
            if (i2 >= delayedRemovalArray.size) {
                break;
            }
            QuestEntry questEntry = delayedRemovalArray.items[i2];
            questEntry.f11755a.update();
            if (!questEntry.f11757c && questEntry.f11755a.isCompleted()) {
                QuestList.QuestListItem listItem = getListItem(questEntry.f11755a);
                if (listItem != null) {
                    listItem.setCompleted(true);
                }
                questEntry.f11755a.onCompletion();
                questEntry.f11757c = true;
            }
            i2++;
        }
        delayedRemovalArray.end();
        this.f11738b.begin();
        int i3 = 0;
        while (true) {
            delayedRemovalArray2 = this.f11738b;
            if (i3 >= delayedRemovalArray2.size) {
                break;
            }
            DelayedQuestRemoveEntry delayedQuestRemoveEntry = delayedRemovalArray2.get(i3);
            DelayedQuestRemoveEntry.m20898e(delayedQuestRemoveEntry, f3);
            if (delayedQuestRemoveEntry.f11753b <= 0.0f) {
                removeQuest(delayedQuestRemoveEntry.f11752a);
                this.f11738b.removeIndex(i3);
            }
            i3++;
        }
        delayedRemovalArray2.end();
        float f4 = this.f11739d + f3;
        this.f11739d = f4;
        if (f4 > 1.0f) {
            this.f11739d = 0.0f;
            if (this.f8844S.gameState.gameMode == GameStateSystem.GameMode.BASIC_LEVELS) {
                BasicLevelWaveQuest basicLevelWaveQuest = this.f11742q;
                if (basicLevelWaveQuest == null || basicLevelWaveQuest.isCompleted()) {
                    BasicLevel.WaveQuest waveQuest = null;
                    BasicLevel level = Game.f8589i.basicLevelManager.getLevel(this.f8844S.gameState.basicLevelName);
                    while (true) {
                        Array<BasicLevel.WaveQuest> array = level.waveQuests;
                        if (i >= array.size) {
                            break;
                        }
                        BasicLevel.WaveQuest waveQuest2 = array.get(i);
                        if (waveQuest2.waves > this.f11741p && !waveQuest2.isCompleted()) {
                            waveQuest = waveQuest2;
                            break;
                        }
                        i++;
                    }
                    if (waveQuest != null) {
                        Quest quest = this.f11742q;
                        if (quest != null) {
                            removeQuest(quest, 2.0f);
                        }
                        BasicLevelWaveQuest createIngameQuest = waveQuest.createIngameQuest(this.f8844S);
                        addQuest(createIngameQuest);
                        this.f11742q = createIngameQuest;
                        this.f11741p = waveQuest.waves;
                    }
                }
            }
        }
    }

    public QuestList.QuestListItem getListItem(Quest quest) {
        if (quest != null) {
            int i = 0;
            while (true) {
                DelayedRemovalArray<QuestEntry> delayedRemovalArray = this.f11737a;
                if (i < delayedRemovalArray.size) {
                    if (delayedRemovalArray.items[i].f11755a == quest) {
                        return this.f11737a.items[i].f11756b;
                    }
                    i++;
                } else {
                    return null;
                }
            }
        } else {
            throw new IllegalArgumentException("Quest is null");
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void postSetup() {
        boolean z;
        Quest createIngameQuest;
        if (GameStateSystem.GameMode.isBasicLevel(this.f8844S.gameState.gameMode)) {
            int intValue = this.f8844S.gameValue.getIntValue(GameValueType.REGULAR_QUESTS_SLOTS);
            BasicLevel level = Game.f8589i.basicLevelManager.getLevel(this.f8844S.gameState.basicLevelName);
            int i = 0;
            int i2 = 0;
            while (true) {
                Array<BasicLevel.WaveQuest> array = level.waveQuests;
                if (i2 < array.size) {
                    if (!array.items[i2].isCompleted()) {
                        z = false;
                        break;
                    }
                    i2++;
                } else {
                    z = true;
                    break;
                }
            }
            if (z) {
                Logger.log("QuestSystem", "all WQ are completed, +1 quest slot");
                intValue++;
            }
            int i3 = 0;
            while (true) {
                Array<BasicLevelQuestConfig> array2 = level.quests;
                if (i < array2.size) {
                    BasicLevelQuestConfig basicLevelQuestConfig = array2.get(i);
                    if (!basicLevelQuestConfig.isCompleted() && (createIngameQuest = basicLevelQuestConfig.createIngameQuest(this.f8844S)) != null) {
                        this.f8844S._quest.addQuest(createIngameQuest);
                        i3++;
                        if (i3 >= intValue) {
                            return;
                        }
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public void saveBasicLevelQuestValues() {
        if (this.f11740k) {
            Logger.error("QuestSystem", "failed to save quests progress", new RuntimeException("saveBasicLevelQuestValues() already called"));
            return;
        }
        this.f11740k = true;
        int i = 0;
        while (true) {
            DelayedRemovalArray<QuestEntry> delayedRemovalArray = this.f11737a;
            if (i < delayedRemovalArray.size) {
                QuestEntry questEntry = delayedRemovalArray.items[i];
                if (questEntry.f11755a instanceof BasicLevelQuest) {
                    BasicLevelQuest basicLevelQuest = (BasicLevelQuest) questEntry.f11755a;
                    if (!basicLevelQuest.f11745j.isDuringGame()) {
                        basicLevelQuest.f11745j.savedValue = basicLevelQuest.getValue();
                    } else {
                        basicLevelQuest.f11745j.savedValue = StrictMath.max(basicLevelQuest.getValue(), basicLevelQuest.f11745j.savedValue);
                    }
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        GameStateSystem gameStateSystem = this.f8844S.gameState;
        if (gameStateSystem.gameMode == GameStateSystem.GameMode.BASIC_LEVELS) {
            BasicLevelManager basicLevelManager = Game.f8589i.basicLevelManager;
            this.f11743r = basicLevelManager.getGainedStars(basicLevelManager.getLevel(gameStateSystem.basicLevelName));
        }
        m20904c();
    }

    public void removeQuest(Quest quest, float f) {
        DelayedQuestRemoveEntry delayedQuestRemoveEntry = new DelayedQuestRemoveEntry();
        delayedQuestRemoveEntry.f11752a = quest;
        delayedQuestRemoveEntry.f11753b = f;
        this.f11738b.add(delayedQuestRemoveEntry);
    }
}
