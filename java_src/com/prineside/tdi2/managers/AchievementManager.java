package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.BasicLevel;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.IssuedItems;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.managers.ProgressManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class AchievementManager extends Manager.ManagerAdapter {

    /* renamed from: k */
    public static final String[] f9542k = {"0.1", "0.2", "0.3", "0.4"};

    /* renamed from: p */
    public static final String[] f9543p = {"1.1", "1.2", "1.3", "1.4", "1.5", "1.6", "1.7", "1.8"};

    /* renamed from: q */
    public static final String[] f9544q = {"2.1", "2.2", "2.3", "2.4", "2.5", "2.6", "2.7", "2.8"};

    /* renamed from: r */
    public static final String[] f9545r = {"3.1", "3.2", "3.3", "3.4", "3.5", "3.6", "3.7", "3.8"};

    /* renamed from: s */
    public static final String[] f9546s = {"4.1", "4.2", "4.3", "4.4", "4.5", "4.6", "4.7", "4.8"};

    /* renamed from: t */
    public static final String[] f9547t = {"5.1", "5.2", "5.3", "5.4", "5.5", "5.6", "5.7", "5.8"};

    /* renamed from: a */
    public int[] f9548a;

    /* renamed from: b */
    public boolean f9549b;
    public AchievementConfig[] configs;

    /* renamed from: d */
    public float f9550d;
    public boolean[] redeemed;

    /* loaded from: classes2.dex */
    public static class AchievementConfig {
        public boolean hidden;
        public int required;
        public Array<ItemStack> rewards = new Array<>(ItemStack.class);
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<AchievementManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public AchievementManager read() {
            return Game.f8589i.achievementManager;
        }
    }

    /* renamed from: b */
    public final void m21720b(AchievementType achievementType, String[] strArr) {
        int i = 0;
        for (String str : strArr) {
            BasicLevel level = Game.f8589i.basicLevelManager.getLevel(str);
            if (level != null) {
                if (Game.f8589i.basicLevelManager.getGainedStars(level) >= 3) {
                    i++;
                }
            } else {
                throw new IllegalStateException("handleCompletedLevels - level " + str + " not found");
            }
        }
        setProgress(achievementType, i);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public int getCurrentProgress(AchievementType achievementType) {
        return this.f9548a[achievementType.ordinal()];
    }

    public boolean isRequirementMet(AchievementType achievementType) {
        return this.f9548a[achievementType.ordinal()] >= this.configs[achievementType.ordinal()].required;
    }

    public int countAchievementsToRedeem() {
        AchievementType[] achievementTypeArr;
        int i = 0;
        for (AchievementType achievementType : AchievementType.values) {
            if (Game.f8589i.achievementManager.isRequirementMet(achievementType) && !Game.f8589i.achievementManager.redeemed[achievementType.ordinal()]) {
                i++;
            }
        }
        return i;
    }

    public CharSequence getDescription(AchievementType achievementType) {
        return Game.f8589i.localeManager.i18n.format("achievement_description_" + achievementType.name(), Integer.valueOf(this.configs[achievementType.ordinal()].required));
    }

    public CharSequence getName(AchievementType achievementType) {
        return Game.f8589i.localeManager.i18n.get("achievement_name_" + achievementType.name());
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void postRender(float f) {
        float f2 = this.f9550d + f;
        this.f9550d = f2;
        if (f2 > 25.0f) {
            this.f9550d = 0.0f;
            saveIfRequired();
        }
    }

    public final void reload() {
        boolean z;
        Arrays.fill(this.f9548a, 0);
        Arrays.fill(this.redeemed, false);
        Iterator<JsonValue> iterator2 = new JsonReader().parse(Gdx.files.external("res/achievements.json")).iterator2();
        while (iterator2.hasNext()) {
            JsonValue next = iterator2.next();
            AchievementType valueOf = AchievementType.valueOf(next.name);
            AchievementConfig achievementConfig = new AchievementConfig();
            achievementConfig.required = next.getInt("required", 1);
            achievementConfig.hidden = next.getBoolean("hidden", false);
            Iterator<JsonValue> iterator22 = next.get("rewards").iterator2();
            while (iterator22.hasNext()) {
                achievementConfig.rewards.add(ItemStack.fromJson(iterator22.next()));
            }
            this.configs[valueOf.ordinal()] = achievementConfig;
        }
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        String str = preferencesManager.get("achievements", null);
        if (str != null) {
            try {
                Iterator<JsonValue> iterator23 = new JsonReader().parse(str).iterator2();
                while (iterator23.hasNext()) {
                    JsonValue next2 = iterator23.next();
                    try {
                        AchievementType valueOf2 = AchievementType.valueOf(next2.getString(0));
                        this.f9548a[valueOf2.ordinal()] = next2.getInt(1);
                        boolean[] zArr = this.redeemed;
                        int ordinal = valueOf2.ordinal();
                        if (next2.getInt(2) == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        zArr[ordinal] = z;
                    } catch (Exception e) {
                        Logger.error("AchievementManager", "failed to load achievement progress", e);
                    }
                }
            } catch (Exception e2) {
                Logger.error("AchievementManager", "failed to parse json: " + preferencesManager, e2);
            }
        }
    }

    public void save() {
        AchievementType[] achievementTypeArr;
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        Json json = new Json(JsonWriter.OutputType.minimal);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeArrayStart();
        for (AchievementType achievementType : AchievementType.values) {
            if (this.f9548a[achievementType.ordinal()] != 0) {
                json.writeArrayStart();
                json.writeValue(achievementType.name());
                json.writeValue(Integer.valueOf(this.f9548a[achievementType.ordinal()]));
                json.writeValue(Integer.valueOf(this.redeemed[achievementType.ordinal()] ? 1 : 0));
                json.writeArrayEnd();
            }
        }
        json.writeArrayEnd();
        preferencesManager.set("achievements", stringWriter.toString());
        preferencesManager.flush();
        this.f9549b = false;
    }

    public void saveIfRequired() {
        if (this.f9549b) {
            save();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.AchievementManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                AchievementManager.this.reload();
            }
        });
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: com.prineside.tdi2.managers.AchievementManager.2
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                AchievementManager.this.saveIfRequired();
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }
        });
        Game.f8589i.progressManager.addListener(new ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.AchievementManager.3
            @Override // com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener.ProgressManagerListenerAdapter, com.prineside.tdi2.managers.ProgressManager.ProgressManagerListener
            public void saved() {
                AchievementManager.this.saveIfRequired();
            }
        });
        reload();
    }

    public void syncAchievementsWithPlatform() {
        AchievementType[] achievementTypeArr;
        for (AchievementType achievementType : AchievementType.values) {
            if (isRequirementMet(achievementType)) {
                Game.f8589i.actionResolver.unlockAchievement(achievementType);
            }
        }
    }

    public AchievementManager() {
        AchievementType[] achievementTypeArr = AchievementType.values;
        this.configs = new AchievementConfig[achievementTypeArr.length];
        this.f9548a = new int[achievementTypeArr.length];
        this.redeemed = new boolean[achievementTypeArr.length];
        this.f9549b = false;
        this.f9550d = 0.0f;
    }

    public void redeem(AchievementType achievementType) {
        if (isRequirementMet(achievementType) && !this.redeemed[achievementType.ordinal()]) {
            IssuedItems issuedItems = new IssuedItems(IssuedItems.IssueReason.ACHIEVEMENT, Game.getTimestampSeconds());
            Array<? extends ItemStack> array = new Array<>(ItemStack.class);
            array.addAll(this.configs[achievementType.ordinal()].rewards);
            issuedItems.items.addAll(array);
            issuedItems.achievementType = achievementType;
            Game.f8589i.progressManager.addIssuedPrizes(issuedItems, true);
            Game.f8589i.progressManager.addItems(issuedItems.items);
            Game.f8589i.progressManager.showNewlyIssuedPrizesPopup();
            this.redeemed[achievementType.ordinal()] = true;
            this.f9549b = true;
        }
    }

    public void setProgress(AchievementType achievementType, int i) {
        int ordinal;
        int i2;
        UiManager uiManager;
        if (!Config.isHeadless() && !Config.isModdingMode() && (i2 = this.f9548a[(ordinal = achievementType.ordinal())]) < i) {
            int i3 = this.configs[ordinal].required;
            if (i2 < i3 && i >= i3 && (uiManager = Game.f8589i.uiManager) != null && uiManager.notifications != null) {
                String format = Game.f8589i.localeManager.i18n.format("achievement_complete", getName(achievementType));
                Game game = Game.f8589i;
                game.uiManager.notifications.add(format, game.assetManager.getDrawable("icon-trophy"), MaterialColor.LIGHT_GREEN.P800, StaticSoundType.SUCCESS);
                Game.f8589i.actionResolver.unlockAchievement(achievementType);
            }
            this.f9548a[ordinal] = i;
            this.f9549b = true;
        }
    }

    public void updateGlobal() {
        if (Config.isModdingMode()) {
            return;
        }
        m21720b(AchievementType.TUTORIALS_COMPLETE, f9542k);
        m21720b(AchievementType.STAGE_1_COMPLETE, f9543p);
        m21720b(AchievementType.STAGE_2_COMPLETE, f9544q);
        m21720b(AchievementType.STAGE_3_COMPLETE, f9545r);
        m21720b(AchievementType.STAGE_4_COMPLETE, f9546s);
        m21720b(AchievementType.STAGE_5_COMPLETE, f9547t);
        setProgress(AchievementType.UNLOCK_ALL_TROPHIES, Game.f8589i.progressManager.getItemsByType(ItemType.TROPHY).size);
        setProgress(AchievementType.MILLION_PAPERS, (int) Game.f8589i.statisticsManager.getAllTime(StatisticsType.GPG));
        AchievementType achievementType = AchievementType.KILL_MILLION_ENEMIES;
        StatisticsManager statisticsManager = Game.f8589i.statisticsManager;
        StatisticsType statisticsType = StatisticsType.EK;
        setProgress(achievementType, (int) statisticsManager.getAllTime(statisticsType));
        setProgress(AchievementType.KILL_TEN_MILLION_ENEMIES, (int) Game.f8589i.statisticsManager.getAllTime(statisticsType));
    }
}
