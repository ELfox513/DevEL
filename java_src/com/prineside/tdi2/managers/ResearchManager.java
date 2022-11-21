package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.PolygonRegion;
import com.badlogic.gdx.graphics.g2d.PolygonSprite;
import com.badlogic.gdx.graphics.g3d.Material;
import com.badlogic.gdx.graphics.g3d.Model;
import com.badlogic.gdx.graphics.g3d.utils.ModelBuilder;
import com.badlogic.gdx.math.EarClippingTriangulator;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.FloatArray;
import com.badlogic.gdx.utils.IntArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.JsonWriter;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.TimeUtils;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.ItemStack;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Requirement;
import com.prineside.tdi2.Research;
import com.prineside.tdi2.ResearchCategory;
import com.prineside.tdi2.ResourcePack;
import com.prineside.tdi2.enums.AchievementType;
import com.prineside.tdi2.enums.BlueprintType;
import com.prineside.tdi2.enums.DifficultyMode;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ItemType;
import com.prineside.tdi2.enums.ResearchCategoryType;
import com.prineside.tdi2.enums.ResearchType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.enums.StaticSoundType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.items.ResourceItem;
import com.prineside.tdi2.managers.GameValueManager;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.p036ui.shared.Notifications;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.tiles.CoreTile;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.PMath;
import com.prineside.tdi2.utils.REGS;
import java.io.StringWriter;
import java.util.Comparator;
import java.util.Iterator;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ResearchManager extends Manager.ManagerAdapter {
    public static final int MAP_SIZE = 8192;
    public static final String TAG = "ResearchManager";

    /* renamed from: A */
    public int f10057A;

    /* renamed from: C */
    public float f10059C;

    /* renamed from: p */
    public int f10066p;

    /* renamed from: q */
    public int f10067q;

    /* renamed from: r */
    public int f10068r;

    /* renamed from: s */
    public int f10069s;

    /* renamed from: t */
    public int f10070t;

    /* renamed from: u */
    public int f10071u;

    /* renamed from: w */
    public float f10073w;

    /* renamed from: x */
    public Research f10074x;

    /* renamed from: y */
    public long f10075y;

    /* renamed from: z */
    public int f10076z;

    /* renamed from: a */
    public final Array<Research> f10062a = new Array<>(true, ResearchType.values.length, Research.class);

    /* renamed from: b */
    public final ObjectMap<ResearchCategoryType, ResearchCategory> f10063b = new ObjectMap<>();

    /* renamed from: d */
    public final Array<Research.ResearchLink> f10064d = new Array<>();

    /* renamed from: k */
    public final Array<PolygonConfig> f10065k = new Array<>(PolygonConfig.class);

    /* renamed from: v */
    public boolean f10072v = false;

    /* renamed from: B */
    public boolean f10058B = false;

    /* renamed from: D */
    public final StartResearchingException f10060D = new StartResearchingException();

    /* renamed from: E */
    public final DelayedRemovalArray<ResearchManagerListener> f10061E = new DelayedRemovalArray<>(false, 1);

    /* loaded from: classes2.dex */
    public static class PolygonConfig {
        public PolygonSprite sprite;
        public Research visibleWith;
    }

    /* loaded from: classes2.dex */
    public interface ResearchManagerListener {

        /* loaded from: classes2.dex */
        public static abstract class ResearchManagerListenerAdapter implements ResearchManagerListener {
            @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
            public void researchCompleted(Research research) {
            }

            @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
            public void researchStarted(Research research, long j) {
            }

            @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
            public void researchesUpdated() {
            }
        }

        void researchCompleted(Research research);

        void researchStarted(Research research, long j);

        void researchesUpdated();
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ResearchManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ResearchManager read() {
            return Game.f8589i.researchManager;
        }
    }

    /* loaded from: classes2.dex */
    public enum StartResearchFailReason {
        OTHER_RESEARCH_IN_PROGRESS,
        NOT_VISIBLE,
        MAX_LEVEL,
        REQUIRES_PREVIOUS_RESEARCHES,
        NOT_ENOUGH_MONEY,
        NOT_ENOUGH_RESOURCES,
        NOT_ENOUGH_STARS,
        NOT_ENOUGH_ITEMS,
        REQUIREMENT_NOT_SATISFIED;
        
        public static final StartResearchFailReason[] values = values();
    }

    /* loaded from: classes2.dex */
    public class StartResearchingException extends Exception {
        public final Array<StartResearchFailReason> reasons = new Array<>();

        public StartResearchingException() {
        }
    }

    /* renamed from: h */
    public static /* synthetic */ int m21509h(Research research, Research research2) {
        return Float.compare(research.distanceToCenter, research2.distanceToCenter);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public int getAfforableResearchesCount() {
        return this.f10076z;
    }

    public int getMapHeight() {
        return this.f10071u;
    }

    public int getMapMaxX() {
        return this.f10067q;
    }

    public int getMapMaxY() {
        return this.f10069s;
    }

    public int getMapMinX() {
        return this.f10066p;
    }

    public int getMapMinY() {
        return this.f10068r;
    }

    public int getMapWidth() {
        return this.f10070t;
    }

    public int getUnusedStarsCount() {
        return this.f10057A;
    }

    /* renamed from: i */
    public final void m21508i(Research research) {
        UiManager uiManager = Game.f8589i.uiManager;
        if (uiManager == null || !this.f10072v) {
            return;
        }
        Notifications notifications = uiManager.notifications;
        notifications.add(Game.f8589i.localeManager.i18n.get("research_completed") + ": " + ((Object) research.getTitle()), Game.f8589i.assetManager.getDrawable("icon-research"), null, StaticSoundType.RESEARCH);
    }

    public boolean isSetUp() {
        return this.f10072v;
    }

    public boolean researchForToken(Research research) {
        DelayedRemovalArray<ResearchManagerListener> delayedRemovalArray;
        int i = 0;
        if (canResearchForToken(research, false) && Game.f8589i.progressManager.removeItems(Item.C1543D.RESEARCH_TOKEN, 1)) {
            Game.f8589i.actionResolver.logCurrencySpent(null, "research_token", 1);
            this.f10061E.begin();
            while (true) {
                delayedRemovalArray = this.f10061E;
                if (i >= delayedRemovalArray.size) {
                    break;
                }
                delayedRemovalArray.get(i).researchStarted(research, 0L);
                i++;
            }
            delayedRemovalArray.end();
            setInstalledLevel(research.type, research.installedLevel + 1, true);
            if (research.installedLevelsForToken == null) {
                research.installedLevelsForToken = new IntArray();
            }
            research.installedLevelsForToken.add(research.installedLevel);
            m21508i(research);
            this.f10074x = null;
            this.f10058B = true;
            checkResearchesStatus(true);
            return true;
        }
        return false;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
        int i = 0;
        while (true) {
            Array<Research> array = this.f10062a;
            if (i < array.size) {
                Research research = array.get(i);
                try {
                    research.getDescription();
                    research.getTitle();
                    research.category.getDescription();
                    research.category.getTitle();
                    i++;
                } catch (Exception e) {
                    Logger.error(TAG, "Test: failed for research type " + research.type.name());
                    throw e;
                }
            } else {
                return;
            }
        }
    }

    public void addListener(ResearchManagerListener researchManagerListener) {
        if (researchManagerListener != null) {
            if (!this.f10061E.contains(researchManagerListener, true)) {
                this.f10061E.add(researchManagerListener);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    /* renamed from: c */
    public final void m21514c() {
        if (this.f10072v) {
            return;
        }
        throw new IllegalStateException("manager is not set up yet");
    }

    public boolean canResearchForToken(Research research, boolean z) {
        if (research.priceInStars > 0) {
            return false;
        }
        if (!z && !canStartResearching(research, true)) {
            return false;
        }
        int i = 0;
        while (true) {
            Research.ResearchLevel[] researchLevelArr = research.levels;
            if (i < researchLevelArr.length) {
                Research.ResearchLevel researchLevel = researchLevelArr[i];
                int i2 = 0;
                while (true) {
                    Array<ItemStack> array = researchLevel.price;
                    if (i2 < array.size) {
                        if (array.items[i2].getItem().getType() == ItemType.PRESTIGE_TOKEN) {
                            return false;
                        }
                        i2++;
                    }
                }
            } else if (research.type == ResearchType.DECRYPTING_QUEUE_SIZE) {
                return false;
            } else {
                return true;
            }
            i++;
        }
    }

    /* renamed from: d */
    public final boolean m21513d() {
        int gainedStars = Game.f8589i.basicLevelManager.getGainedStars();
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<Research> array = this.f10062a;
            if (i >= array.size) {
                break;
            }
            Research[] researchArr = array.items;
            if (researchArr[i].priceInStars > 0 && researchArr[i].installedLevel > 0) {
                i2 += researchArr[i].priceInStars;
            }
            i++;
        }
        int i3 = gainedStars - i2;
        this.f10057A = i3;
        if (i3 >= 0) {
            return false;
        }
        Logger.log(TAG, "unused stars count: " + this.f10057A);
        Array array2 = new Array(Research.class);
        int i4 = 0;
        while (true) {
            Array<Research> array3 = this.f10062a;
            if (i4 >= array3.size) {
                break;
            }
            Research[] researchArr2 = array3.items;
            if (researchArr2[i4].priceInStars > 0 && researchArr2[i4].installedLevel != 0) {
                array2.add(researchArr2[i4]);
            }
            i4++;
        }
        array2.sort(new Comparator() { // from class: com.prineside.tdi2.managers.z
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m21509h;
                m21509h = ResearchManager.m21509h((Research) obj, (Research) obj2);
                return m21509h;
            }
        });
        int i5 = 0;
        boolean z = false;
        while (i5 < array2.size) {
            Research research = ((Research[]) array2.items)[i5];
            research.installedLevel = 0;
            Logger.error(TAG, "reverting " + research.type.name() + " - exceeds amount of stars");
            int i6 = this.f10057A + research.priceInStars;
            this.f10057A = i6;
            if (i6 >= 0) {
                return true;
            }
            i5++;
            z = true;
        }
        return z;
    }

    /* renamed from: e */
    public final boolean m21512e() {
        ObjectSet<ResearchType> objectSet = new ObjectSet<>();
        boolean z = true;
        boolean z2 = false;
        while (z) {
            int i = 0;
            while (true) {
                Array<Research> array = this.f10062a;
                if (i < array.size) {
                    Research research = array.items[i];
                    if (research.priceInStars > 0 && research.installedLevel > 0) {
                        objectSet.clear();
                        if (!m21510g(research, objectSet)) {
                            Logger.error(TAG, "reverting " + research.type + " - not linked to ROOT");
                            research.installedLevel = 0;
                            z = true;
                            z2 = true;
                            break;
                        }
                    }
                    i++;
                } else {
                    z = false;
                    break;
                }
            }
        }
        return z2;
    }

    /* renamed from: f */
    public final void m21511f(Research research, int i, int[] iArr, int[] iArr2) {
        Research.ResearchLevel[] researchLevelArr;
        boolean z;
        if (research.priceInStars > 0 || research.type == ResearchType.PRESTIGE) {
            return;
        }
        Array.ArrayIterator<Research.ResearchLink> it = research.linksToChildren.iterator();
        while (it.hasNext()) {
            Research research2 = it.next().child;
            for (Research.ResearchLevel researchLevel : research2.levels) {
                int i2 = 0;
                while (true) {
                    Array<ItemStack> array = researchLevel.price;
                    if (i2 < array.size) {
                        ItemStack itemStack = array.items[i2];
                        if (itemStack.getItem().getType() == ItemType.RESOURCE && ((ResourceItem) itemStack.getItem()).resourceType.ordinal() > i) {
                            z = false;
                            break;
                        }
                        i2++;
                    } else {
                        z = true;
                        break;
                    }
                }
                if (z && Game.f8589i.researchManager.canStartResearching(research2, true)) {
                    int i3 = 0;
                    while (true) {
                        Array<ItemStack> array2 = researchLevel.price;
                        if (i3 >= array2.size) {
                            break;
                        }
                        ItemStack itemStack2 = array2.items[i3];
                        if (itemStack2.getItem().getType() == ItemType.GREEN_PAPER) {
                            iArr[0] = iArr[0] + itemStack2.getCount();
                        } else if (itemStack2.getItem().getType() == ItemType.RESOURCE) {
                            int ordinal = ((ResourceItem) itemStack2.getItem()).resourceType.ordinal();
                            iArr2[ordinal] = iArr2[ordinal] + itemStack2.getCount();
                        }
                        i3++;
                    }
                    research2.installedLevel = researchLevel.number;
                }
            }
            m21511f(research2, i, iArr, iArr2);
        }
    }

    /* renamed from: g */
    public final boolean m21510g(Research research, ObjectSet<ResearchType> objectSet) {
        ResearchType researchType = research.type;
        if (researchType == ResearchType.ROOT) {
            return true;
        }
        objectSet.add(researchType);
        if (research.installedLevel == 0) {
            return false;
        }
        int i = 0;
        while (true) {
            Array<Research.ResearchLink> array = research.linksToParents;
            if (i < array.size) {
                Research research2 = array.items[i].parent;
                if (!objectSet.contains(research2.type) && m21510g(research2, objectSet)) {
                    return true;
                }
                i++;
            } else {
                int i2 = 0;
                while (true) {
                    Array<Research.ResearchLink> array2 = research.linksToChildren;
                    if (i2 >= array2.size) {
                        return false;
                    }
                    Research research3 = array2.items[i2].child;
                    if (!objectSet.contains(research3.type) && m21510g(research3, objectSet)) {
                        return true;
                    }
                    i2++;
                }
            }
        }
    }

    public boolean isVisible(Research research) {
        TowerType relatedToTowerType;
        if (research.endlessOnly && !DifficultyMode.isEndless(Game.f8589i.progressManager.getDifficultyMode())) {
            return false;
        }
        if (Config.isModdingMode() || (relatedToTowerType = research.getRelatedToTowerType()) == null || Game.f8589i.towerManager.getFactory(relatedToTowerType).isAvailable(Game.f8589i.gameValueManager.getSnapshot())) {
            return true;
        }
        if (!research.isUnlocksTower() || research.linksToParents.first().parent.installedLevel <= 0) {
            return false;
        }
        return true;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void postRender(float f) {
        if (!this.f10072v) {
            return;
        }
        float f2 = this.f10059C + f;
        this.f10059C = f2;
        if (f2 > 30.0f && this.f10058B) {
            this.f10059C = 0.0f;
            save();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void preRender(float f) {
        if (this.f10072v) {
            float f2 = this.f10073w + f;
            this.f10073w = f2;
            if (f2 > 1.0f) {
                m21505l();
                this.f10073w = 0.0f;
            }
        }
    }

    public void reload() {
        ResearchType[] researchTypeArr;
        String str;
        Iterator<JsonValue> it;
        String string;
        String string2;
        PolygonSprite polygonSprite;
        int i;
        JsonValue jsonValue;
        Iterator<JsonValue> it2;
        this.f10064d.clear();
        this.f10062a.clear();
        this.f10063b.clear();
        this.f10065k.clear();
        this.f10074x = null;
        this.f10066p = Integer.MAX_VALUE;
        this.f10067q = Integer.MIN_VALUE;
        this.f10068r = Integer.MAX_VALUE;
        this.f10069s = Integer.MIN_VALUE;
        JsonValue parse = new JsonReader().parse(Gdx.files.internal("res/researches.json"));
        Iterator<JsonValue> iterator2 = parse.get("categories").iterator2();
        while (iterator2.hasNext()) {
            JsonValue next = iterator2.next();
            String string3 = next.getString("alias");
            String str2 = "research_title_" + string3;
            String str3 = "research_description_" + string3;
            ResearchCategoryType valueOf = ResearchCategoryType.valueOf(string3);
            this.f10063b.put(valueOf, new ResearchCategory(valueOf, str2, str3, next.getString("icon")));
        }
        this.f10062a.setSize(ResearchType.values.length);
        Iterator<JsonValue> iterator22 = parse.get("researches").iterator2();
        int i2 = 0;
        while (iterator22.hasNext()) {
            JsonValue next2 = iterator22.next();
            ResearchType valueOf2 = ResearchType.valueOf(next2.getString("name"));
            if (next2.has("category")) {
                ResearchCategory researchCategory = this.f10063b.get(ResearchCategoryType.valueOf(next2.getString("category")));
                int i3 = next2.getInt("maxEndlessModeLevels");
                if (this.f10062a.items[valueOf2.ordinal()] == null) {
                    Array array = new Array(Research.ResearchLevel.class);
                    Iterator<JsonValue> iterator23 = next2.get("levels").iterator2();
                    int i4 = 1;
                    while (iterator23.hasNext()) {
                        JsonValue next3 = iterator23.next();
                        Array array2 = new Array(GameValueManager.GameValueEffect.class);
                        Iterator<JsonValue> iterator24 = next3.get("effects").iterator2();
                        while (iterator24.hasNext()) {
                            Iterator<JsonValue> it3 = iterator22;
                            JsonValue next4 = iterator24.next();
                            Iterator<JsonValue> it4 = iterator24;
                            try {
                                it2 = iterator23;
                                try {
                                    i = i2;
                                    jsonValue = next2;
                                    try {
                                        array2.add(new GameValueManager.GameValueEffect(GameValueType.valueOf(next4.name), next4.asDouble()));
                                    } catch (Exception unused) {
                                        Logger.error(TAG, "failed loading gv " + next4.name + " for " + valueOf2.name());
                                        iterator24 = it4;
                                        iterator22 = it3;
                                        iterator23 = it2;
                                        i2 = i;
                                        next2 = jsonValue;
                                    }
                                } catch (Exception unused2) {
                                    i = i2;
                                    jsonValue = next2;
                                }
                            } catch (Exception unused3) {
                                i = i2;
                                jsonValue = next2;
                                it2 = iterator23;
                            }
                            iterator24 = it4;
                            iterator22 = it3;
                            iterator23 = it2;
                            i2 = i;
                            next2 = jsonValue;
                        }
                        Iterator<JsonValue> it5 = iterator22;
                        int i5 = i2;
                        JsonValue jsonValue2 = next2;
                        Iterator<JsonValue> it6 = iterator23;
                        int i6 = next3.getInt("researchDuration", 0);
                        Array array3 = new Array(Requirement.class);
                        JsonValue jsonValue3 = next3.get("requirements");
                        if (jsonValue3 != null) {
                            Iterator<JsonValue> iterator25 = jsonValue3.iterator2();
                            while (iterator25.hasNext()) {
                                array3.add(Requirement.fromJson(iterator25.next()));
                            }
                        }
                        try {
                            Research.ResearchLevel researchLevel = new Research.ResearchLevel();
                            researchLevel.number = i4;
                            researchLevel.researchDuration = i6;
                            researchLevel.effects = (GameValueManager.GameValueEffect[]) array2.toArray();
                            Iterator<JsonValue> iterator26 = next3.get("price").iterator2();
                            while (iterator26.hasNext()) {
                                JsonValue next5 = iterator26.next();
                                if (next5.name.equals("money")) {
                                    researchLevel.price.add(new ItemStack(Item.C1543D.GREEN_PAPER, next5.asInt()));
                                } else if (next5.name.startsWith("bp_")) {
                                    researchLevel.price.add(new ItemStack(Item.C1543D.F_BLUEPRINT.create(BlueprintType.valueOf(next5.name.substring(3))), next5.asInt()));
                                } else if (next5.name.equals("PRESTIGE_TOKEN")) {
                                    researchLevel.price.add(new ItemStack(Item.C1543D.PRESTIGE_TOKEN, next5.asInt()));
                                } else {
                                    researchLevel.price.add(new ItemStack(Item.C1543D.F_RESOURCE.create(ResourceType.valueOf(next5.name)), next5.asInt()));
                                }
                            }
                            researchLevel.requirements = (Requirement[]) array3.toArray();
                            array.add(researchLevel);
                            i4++;
                            iterator22 = it5;
                            iterator23 = it6;
                            i2 = i5;
                            next2 = jsonValue2;
                        } catch (Exception e) {
                            throw new RuntimeException("Failed to add research level for " + valueOf2.name(), e);
                        }
                    }
                    Iterator<JsonValue> it7 = iterator22;
                    int i7 = i2;
                    Research research = new Research(valueOf2, researchCategory, (Research.ResearchLevel[]) array.toArray(), i3);
                    research.endlessOnly = next2.getBoolean("endlessOnly", false);
                    research.endlessPriceExp = next2.getFloat("epe", 1.0f);
                    int i8 = next2.getInt("epl", -1);
                    if (i8 != -1) {
                        if (i8 > research.maxEndlessLevel) {
                            Logger.error(TAG, "endless mode price level is " + i8 + " while max is " + research.maxEndlessLevel + " for " + valueOf2.name());
                            i8 = research.maxEndlessLevel;
                        }
                        research.endlessPriceLevel = i8;
                    }
                    research.f8856x = next2.getInt("x");
                    research.f8857y = next2.getInt("y");
                    research.position3d.f5533x = next2.getFloat("d3x");
                    research.position3d.f5534y = next2.getFloat("d3y");
                    research.position3d.f5535z = next2.getFloat("d3z");
                    research.cantBeIgnoredOnUserMaps = next2.getBoolean("cantBeIgnoredOnUserMaps", false);
                    research.priceInStars = next2.getInt("starsPrice", 0);
                    this.f10062a.set(research.type.ordinal(), research);
                    int i9 = research.f8856x;
                    if (i9 < this.f10066p) {
                        this.f10066p = i9;
                    }
                    if (i9 > this.f10067q) {
                        this.f10067q = i9;
                    }
                    int i10 = research.f8857y;
                    if (i10 < this.f10068r) {
                        this.f10068r = i10;
                    }
                    if (i10 > this.f10069s) {
                        this.f10069s = i10;
                    }
                    research.distanceToCenter = 1.0f - ((PMath.getDistanceBetweenPoints(i9, i10, 4096.0f, 4096.0f) / 8192.0f) * 1.4142f);
                    i2 = i7 + 1;
                    iterator22 = it7;
                } else {
                    throw new RuntimeException("Research " + valueOf2.name() + " already exists");
                }
            } else {
                throw new IllegalStateException("Research " + valueOf2.name() + " has no category");
            }
        }
        int i11 = i2;
        if (i11 == ResearchType.values.length) {
            Iterator<JsonValue> iterator27 = parse.get("links").iterator2();
            while (iterator27.hasNext()) {
                JsonValue next6 = iterator27.next();
                Research research2 = this.f10062a.items[ResearchType.valueOf(next6.getString("parent")).ordinal()];
                Research research3 = this.f10062a.items[ResearchType.valueOf(next6.getString("child")).ordinal()];
                Research.ResearchLink researchLink = new Research.ResearchLink(research2, research3, next6.getInt("requiredLevels"), next6.getInt("pivotX"), next6.getInt("pivotY"), next6.getFloat("requiredLevelsLabelPos"));
                research2.linksToChildren.add(researchLink);
                research3.linksToParents.add(researchLink);
                this.f10064d.add(researchLink);
            }
            String str4 = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS).get("installedResearches", null);
            if (str4 != null) {
                try {
                    Iterator<JsonValue> iterator28 = new JsonReader().parse(str4).iterator2();
                    while (iterator28.hasNext()) {
                        JsonValue next7 = iterator28.next();
                        try {
                            Research research4 = this.f10062a.items[ResearchType.valueOf(next7.name).ordinal()];
                            int asInt = next7.asInt();
                            if (asInt > research4.maxEndlessLevel) {
                                Logger.error(TAG, "loaded from preferences installed level for research " + research4.type.name() + " is too high (" + asInt + ", total levels: " + research4.levels.length + "), lowered");
                                asInt = research4.levels.length;
                            }
                            research4.installedLevel = asInt;
                        } catch (Exception e2) {
                            Logger.error(TAG, "Saved installed research '" + next7.name + "' not found and was ignored", e2);
                        }
                    }
                } catch (Exception e3) {
                    Logger.error(TAG, "failed to parse json: " + str4, e3);
                }
            }
            String str5 = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS).get("installedResearchesForTokens", null);
            if (str5 != null) {
                try {
                    Iterator<JsonValue> iterator29 = new JsonReader().parse(str5).iterator2();
                    while (iterator29.hasNext()) {
                        JsonValue next8 = iterator29.next();
                        try {
                            Research research5 = this.f10062a.items[ResearchType.valueOf(next8.name).ordinal()];
                            Iterator<JsonValue> iterator210 = next8.iterator2();
                            while (iterator210.hasNext()) {
                                int asInt2 = iterator210.next().asInt();
                                if (research5.installedLevel >= asInt2) {
                                    if (research5.installedLevelsForToken == null) {
                                        research5.installedLevelsForToken = new IntArray();
                                    }
                                    research5.installedLevelsForToken.add(asInt2);
                                } else {
                                    Logger.error(TAG, "ilft > research.installedLevel " + next8.name + ", " + asInt2 + " > " + research5.installedLevel);
                                }
                            }
                        } catch (Exception e4) {
                            Logger.error(TAG, "Saved installed research levels for token '" + next8.name + "' not found and was ignored", e4);
                        }
                    }
                } catch (Exception e5) {
                    Logger.error(TAG, "failed to parse json: " + str5, e5);
                }
            }
            PreferencesManager preferencesManager = Game.f8589i.preferencesManager;
            String str6 = Config.PREFERENCES_NAME_PROGRESS;
            String str7 = "";
            String str8 = preferencesManager.getInstance(str6).get("currentlyResearching", "");
            try {
                if (!str8.equals("")) {
                    this.f10074x = this.f10062a.items[ResearchType.valueOf(str8).ordinal()];
                    this.f10075y = Long.valueOf(Game.f8589i.preferencesManager.getInstance(str6).get("currentResearchEndTime", "0")).longValue();
                    Logger.log(TAG, "currently researching: " + this.f10074x.type.name());
                }
            } catch (Exception e6) {
                Logger.error(TAG, "failed to load current research", e6);
            }
            if (!Config.isHeadless() && parse.has("polygons")) {
                ResourcePack.AtlasTextureRegion blankWhiteTextureRegion = Game.f8589i.assetManager.getBlankWhiteTextureRegion();
                EarClippingTriangulator earClippingTriangulator = new EarClippingTriangulator();
                Color color = new Color();
                Iterator<JsonValue> iterator211 = parse.get("polygons").iterator2();
                while (iterator211.hasNext()) {
                    JsonValue next9 = iterator211.next();
                    try {
                        string = next9.getString("color");
                        string2 = next9.getString("visibleWith", str7);
                        JsonValue jsonValue4 = next9.get("points");
                        FloatArray floatArray = new FloatArray();
                        int regionHeight = blankWhiteTextureRegion.getRegionHeight();
                        Iterator<JsonValue> iterator212 = jsonValue4.iterator2();
                        int i12 = Integer.MIN_VALUE;
                        int i13 = Integer.MAX_VALUE;
                        int i14 = Integer.MIN_VALUE;
                        int i15 = Integer.MAX_VALUE;
                        while (iterator212.hasNext()) {
                            JsonValue next10 = iterator212.next();
                            Iterator<JsonValue> it8 = iterator212;
                            str = str7;
                            try {
                                int i16 = next10.getInt(0);
                                try {
                                    int i17 = next10.getInt(1);
                                    if (i16 < i13) {
                                        i13 = i16;
                                    }
                                    if (i16 > i12) {
                                        i12 = i16;
                                    }
                                    int i18 = i15;
                                    if (i17 < i18) {
                                        i15 = i17;
                                    } else {
                                        i15 = i18;
                                    }
                                    if (i17 > i14) {
                                        i14 = i17;
                                    }
                                    floatArray.add(i16, i17);
                                    str7 = str;
                                    iterator212 = it8;
                                } catch (Exception e7) {
                                    e = e7;
                                    it = iterator211;
                                    Logger.error(TAG, "failed to load polygon for researches", e);
                                    str7 = str;
                                    iterator211 = it;
                                }
                            } catch (Exception e8) {
                                e = e8;
                                it = iterator211;
                                Logger.error(TAG, "failed to load polygon for researches", e);
                                str7 = str;
                                iterator211 = it;
                            }
                        }
                        str = str7;
                        int i19 = i15;
                        float f = i12 - i13;
                        float f2 = i14 - i19;
                        int i20 = 0;
                        while (i20 < floatArray.size) {
                            float[] fArr = floatArray.items;
                            it = iterator211;
                            float f3 = regionHeight;
                            try {
                                fArr[i20] = ((fArr[i20] - i13) / f) * f3;
                                int i21 = i20 + 1;
                                fArr[i21] = ((fArr[i21] - i19) / f2) * f3;
                                i20 += 2;
                                iterator211 = it;
                                regionHeight = regionHeight;
                            } catch (Exception e9) {
                                e = e9;
                                Logger.error(TAG, "failed to load polygon for researches", e);
                                str7 = str;
                                iterator211 = it;
                            }
                        }
                        it = iterator211;
                        polygonSprite = new PolygonSprite(new PolygonRegion(blankWhiteTextureRegion, floatArray.toArray(), earClippingTriangulator.computeTriangles(floatArray).toArray()));
                        polygonSprite.setBounds(i13 - this.f10066p, i19 - this.f10068r, f, f2);
                    } catch (Exception e10) {
                        e = e10;
                        str = str7;
                    }
                    try {
                        Color.rgba8888ToColor(color, PMath.parseUnsignedInt(string.substring(1), 16));
                        polygonSprite.setColor(color);
                        PolygonConfig polygonConfig = new PolygonConfig();
                        polygonConfig.sprite = polygonSprite;
                        if (string2.length() > 0) {
                            polygonConfig.visibleWith = this.f10062a.items[ResearchType.valueOf(string2).ordinal()];
                        }
                        this.f10065k.add(polygonConfig);
                    } catch (Exception e11) {
                        e = e11;
                        Logger.error(TAG, "failed to load polygon for researches", e);
                        str7 = str;
                        iterator211 = it;
                    }
                    str7 = str;
                    iterator211 = it;
                }
            }
            this.f10070t = this.f10067q - this.f10066p;
            this.f10071u = this.f10069s - this.f10068r;
            if (this.f10072v) {
                m21507j();
                m21506k();
                updateAndValidateStarBranch();
            }
            int i22 = 0;
            int i23 = 0;
            while (true) {
                Array<Research> array4 = this.f10062a;
                if (i23 < array4.size) {
                    Research research6 = array4.items[i23];
                    if (research6.priceInStars == 0) {
                        Research.ResearchLevel researchLevel2 = research6.levels[0];
                        int i24 = 0;
                        while (true) {
                            Array<ItemStack> array5 = researchLevel2.price;
                            if (i24 < array5.size) {
                                if (array5.items[i24].getItem().getType() == ItemType.PRESTIGE_TOKEN) {
                                    break;
                                }
                                i24++;
                            } else {
                                i22 += research6.levels.length;
                                break;
                            }
                        }
                    }
                    i23++;
                } else {
                    Logger.log(TAG, i22 + " regular research levels");
                    return;
                }
            }
        } else {
            throw new RuntimeException("Number of upgrade types (" + researchTypeArr.length + ") doesn't match the number in JSON file (" + i11 + ")");
        }
    }

    public void removeListener(ResearchManagerListener researchManagerListener) {
        if (researchManagerListener != null) {
            this.f10061E.removeValue(researchManagerListener, true);
            return;
        }
        throw new IllegalArgumentException("listener is null");
    }

    public void saveIfRequired() {
        if (this.f10058B) {
            save();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.ResearchManager.1
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                ResearchManager.this.reload();
                ResearchManager.this.checkResearchesStatus(false);
            }
        });
        reload();
        addListener(new ResearchManagerListener.ResearchManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.ResearchManager.2
            @Override // com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener.ResearchManagerListenerAdapter, com.prineside.tdi2.managers.ResearchManager.ResearchManagerListener
            public void researchCompleted(Research research) {
                Game.f8589i.actionResolver.logCustomEvent("research_completed", new String[]{"type", research.type.name(), "level", String.valueOf(research.installedLevel)});
            }
        });
        this.f10072v = true;
        checkResearchesStatus(false);
        updateAndValidateStarBranch();
        Gdx.app.addLifecycleListener(new LifecycleListener() { // from class: com.prineside.tdi2.managers.ResearchManager.3
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
                if (ResearchManager.this.f10058B) {
                    ResearchManager.this.save();
                }
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
            }
        });
    }

    public boolean canStartResearching(Research research, boolean z) {
        m21514c();
        try {
            tryStartResearching(research, z, this.f10060D);
            return true;
        } catch (StartResearchingException unused) {
            return false;
        }
    }

    public void checkResearchesStatus(boolean z) {
        m21514c();
        int i = 0;
        while (true) {
            Array<Research> array = this.f10062a;
            if (i < array.size) {
                Research research = array.items[i];
                if (research.priceInStars <= 0) {
                    int i2 = research.installedLevel;
                    while (true) {
                        Research.ResearchLevel[] researchLevelArr = research.levels;
                        if (i2 < researchLevelArr.length) {
                            Research.ResearchLevel researchLevel = researchLevelArr[i2];
                            if (researchLevel.price.size == 0) {
                                Requirement[] requirementArr = researchLevel.requirements;
                                int length = requirementArr.length;
                                int i3 = 0;
                                while (true) {
                                    if (i3 < length) {
                                        if (!requirementArr[i3].isSatisfied()) {
                                            break;
                                        }
                                        i3++;
                                    } else if (hasInstalledParents(research)) {
                                        int i4 = i2 + 1;
                                        setInstalledLevel(research.type, i4, true);
                                        Logger.log(TAG, "New research completed: " + ((Object) research.getTitle()) + ", level " + i4);
                                        if (z) {
                                            m21508i(research);
                                        }
                                    }
                                }
                            }
                            i2++;
                        }
                    }
                }
                i++;
            } else {
                return;
            }
        }
    }

    public Model create3dGraphModel() {
        m21514c();
        ModelBuilder modelBuilder = new ModelBuilder();
        modelBuilder.begin();
        new Material();
        return modelBuilder.end();
    }

    public void finishCurrentResearch() {
        m21514c();
        if (getCurrentResearching() != null) {
            this.f10075y = TimeUtils.millis() - 1;
            m21505l();
        }
    }

    public Research getCurrentResearching() {
        m21514c();
        if (this.f10074x != null && this.f10075y > TimeUtils.millis()) {
            return this.f10074x;
        }
        return null;
    }

    public Research getInstance(ResearchType researchType) {
        m21514c();
        return this.f10062a.items[researchType.ordinal()];
    }

    public Array<Research> getInstances() {
        m21514c();
        return this.f10062a;
    }

    public Array<Research.ResearchLink> getLinks() {
        m21514c();
        return this.f10064d;
    }

    public long getMillisToResearchingEnd() {
        m21514c();
        if (this.f10074x == null) {
            return 0L;
        }
        long millis = this.f10075y - TimeUtils.millis();
        if (millis < 0) {
            return 0L;
        }
        return millis;
    }

    public Array<PolygonConfig> getPolygonSprites() {
        m21514c();
        return this.f10065k;
    }

    public Research getResearchInstance(ResearchType researchType) {
        m21514c();
        return this.f10062a.items[researchType.ordinal()];
    }

    public long getResearchingDuration(Research research) {
        m21514c();
        if (research.isMaxNormalLevel()) {
            return 0L;
        }
        return research.levels[research.installedLevel].researchDuration * CoreTile.FIXED_LEVEL_XP_REQUIREMENT;
    }

    public int getResetStarResearchesAcceleratorPrice() {
        m21514c();
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<Research> array = this.f10062a;
            if (i < array.size) {
                Research[] researchArr = array.items;
                if (researchArr[i].priceInStars > 0 && researchArr[i].installedLevel > 0) {
                    i2++;
                }
                i++;
            } else {
                return i2;
            }
        }
    }

    public boolean hasInstalledParents(Research research) {
        m21514c();
        Array<Research.ResearchLink> array = research.linksToParents;
        if (array.size == 0) {
            return true;
        }
        Array.ArrayIterator<Research.ResearchLink> it = array.iterator();
        while (it.hasNext()) {
            if (it.next().parent.installedLevel != 0) {
                return true;
            }
        }
        if (research.priceInStars > 0) {
            Array.ArrayIterator<Research.ResearchLink> it2 = research.linksToChildren.iterator();
            while (it2.hasNext()) {
                if (it2.next().child.installedLevel != 0) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public void installAllEndlessResearches() {
        m21514c();
        Array.ArrayIterator<Research> it = this.f10062a.iterator();
        while (it.hasNext()) {
            Research next = it.next();
            int i = next.installedLevel;
            int i2 = next.maxEndlessLevel;
            if (i < i2) {
                next.installedLevel = i2;
            }
        }
        save();
        m21507j();
        m21506k();
    }

    public void installAllResearches() {
        m21514c();
        Array.ArrayIterator<Research> it = this.f10062a.iterator();
        while (it.hasNext()) {
            Research next = it.next();
            if (!next.endlessOnly) {
                int i = next.installedLevel;
                Research.ResearchLevel[] researchLevelArr = next.levels;
                if (i < researchLevelArr.length) {
                    next.installedLevel = researchLevelArr.length;
                }
            }
        }
        save();
        m21507j();
        m21506k();
    }

    public void installRecursiveFree(int i) {
        TowerType[] towerTypeArr;
        m21514c();
        Game.f8589i.statisticsManager.registerDelta(StatisticsType.TDD, 1.0E8d);
        for (TowerType towerType : TowerType.values) {
            Game game = Game.f8589i;
            game.statisticsManager.registerDelta(game.towerManager.getDamageDealtStatisticType(towerType), 1.0E8d);
        }
        m21511f(getInstance(ResearchType.ROOT), i, new int[]{0}, new int[]{0, 0, 0, 0, 0});
        m21507j();
        m21506k();
    }

    /* renamed from: j */
    public final void m21507j() {
        updateAndValidateStarBranch();
        Game.f8589i.authManager.notifyNeedCloudSave(true);
        this.f10061E.begin();
        int i = this.f10061E.size;
        for (int i2 = 0; i2 < i; i2++) {
            this.f10061E.get(i2).researchesUpdated();
        }
        this.f10061E.end();
    }

    /* renamed from: k */
    public final void m21506k() {
        m21514c();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            Array<Research> array = this.f10062a;
            if (i >= array.size) {
                break;
            }
            Research research = array.items[i];
            int i5 = research.installedLevel;
            if (i5 > 0) {
                i3 += i5;
                i2++;
                if (research.priceInStars == 0) {
                    boolean z = true;
                    if (research.type != ResearchType.DECRYPTING_QUEUE_SIZE) {
                        Research.ResearchLevel researchLevel = research.levels[0];
                        int i6 = 0;
                        while (true) {
                            Array<ItemStack> array2 = researchLevel.price;
                            if (i6 < array2.size) {
                                if (array2.items[i6].getItem().getType() == ItemType.PRESTIGE_TOKEN) {
                                    break;
                                }
                                i6++;
                            } else {
                                z = false;
                                break;
                            }
                        }
                    }
                    if (!z && !research.endlessOnly) {
                        i4 += Math.min(research.installedLevel, research.levels.length);
                    }
                }
            }
            i++;
        }
        StatisticsManager statisticsManager = Game.f8589i.statisticsManager;
        StatisticsType statisticsType = StatisticsType.RC;
        double d = i2;
        if (statisticsManager.getAllTime(statisticsType) < d) {
            Game.f8589i.statisticsManager.registerValue(statisticsType, d);
        }
        StatisticsManager statisticsManager2 = Game.f8589i.statisticsManager;
        StatisticsType statisticsType2 = StatisticsType.RCL;
        double d2 = i3;
        if (statisticsManager2.getAllTime(statisticsType2) < d2) {
            Game.f8589i.statisticsManager.registerValue(statisticsType2, d2);
        }
        Game.f8589i.achievementManager.setProgress(AchievementType.FIVE_HUNDRED_RESEARCH, i2);
        Game.f8589i.achievementManager.setProgress(AchievementType.FULL_REGULAR_RESEARCH, i4);
    }

    /* renamed from: l */
    public final void m21505l() {
        m21514c();
        Research research = this.f10074x;
        if (research != null) {
            if (research.isMaxEndlessLevel()) {
                Logger.error(TAG, "current research can't have higher level, aborting");
                this.f10074x = null;
            } else if (this.f10075y <= TimeUtils.millis()) {
                Research research2 = this.f10074x;
                setInstalledLevel(research2.type, research2.installedLevel + 1, true);
                m21508i(this.f10074x);
                this.f10074x = null;
                this.f10058B = true;
                checkResearchesStatus(true);
            }
        }
    }

    public void resetResearchForAccelerators(Research research) {
        int resetForAcceleratorsState = research.resetForAcceleratorsState();
        if (resetForAcceleratorsState != 0) {
            Logger.error(TAG, "can not be reset now " + research.type + " state " + resetForAcceleratorsState);
            return;
        }
        int resetPrice = research.getResetPrice();
        if (resetPrice > 0) {
            Array<ItemStack> cumulativePrice = research.getCumulativePrice(0, research.installedLevel, true);
            if (Game.f8589i.progressManager.removeAccelerators(resetPrice)) {
                research.installedLevel = 0;
                if (research.levels[0].price.size == 0) {
                    research.installedLevel = 1;
                }
                research.installedLevelsForToken = null;
                Game.f8589i.progressManager.addItems(cumulativePrice);
                this.f10058B = true;
                Logger.log(TAG, "reset " + research.type + " for accelerators");
                m21507j();
                return;
            }
            Game game = Game.f8589i;
            game.uiManager.dialog.showAlert(game.localeManager.i18n.get("not_enough_accelerators"));
            return;
        }
        Logger.error(TAG, "reset price is " + resetPrice);
    }

    public void resetStarResearches() {
        m21514c();
        if (Game.f8589i.researchManager.getResetStarResearchesAcceleratorPrice() > 0) {
            int resetStarResearchesAcceleratorPrice = Game.f8589i.researchManager.getResetStarResearchesAcceleratorPrice();
            if (Game.f8589i.progressManager.removeAccelerators(resetStarResearchesAcceleratorPrice)) {
                Game.f8589i.actionResolver.logCurrencySpent("reset_star_research", "accelerator", resetStarResearchesAcceleratorPrice);
                int i = 0;
                while (true) {
                    Array<Research> array = this.f10062a;
                    if (i < array.size) {
                        Research[] researchArr = array.items;
                        if (researchArr[i].priceInStars > 0 && researchArr[i].installedLevel > 0) {
                            researchArr[i].installedLevel = 0;
                        }
                        i++;
                    } else {
                        this.f10058B = true;
                        m21507j();
                        return;
                    }
                }
            } else {
                Game game = Game.f8589i;
                game.uiManager.notifications.add(game.localeManager.i18n.get("not_enough_accelerators"), Game.f8589i.assetManager.getDrawable("icon-times"), MaterialColor.RED.P800, StaticSoundType.FAIL);
            }
        }
    }

    public void save() {
        String name;
        m21514c();
        if (Config.isHeadless()) {
            return;
        }
        Game.f8589i.progressManager.saveIfRequired();
        PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
        Research research = this.f10074x;
        if (research == null) {
            name = "";
        } else {
            name = research.type.name();
        }
        preferencesManager.set("currentlyResearching", name);
        preferencesManager.set("currentResearchEndTime", String.valueOf(this.f10075y));
        Json json = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter = new StringWriter();
        json.setWriter(stringWriter);
        json.writeObjectStart();
        Array.ArrayIterator<Research> it = this.f10062a.iterator();
        while (it.hasNext()) {
            Research next = it.next();
            if (next.installedLevel != 0) {
                json.writeValue(next.type.name(), Integer.valueOf(next.installedLevel));
            }
        }
        json.writeObjectEnd();
        preferencesManager.set("installedResearches", stringWriter.toString());
        Json json2 = new Json(JsonWriter.OutputType.json);
        StringWriter stringWriter2 = new StringWriter();
        json2.setWriter(stringWriter2);
        json2.writeObjectStart();
        Array.ArrayIterator<Research> it2 = this.f10062a.iterator();
        while (true) {
            int i = 0;
            if (it2.hasNext()) {
                Research next2 = it2.next();
                if (next2.installedLevelsForToken != null) {
                    json2.writeArrayStart(next2.type.name());
                    while (true) {
                        IntArray intArray = next2.installedLevelsForToken;
                        if (i >= intArray.size) {
                            break;
                        }
                        json2.writeValue(Integer.valueOf(intArray.items[i]));
                        i++;
                    }
                    json2.writeArrayEnd();
                }
            } else {
                json2.writeObjectEnd();
                preferencesManager.set("installedResearchesForTokens", stringWriter2.toString());
                preferencesManager.flush();
                this.f10058B = false;
                return;
            }
        }
    }

    public void setInstalledLevel(ResearchType researchType, int i, boolean z) {
        m21514c();
        Research researchInstance = getResearchInstance(researchType);
        if (researchInstance.maxEndlessLevel >= i) {
            researchInstance.installedLevel = i;
            this.f10058B = true;
            if (z) {
                this.f10061E.begin();
                int i2 = this.f10061E.size;
                for (int i3 = 0; i3 < i2; i3++) {
                    this.f10061E.get(i3).researchCompleted(researchInstance);
                }
                this.f10061E.end();
            }
            m21507j();
            m21506k();
            return;
        }
        throw new IllegalArgumentException("Level for " + researchType.name() + " is too high (" + i + "), max research level is " + researchInstance.maxEndlessLevel);
    }

    public boolean startResearching(Research research, boolean z) {
        Array<ItemStack> price;
        m21514c();
        int i = 0;
        try {
            tryStartResearching(research, false, null);
            if (z) {
                int i2 = research.installedLevel;
                Research.ResearchLevel[] researchLevelArr = research.levels;
                if (i2 < researchLevelArr.length) {
                    price = researchLevelArr[i2].price;
                } else {
                    price = research.endlessLevel.getPrice(i2 + 1);
                }
                for (int i3 = 0; i3 < price.size; i3++) {
                    ItemStack itemStack = price.items[i3];
                    Game.f8589i.progressManager.removeItems(itemStack.getItem(), itemStack.getCount());
                }
            }
            this.f10074x = research;
            long researchingDuration = getResearchingDuration(research);
            this.f10075y = TimeUtils.millis() + researchingDuration;
            this.f10061E.begin();
            while (true) {
                DelayedRemovalArray<ResearchManagerListener> delayedRemovalArray = this.f10061E;
                if (i < delayedRemovalArray.size) {
                    delayedRemovalArray.get(i).researchStarted(research, researchingDuration);
                    i++;
                } else {
                    delayedRemovalArray.end();
                    m21505l();
                    this.f10058B = true;
                    return true;
                }
            }
        } catch (StartResearchingException e) {
            Logger.error(TAG, "unable to start researching " + research.type.name(), e);
            for (int i4 = 0; i4 < e.reasons.size; i4++) {
                Logger.error(TAG, "reason: " + e.reasons.get(i4));
            }
            return false;
        }
    }

    public void tryStartResearching(Research research, boolean z, StartResearchingException startResearchingException) {
        boolean isMaxNormalLevel;
        boolean z2;
        m21514c();
        if (startResearchingException == null) {
            startResearchingException = new StartResearchingException();
        }
        startResearchingException.reasons.clear();
        if (getCurrentResearching() != null) {
            startResearchingException.reasons.add(StartResearchFailReason.OTHER_RESEARCH_IN_PROGRESS);
        }
        if (Game.f8589i.progressManager.getDifficultyMode() != DifficultyMode.EASY && Game.f8589i.progressManager.getDifficultyMode() != DifficultyMode.NORMAL) {
            isMaxNormalLevel = research.isMaxEndlessLevel();
        } else {
            isMaxNormalLevel = research.isMaxNormalLevel();
        }
        if (isMaxNormalLevel) {
            startResearchingException.reasons.add(StartResearchFailReason.MAX_LEVEL);
        }
        int i = 0;
        if (research.priceInStars > 0) {
            int i2 = 0;
            while (true) {
                Array<Research.ResearchLink> array = research.linksToParents;
                if (i2 < array.size) {
                    if (array.get(i2).parent.installedLevel > 0) {
                        z2 = true;
                        break;
                    }
                    i2++;
                } else {
                    z2 = false;
                    break;
                }
            }
            int i3 = 0;
            while (true) {
                Array<Research.ResearchLink> array2 = research.linksToChildren;
                if (i3 >= array2.size) {
                    break;
                } else if (array2.get(i3).child.installedLevel > 0) {
                    z2 = true;
                    break;
                } else {
                    i3++;
                }
            }
            if (!z2) {
                startResearchingException.reasons.add(StartResearchFailReason.REQUIRES_PREVIOUS_RESEARCHES);
            }
            if (Game.f8589i.researchManager.getUnusedStarsCount() < research.priceInStars) {
                startResearchingException.reasons.add(StartResearchFailReason.NOT_ENOUGH_STARS);
            }
        } else {
            int i4 = 0;
            while (true) {
                Array<Research.ResearchLink> array3 = research.linksToParents;
                if (i4 >= array3.size) {
                    break;
                }
                Research.ResearchLink researchLink = array3.get(i4);
                if (researchLink.requiredLevels > researchLink.parent.installedLevel) {
                    startResearchingException.reasons.add(StartResearchFailReason.REQUIRES_PREVIOUS_RESEARCHES);
                    break;
                }
                i4++;
            }
        }
        if (!isMaxNormalLevel) {
            Research.ResearchLevel[] researchLevelArr = research.levels;
            int length = researchLevelArr.length;
            int i5 = research.installedLevel;
            if (length > i5) {
                Research.ResearchLevel researchLevel = researchLevelArr[i5];
                if (!z) {
                    int i6 = 0;
                    while (true) {
                        Array<ItemStack> array4 = researchLevel.price;
                        if (i6 >= array4.size) {
                            break;
                        }
                        ItemStack itemStack = array4.items[i6];
                        if (itemStack.getItem().getType() == ItemType.GREEN_PAPER) {
                            if (itemStack.getCount() > Game.f8589i.progressManager.getGreenPapers()) {
                                startResearchingException.reasons.add(StartResearchFailReason.NOT_ENOUGH_MONEY);
                            }
                        } else if (itemStack.getItem().getType() == ItemType.RESOURCE) {
                            if (itemStack.getCount() > Game.f8589i.progressManager.getResources(((ResourceItem) itemStack.getItem()).resourceType)) {
                                Array<StartResearchFailReason> array5 = startResearchingException.reasons;
                                StartResearchFailReason startResearchFailReason = StartResearchFailReason.NOT_ENOUGH_RESOURCES;
                                if (!array5.contains(startResearchFailReason, true)) {
                                    startResearchingException.reasons.add(startResearchFailReason);
                                }
                            }
                        } else if (itemStack.getCount() > Game.f8589i.progressManager.getItemsCount(itemStack.getItem())) {
                            Array<StartResearchFailReason> array6 = startResearchingException.reasons;
                            StartResearchFailReason startResearchFailReason2 = StartResearchFailReason.NOT_ENOUGH_ITEMS;
                            if (!array6.contains(startResearchFailReason2, true)) {
                                startResearchingException.reasons.add(startResearchFailReason2);
                            }
                        }
                        i6++;
                    }
                }
                Requirement[] requirementArr = researchLevel.requirements;
                int length2 = requirementArr.length;
                while (true) {
                    if (i >= length2) {
                        break;
                    } else if (!requirementArr[i].isSatisfied()) {
                        startResearchingException.reasons.add(StartResearchFailReason.REQUIREMENT_NOT_SATISFIED);
                        break;
                    } else {
                        i++;
                    }
                }
            } else if (!z) {
                Array<ItemStack> price = research.endlessLevel.getPrice(i5 + 1);
                while (i < price.size) {
                    ItemStack itemStack2 = price.items[i];
                    if (itemStack2.getItem().getType() == ItemType.GREEN_PAPER) {
                        if (itemStack2.getCount() > Game.f8589i.progressManager.getGreenPapers()) {
                            startResearchingException.reasons.add(StartResearchFailReason.NOT_ENOUGH_MONEY);
                        }
                    } else if (itemStack2.getItem().getType() == ItemType.RESOURCE) {
                        if (itemStack2.getCount() > Game.f8589i.progressManager.getResources(((ResourceItem) itemStack2.getItem()).resourceType)) {
                            Array<StartResearchFailReason> array7 = startResearchingException.reasons;
                            StartResearchFailReason startResearchFailReason3 = StartResearchFailReason.NOT_ENOUGH_RESOURCES;
                            if (!array7.contains(startResearchFailReason3, true)) {
                                startResearchingException.reasons.add(startResearchFailReason3);
                            }
                        }
                    } else if (itemStack2.getCount() > Game.f8589i.progressManager.getItemsCount(itemStack2.getItem())) {
                        Array<StartResearchFailReason> array8 = startResearchingException.reasons;
                        StartResearchFailReason startResearchFailReason4 = StartResearchFailReason.NOT_ENOUGH_ITEMS;
                        if (!array8.contains(startResearchFailReason4, true)) {
                            startResearchingException.reasons.add(startResearchFailReason4);
                        }
                    }
                    i++;
                }
            }
        }
        if (startResearchingException.reasons.size == 0) {
            return;
        }
        throw startResearchingException;
    }

    public void updateAfforableResearchesCount() {
        m21514c();
        this.f10076z = 0;
        int i = 0;
        while (true) {
            Array<Research> array = this.f10062a;
            if (i < array.size) {
                if (canStartResearching(array.items[i], false)) {
                    this.f10076z++;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public void updateAndValidateStarBranch() {
        m21514c();
        boolean z = false;
        boolean z2 = true;
        while (z2) {
            z2 = m21512e();
            if (m21513d()) {
                z2 = true;
            }
            if (z2) {
                z = true;
            }
        }
        if (z) {
            m21507j();
            m21506k();
            save();
        }
    }
}
