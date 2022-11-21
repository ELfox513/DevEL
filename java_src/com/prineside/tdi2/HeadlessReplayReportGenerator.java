package com.prineside.tdi2;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.JsonWriter;
import com.prineside.tdi2.Item;
import com.prineside.tdi2.configs.HeadlessConfig;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.RarityType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.systems.AbilitySystem;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.systems.LootSystem;
import com.prineside.tdi2.tiles.TargetTile;
import java.io.StringWriter;
/* loaded from: classes2.dex */
public class HeadlessReplayReportGenerator {

    /* renamed from: c */
    public static int f8679c;

    /* renamed from: d */
    public static int f8680d;

    /* renamed from: a */
    public static Array<Frame> f8677a = new Array<>(Frame.class);

    /* renamed from: b */
    public static Array<PassedEnemy> f8678b = new Array<>(PassedEnemy.class);

    /* renamed from: e */
    public static final int[] f8681e = new int[RarityType.values.length];

    /* loaded from: classes2.dex */
    public static class Frame {

        /* renamed from: a */
        public long f8683a;

        /* renamed from: b */
        public long f8684b;

        /* renamed from: c */
        public long f8685c;

        /* renamed from: d */
        public long f8686d;

        /* renamed from: e */
        public int f8687e;

        /* renamed from: f */
        public int f8688f;

        /* renamed from: g */
        public int f8689g;

        /* renamed from: h */
        public int f8690h;

        /* renamed from: i */
        public long f8691i;

        /* renamed from: j */
        public long f8692j;

        /* renamed from: k */
        public long f8693k;

        /* renamed from: l */
        public long f8694l;

        /* renamed from: m */
        public int f8695m;

        /* renamed from: n */
        public int f8696n;

        /* renamed from: o */
        public final int[] f8697o;

        public Frame() {
            this.f8697o = new int[RarityType.values.length];
        }

        /* renamed from: q */
        public final void m21974q(Json json) {
            json.writeValue(Long.valueOf(this.f8683a));
            json.writeValue(Long.valueOf(this.f8684b));
            json.writeValue(Long.valueOf(this.f8685c));
            json.writeValue(Long.valueOf(this.f8686d));
            json.writeValue(Integer.valueOf(this.f8687e));
            json.writeValue(Integer.valueOf(this.f8688f));
            json.writeValue(Integer.valueOf(this.f8689g));
            json.writeValue(Integer.valueOf(this.f8690h));
            json.writeValue(Long.valueOf(this.f8691i));
            json.writeValue(Long.valueOf(this.f8692j));
            json.writeValue(Long.valueOf(this.f8693k));
            json.writeValue(Long.valueOf(this.f8694l));
            json.writeValue(Integer.valueOf(this.f8695m));
            json.writeValue(Integer.valueOf(this.f8696n));
            json.writeValue(this.f8697o);
        }
    }

    /* loaded from: classes2.dex */
    public static class PassedEnemy {
        public EnemyType enemyType;
        public float healthCoeff;
        public float time;

        public PassedEnemy() {
        }
    }

    /* renamed from: b */
    public static /* synthetic */ int m21994b(int i) {
        int i2 = f8680d + i;
        f8680d = i2;
        return i2;
    }

    /* renamed from: c */
    public static /* synthetic */ int m21993c(int i) {
        int i2 = f8679c + i;
        f8679c = i2;
        return i2;
    }

    public static void interval(GameSystemProvider gameSystemProvider) {
        f8677a.add(m21991e(gameSystemProvider));
    }

    /* renamed from: e */
    public static Frame m21991e(GameSystemProvider gameSystemProvider) {
        Frame frame = new Frame();
        frame.f8690h = (int) gameSystemProvider.enemy.getTowersMaxDps();
        frame.f8683a = (long) gameSystemProvider.statistics.getStatistic(StatisticsType.SG_EK);
        frame.f8684b = (long) gameSystemProvider.statistics.getStatistic(StatisticsType.SG_RM);
        frame.f8685c = (long) gameSystemProvider.statistics.getStatistic(StatisticsType.SG_WCA);
        frame.f8686d = (long) gameSystemProvider.statistics.getStatistic(StatisticsType.SG_WCL);
        frame.f8687e = (int) gameSystemProvider.statistics.getStatistic(StatisticsType.CG_B);
        frame.f8688f = (int) gameSystemProvider.statistics.getStatistic(StatisticsType.CG_EK);
        frame.f8689g = (int) gameSystemProvider.statistics.getStatistic(StatisticsType.CG_WC);
        frame.f8692j = (long) gameSystemProvider.statistics.getStatistic(StatisticsType.XPG_EK);
        frame.f8693k = (long) gameSystemProvider.statistics.getStatistic(StatisticsType.XPG_EM);
        frame.f8691i = (long) gameSystemProvider.statistics.getStatistic(StatisticsType.XPG_TG);
        frame.f8694l = (int) gameSystemProvider.statistics.getStatistic(StatisticsType.CG_U);
        frame.f8695m = f8679c;
        frame.f8696n = f8680d;
        System.arraycopy(f8681e, 0, frame.f8697o, 0, frame.f8697o.length);
        return frame;
    }

    public static void start(final GameSystemProvider gameSystemProvider) {
        Logger.log("HeadlessReplayReportGenerator", "start");
        f8677a.clear();
        f8678b.clear();
        gameSystemProvider.enemy.listeners.add(new EnemySystem.EnemySystemListener.EnemySystemListenerAdapter() { // from class: com.prineside.tdi2.HeadlessReplayReportGenerator.1
            @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
            public boolean enemyReachedTarget(Enemy enemy, int i, TargetTile targetTile) {
                if (targetTile != null) {
                    PassedEnemy passedEnemy = new PassedEnemy();
                    passedEnemy.enemyType = enemy.type;
                    passedEnemy.healthCoeff = enemy.getHealth() / enemy.maxHealth;
                    passedEnemy.time = (float) GameSystemProvider.this.statistics.getCurrentGameStatistic(StatisticsType.PT);
                    HeadlessReplayReportGenerator.f8678b.add(passedEnemy);
                    return false;
                }
                return false;
            }
        });
        gameSystemProvider.loot.listeners.add(new LootSystem.LootSystemListener.LootSystemListenerAdapter() { // from class: com.prineside.tdi2.HeadlessReplayReportGenerator.2
            @Override // com.prineside.tdi2.systems.LootSystem.LootSystemListener.LootSystemListenerAdapter, com.prineside.tdi2.systems.LootSystem.LootSystemListener
            public void enemyLootAdded(Enemy enemy, Item item, int i, boolean z) {
                if (item == Item.C1543D.GREEN_PAPER) {
                    HeadlessReplayReportGenerator.m21994b(i);
                } else if (item == Item.C1543D.BIT_DUST) {
                    HeadlessReplayReportGenerator.m21993c(i);
                }
                if (z) {
                    int[] iArr = HeadlessReplayReportGenerator.f8681e;
                    int ordinal = item.getRarity().ordinal();
                    iArr[ordinal] = iArr[ordinal] + 1;
                }
            }
        });
    }

    public static String stop(GameSystemProvider gameSystemProvider) {
        StatisticsType[] statisticsTypeArr;
        if (gameSystemProvider == null) {
            Logger.error("HeadlessReplayReportGenerator", "S is null");
            return null;
        }
        Logger.log("HeadlessReplayReportGenerator", "stop");
        StringWriter stringWriter = new StringWriter();
        Json json = new Json(JsonWriter.OutputType.json);
        json.setWriter(stringWriter);
        json.writeObjectStart();
        json.writeValue("frameInterval", Integer.valueOf((int) HeadlessConfig.REPORT_INTERVAL));
        json.writeValue("researches", Double.valueOf(Game.f8589i.statisticsManager.getAllTime(StatisticsType.RCL)));
        json.writeValue("sumProgressTime", Double.valueOf(Game.f8589i.statisticsManager.getAllTime(StatisticsType.PRT)));
        json.writeArrayStart("frames");
        int i = 0;
        int i2 = 0;
        while (true) {
            Array<Frame> array = f8677a;
            if (i2 >= array.size) {
                break;
            }
            Frame frame = array.items[i2];
            json.writeArrayStart();
            frame.m21974q(json);
            json.writeArrayEnd();
            i2++;
        }
        json.writeArrayEnd();
        json.writeArrayStart("passedEnemies");
        int i3 = 0;
        while (true) {
            Array<PassedEnemy> array2 = f8678b;
            if (i3 >= array2.size) {
                break;
            }
            PassedEnemy passedEnemy = array2.items[i3];
            json.writeObjectStart();
            json.writeValue("type", passedEnemy.enemyType.name());
            json.writeValue("health", Float.valueOf(passedEnemy.healthCoeff));
            json.writeValue("time", Float.valueOf(passedEnemy.time));
            json.writeObjectEnd();
            i3++;
        }
        json.writeArrayEnd();
        json.writeArrayStart("lastFrame");
        m21991e(gameSystemProvider).m21974q(json);
        json.writeArrayEnd();
        json.writeArrayStart("towers");
        int i4 = 0;
        while (true) {
            DelayedRemovalArray<Tower> delayedRemovalArray = gameSystemProvider.tower.towers;
            if (i4 >= delayedRemovalArray.size) {
                break;
            }
            Tower tower = delayedRemovalArray.items[i4];
            json.writeObjectStart();
            json.writeValue("type", tower.type.name());
            json.writeValue("x", Integer.valueOf(tower.getTile().getX()));
            json.writeValue("y", Integer.valueOf(tower.getTile().getY()));
            json.writeValue("upgradeLevel", Integer.valueOf(tower.getUpgradeLevel()));
            json.writeValue("xpLevel", Integer.valueOf(tower.getLevel()));
            json.writeValue("mdps", Float.valueOf(tower.mdps));
            json.writeValue("kills", Integer.valueOf(tower.enemiesKilled));
            json.writeValue("damage", Float.valueOf(tower.damageGiven));
            json.writeValue("moneySpent", Integer.valueOf(tower.moneySpentOn.get()));
            json.writeValue("aimStrategy", tower.aimStrategy.name());
            json.writeArrayStart("abilities");
            for (int i5 = 0; i5 < 6; i5++) {
                if (tower.isAbilityInstalled(i5)) {
                    json.writeValue(Integer.valueOf(i5));
                }
            }
            json.writeArrayEnd();
            json.writeObjectEnd();
            i4++;
        }
        json.writeArrayEnd();
        json.writeArrayStart("modifiers");
        int i6 = 0;
        while (true) {
            DelayedRemovalArray<Modifier> delayedRemovalArray2 = gameSystemProvider.modifier.modifiers;
            if (i6 >= delayedRemovalArray2.size) {
                break;
            }
            Modifier modifier = delayedRemovalArray2.items[i6];
            json.writeObjectStart();
            json.writeValue("type", modifier.type.name());
            json.writeValue("x", Integer.valueOf(modifier.getTile().getX()));
            json.writeValue("y", Integer.valueOf(modifier.getTile().getY()));
            json.writeObjectEnd();
            i6++;
        }
        json.writeArrayEnd();
        json.writeObjectStart("statistics");
        for (StatisticsType statisticsType : StatisticsType.values) {
            double statistic = gameSystemProvider.statistics.getStatistic(statisticsType);
            if (statistic != 0.0d) {
                json.writeValue(statisticsType.name(), Double.valueOf(statistic));
            }
        }
        json.writeObjectEnd();
        json.writeObjectStart("abilitiesUsed");
        while (true) {
            AbilitySystem abilitySystem = gameSystemProvider.ability;
            AbilityType[] abilityTypeArr = abilitySystem.abilitiesConfiguration.slots;
            if (i < abilityTypeArr.length) {
                AbilityType abilityType = abilityTypeArr[i];
                if (abilityType != null && abilitySystem.abilitiesUsed[i] > 0) {
                    json.writeValue(abilityType.name(), Integer.valueOf(gameSystemProvider.ability.abilitiesUsed[i]));
                }
                i++;
            } else {
                json.writeObjectEnd();
                json.writeObjectEnd();
                return stringWriter.toString();
            }
        }
    }
}
