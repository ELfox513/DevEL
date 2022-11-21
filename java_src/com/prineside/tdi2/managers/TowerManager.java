package com.prineside.tdi2.managers;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Interpolation;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.IntMap;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;
import com.badlogic.gdx.utils.ObjectMap;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameValueProvider;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.GeneralizedTowerStatType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.enums.TowerStatType;
import com.prineside.tdi2.enums.TowerType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.towers.AirTower;
import com.prineside.tdi2.towers.BasicTower;
import com.prineside.tdi2.towers.BlastTower;
import com.prineside.tdi2.towers.CannonTower;
import com.prineside.tdi2.towers.CrusherTower;
import com.prineside.tdi2.towers.FlamethrowerTower;
import com.prineside.tdi2.towers.FreezingTower;
import com.prineside.tdi2.towers.GaussTower;
import com.prineside.tdi2.towers.LaserTower;
import com.prineside.tdi2.towers.MinigunTower;
import com.prineside.tdi2.towers.MissileTower;
import com.prineside.tdi2.towers.MultishotTower;
import com.prineside.tdi2.towers.SniperTower;
import com.prineside.tdi2.towers.SplashTower;
import com.prineside.tdi2.towers.TeslaTower;
import com.prineside.tdi2.towers.VenomTower;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
import com.prineside.tdi2.utils.TextureRegionConfig;
import java.util.Iterator;
import net.bytebuddy.ByteBuddy;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class TowerManager extends Manager.ManagerAdapter {
    public static final int STAT_ROUNDING_CEIL = 3;
    public static final int STAT_ROUNDING_FLOOR = 1;
    public static final int STAT_ROUNDING_MIDDLE = 2;
    public static final int STAT_ROUNDING_NONE = 0;

    /* renamed from: A */
    public final GameValueType[] f10169A;

    /* renamed from: B */
    public final GameValueType[] f10170B;

    /* renamed from: C */
    public final GameValueType[] f10171C;

    /* renamed from: D */
    public final GameValueType[] f10172D;

    /* renamed from: E */
    public final GameValueType[] f10173E;

    /* renamed from: F */
    public final Factories f10174F;

    /* renamed from: G */
    public final GameValueType[] f10175G;
    public final ObjectMap<TowerType, String> SHORT_TOWER_ALIASES;

    /* renamed from: a */
    public final Tower.Factory[] f10176a;
    public ParticleEffectPool abilityAvailableParticleEffectPool;

    /* renamed from: b */
    public final String[] f10177b;
    public final boolean[][] canTowerAttackEnemy;

    /* renamed from: d */
    public final String[] f10178d;
    public ParticleEffectPool[] highlightParticles;

    /* renamed from: k */
    public final TowerStatsConfig[] f10179k;
    public ParticleEffectPool lvlUpParticles;

    /* renamed from: p */
    public final StatisticsType[] f10180p;

    /* renamed from: q */
    public final StatisticsType[] f10181q;

    /* renamed from: r */
    public final StatisticsType[] f10182r;

    /* renamed from: s */
    public final StatisticsType[] f10183s;

    /* renamed from: t */
    public final StatisticsType[] f10184t;
    public final float[][] towerEnemyDamageMultiplier;

    /* renamed from: u */
    public final StatisticsType[] f10185u;
    public ParticleEffectPool upgradeParticles;

    /* renamed from: v */
    public final String[] f10186v;

    /* renamed from: w */
    public final String[] f10187w;

    /* renamed from: x */
    public final String[] f10188x;

    /* renamed from: y */
    public final GameValueType[] f10189y;

    /* renamed from: z */
    public final GameValueType[] f10190z;

    /* loaded from: classes2.dex */
    public static class Factories {
        public AirTower.AirTowerFactory AIR;
        public BasicTower.BasicTowerFactory BASIC;
        public BlastTower.BlastTowerFactory BLAST;
        public CannonTower.CannonTowerFactory CANNON;
        public CrusherTower.CrusherTowerFactory CRUSHER;
        public FlamethrowerTower.FlamethrowerTowerFactory FLAMETHROWER;
        public FreezingTower.FreezingTowerFactory FREEZING;
        public GaussTower.GaussTowerFactory GAUSS;
        public LaserTower.LaserTowerFactory LASER;
        public MinigunTower.MinigunTowerFactory MINIGUN;
        public MissileTower.MissileTowerFactory MISSILE;
        public MultishotTower.MultishotTowerFactory MULTISHOT;
        public SniperTower.SniperTowerFactory SNIPER;
        public SplashTower.SplashTowerFactory SPLASH;
        public TeslaTower.TeslaTowerFactory TESLA;
        public VenomTower.VenomTowerFactory VENOM;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<TowerManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public TowerManager read() {
            return Game.f8589i.towerManager;
        }
    }

    /* loaded from: classes2.dex */
    public static class TowerAbilityConfig {
        public String name;
        public Array<TextureRegionConfig> textures = new Array<>(true, 1, TextureRegionConfig.class);
    }

    /* loaded from: classes2.dex */
    public static class TowerStatConfig {
        public GameValueType[] gameValueMultipliers;
        public float maxValue;
        public float minValue;
        public float pwrFactor;
        public int rounding = 0;
        public boolean unique;
        public float[] values;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public TowerAbilityConfig[] getAbilitiesConfig(TowerType towerType) {
        return this.f10179k[towerType.ordinal()].f10197e;
    }

    public TextureRegion getAimStrategyIcon(Tower.AimStrategy aimStrategy) {
        return Game.f8589i.assetManager.getTextureRegion(getAimStrategyIconAlias(aimStrategy));
    }

    public String getAimStrategyIconAlias(Tower.AimStrategy aimStrategy) {
        return this.f10178d[aimStrategy.ordinal()];
    }

    public StatisticsType getBuiltStatisticType(TowerType towerType) {
        return this.f10182r[towerType.ordinal()];
    }

    public StatisticsType getDamageDealtStatisticType(TowerType towerType) {
        return this.f10181q[towerType.ordinal()];
    }

    public StatisticsType getEnemiesKilledStatisticsType(TowerType towerType) {
        return this.f10185u[towerType.ordinal()];
    }

    public GameValueType getExperienceGenerationGameValueType(TowerType towerType) {
        return this.f10171C[towerType.ordinal()];
    }

    public GameValueType getExperienceMultiplierGameValueType(TowerType towerType) {
        return this.f10172D[towerType.ordinal()];
    }

    public Tower.Factory<? extends Tower> getFactory(TowerType towerType) {
        return this.f10176a[towerType.ordinal()];
    }

    public GameValueType getMaxExpLevelGameValueType(TowerType towerType) {
        return this.f10169A[towerType.ordinal()];
    }

    public GameValueType getMaxUpgradeLevelGameValueType(TowerType towerType) {
        return this.f10170B[towerType.ordinal()];
    }

    public StatisticsType getMoneySpentStatisticType(TowerType towerType) {
        return this.f10180p[towerType.ordinal()];
    }

    public GameValueType getPriceGameValueType(TowerType towerType) {
        return this.f10190z[towerType.ordinal()];
    }

    public StatisticsType getSoldStatisticType(TowerType towerType) {
        return this.f10183s[towerType.ordinal()];
    }

    public GameValueType getStartingLevelGameValueType(TowerType towerType) {
        return this.f10175G[towerType.ordinal()];
    }

    public TowerStatConfig getStatConfig(TowerType towerType, TowerStatType towerStatType) {
        return this.f10179k[towerType.ordinal()].f10195c.get(towerStatType.ordinal());
    }

    public TowerStatType[] getStatTypes(TowerType towerType) {
        return this.f10179k[towerType.ordinal()].f10196d;
    }

    public Array<TextureRegionConfig> getTextureConfig(TowerType towerType, String str) {
        return this.f10179k[towerType.ordinal()].f10198f.get(str);
    }

    public GameValueType getTowerGameValueType(TowerType towerType) {
        return this.f10173E[towerType.ordinal()];
    }

    public GameValueType getUpgradePriceGameValueType(TowerType towerType) {
        return this.f10189y[towerType.ordinal()];
    }

    public float getUpgradePriceMultiplier(TowerType towerType) {
        return this.f10179k[towerType.ordinal()].f10194b;
    }

    public StatisticsType getUpgradedStatisticType(TowerType towerType) {
        return this.f10184t[towerType.ordinal()];
    }

    public boolean hasStat(TowerType towerType, TowerStatType towerStatType) {
        return this.f10179k[towerType.ordinal()].f10195c.containsKey(towerStatType.ordinal());
    }

    /* renamed from: com.prineside.tdi2.managers.TowerManager$1 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C18861 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10191a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f10192b;

        static {
            int[] iArr = new int[GeneralizedTowerStatType.values().length];
            f10192b = iArr;
            try {
                iArr[GeneralizedTowerStatType.RANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10192b[GeneralizedTowerStatType.ATTACK_SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10192b[GeneralizedTowerStatType.DAMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10192b[GeneralizedTowerStatType.CROWD_DAMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10192b[GeneralizedTowerStatType.AGILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[Tower.AimStrategy.values().length];
            f10191a = iArr2;
            try {
                iArr2[Tower.AimStrategy.FIRST.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10191a[Tower.AimStrategy.LAST.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f10191a[Tower.AimStrategy.STRONGEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f10191a[Tower.AimStrategy.WEAKEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f10191a[Tower.AimStrategy.NEAREST.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f10191a[Tower.AimStrategy.RANDOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public float clampStat(TowerType towerType, TowerStatType towerStatType, float f) {
        int floor;
        TowerStatConfig towerStatConfig = this.f10179k[towerType.ordinal()].f10195c.get(towerStatType.ordinal());
        float f2 = towerStatConfig.minValue;
        if (f2 != Float.MIN_VALUE && f < f2) {
            f = f2;
        }
        float f3 = towerStatConfig.maxValue;
        if (f3 != Float.MAX_VALUE && f > f3) {
            f = f3;
        }
        int i = towerStatConfig.rounding;
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    floor = MathUtils.ceil(f);
                } else {
                    return f;
                }
            } else {
                floor = MathUtils.round(f);
            }
        } else {
            floor = MathUtils.floor(f);
        }
        return floor;
    }

    public Tower fromJson(JsonValue jsonValue) {
        Tower create = getFactory(TowerType.valueOf(jsonValue.getString("type"))).create();
        create.loadFromJson(jsonValue);
        return create;
    }

    public Color getAimStrategyColor(Tower.AimStrategy aimStrategy) {
        switch (C18861.f10191a[aimStrategy.ordinal()]) {
            case 1:
                return MaterialColor.CYAN.P800;
            case 2:
                return MaterialColor.BLUE.P800;
            case 3:
                return MaterialColor.DEEP_ORANGE.P800;
            case 4:
                return MaterialColor.GREEN.P800;
            case 5:
                return MaterialColor.YELLOW.P900;
            case 6:
                return MaterialColor.PURPLE.P700;
            default:
                return null;
        }
    }

    public String getAimStrategyName(Tower.AimStrategy aimStrategy) {
        return Game.f8589i.localeManager.i18n.get(this.f10177b[aimStrategy.ordinal()]);
    }

    public Color getGeneralizedTowerStatColor(GeneralizedTowerStatType generalizedTowerStatType) {
        int i = C18861.f10192b[generalizedTowerStatType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return Color.WHITE;
                        }
                        return MaterialColor.PURPLE.P500;
                    }
                    return MaterialColor.PINK.P500;
                }
                return MaterialColor.RED.P500;
            }
            return MaterialColor.ORANGE.P500;
        }
        return MaterialColor.GREEN.P500;
    }

    public CharSequence getGeneralizedTowerStatName(GeneralizedTowerStatType generalizedTowerStatType) {
        int i = C18861.f10192b[generalizedTowerStatType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return "";
                        }
                        return Game.f8589i.localeManager.i18n.get("generalized_tower_stat_AGILITY");
                    }
                    return Game.f8589i.localeManager.i18n.get("generalized_tower_stat_CROWD_DAMAGE");
                }
                return Game.f8589i.localeManager.i18n.get("generalized_tower_stat_DAMAGE");
            }
            return Game.f8589i.localeManager.i18n.get("generalized_tower_stat_ATTACK_SPEED");
        }
        return Game.f8589i.localeManager.i18n.get("generalized_tower_stat_RANGE");
    }

    public float getStatBarCoeff(TowerStatType towerStatType, float f, float f2) {
        float f3;
        if (towerStatType == TowerStatType.DAMAGE) {
            if (f2 < 1000.0f) {
                f3 = Interpolation.pow3Out.apply(f / f2);
            } else if (f2 < 3000.0f) {
                f3 = Interpolation.pow4Out.apply(f / f2);
            } else if (f2 < 10000.0f) {
                f3 = Interpolation.pow5Out.apply(f / f2);
            } else {
                f3 = Interpolation.pow5Out.apply(f / 10000.0f);
            }
        } else {
            f3 = f / f2;
        }
        return MathUtils.clamp(f3, 0.0f, 1.0f);
    }

    public float getStatFromConfig(TowerType towerType, TowerStatType towerStatType, int i, int i2, GameValueProvider gameValueProvider) {
        float f;
        int floor;
        if (gameValueProvider != null) {
            if (i <= 10) {
                if (i2 <= 256) {
                    TowerStatConfig towerStatConfig = this.f10179k[towerType.ordinal()].f10195c.get(towerStatType.ordinal());
                    if (towerStatConfig != null) {
                        if (towerStatConfig.unique) {
                            f = towerStatConfig.values[i2 - 1];
                        } else {
                            f = towerStatConfig.values[i];
                        }
                        GameValueType[] gameValueTypeArr = towerStatConfig.gameValueMultipliers;
                        if (gameValueTypeArr != null) {
                            double d = f;
                            double percentValueAsMultiplier = gameValueProvider.getPercentValueAsMultiplier(gameValueTypeArr);
                            Double.isNaN(d);
                            f = (float) (d * percentValueAsMultiplier);
                        }
                        int i3 = towerStatConfig.rounding;
                        if (i3 != 1) {
                            if (i3 != 2) {
                                if (i3 == 3) {
                                    floor = MathUtils.ceil(f);
                                } else {
                                    return f;
                                }
                            } else {
                                floor = MathUtils.round(f);
                            }
                        } else {
                            floor = MathUtils.floor(f);
                        }
                        return floor;
                    }
                    throw new IllegalArgumentException(towerType.name() + " has no " + towerStatType.name());
                }
                throw new IllegalArgumentException("Experience level is " + i2 + ", max 20");
            }
            throw new IllegalArgumentException("Upgrade level is " + i + ", max 10");
        }
        throw new IllegalArgumentException("gvp is null");
    }

    public int getUpgradePrice(TowerType towerType, int i, GameValueProvider gameValueProvider) {
        double d = this.f10179k[towerType.ordinal()].f10193a[i - 1];
        double percentValueAsMultiplier = gameValueProvider.getPercentValueAsMultiplier(GameValueType.TOWERS_UPGRADE_PRICE, getUpgradePriceGameValueType(towerType));
        Double.isNaN(d);
        return (int) (d * percentValueAsMultiplier);
    }

    public void reloadTowerStats() {
        JsonValue jsonValue;
        Iterator<JsonValue> iterator2 = new JsonReader().parse(Gdx.files.internal("res/tower-stats.json")).iterator2();
        while (iterator2.hasNext()) {
            JsonValue next = iterator2.next();
            TowerType valueOf = TowerType.valueOf(next.name);
            TowerStatsConfig towerStatsConfig = new TowerStatsConfig(null);
            this.f10179k[valueOf.ordinal()] = towerStatsConfig;
            Iterator<JsonValue> iterator22 = next.get("prices").iterator2();
            boolean z = false;
            int i = 0;
            while (iterator22.hasNext()) {
                towerStatsConfig.f10193a[i] = iterator22.next().asInt();
                i++;
            }
            if (i == 10) {
                towerStatsConfig.f10194b = next.getFloat("upgradePriceMultiplier", 1.0f);
                if (Game.f8589i.assetManager != null && (jsonValue = next.get("textures")) != null) {
                    Iterator<JsonValue> iterator23 = jsonValue.iterator2();
                    while (iterator23.hasNext()) {
                        JsonValue next2 = iterator23.next();
                        Array<TextureRegionConfig> array = new Array<>(TextureRegionConfig.class);
                        towerStatsConfig.f10198f.put(next2.name, array);
                        Iterator<JsonValue> iterator24 = next2.iterator2();
                        while (iterator24.hasNext()) {
                            array.add(TextureRegionConfig.fromJson(iterator24.next()));
                        }
                    }
                }
                JsonValue jsonValue2 = next.get("stats");
                Array array2 = new Array(TowerStatType.class);
                Iterator<JsonValue> iterator25 = jsonValue2.iterator2();
                while (iterator25.hasNext()) {
                    JsonValue next3 = iterator25.next();
                    TowerStatType valueOf2 = TowerStatType.valueOf(next3.name);
                    array2.add(valueOf2);
                    TowerStatConfig towerStatConfig = new TowerStatConfig();
                    towerStatsConfig.f10195c.put(valueOf2.ordinal(), towerStatConfig);
                    towerStatConfig.minValue = next3.getFloat("min", Float.MIN_VALUE);
                    towerStatConfig.maxValue = next3.getFloat("max", Float.MAX_VALUE);
                    towerStatConfig.unique = next3.getBoolean("unique", z);
                    towerStatConfig.pwrFactor = next3.getFloat("pwrFactor", 1.0f);
                    String string = next3.getString("rounding", null);
                    if (string != null) {
                        char c = 65535;
                        switch (string.hashCode()) {
                            case -1074341483:
                                if (string.equals("middle")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case 3049733:
                                if (string.equals("ceil")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 97526796:
                                if (string.equals("floor")) {
                                    c = 2;
                                    break;
                                }
                                break;
                        }
                        switch (c) {
                            case 0:
                                towerStatConfig.rounding = 2;
                                break;
                            case 1:
                                towerStatConfig.rounding = 3;
                                break;
                            case 2:
                                towerStatConfig.rounding = 1;
                                break;
                        }
                    }
                    if (next3.hasChild("gvMultipliers")) {
                        Array array3 = new Array(GameValueType.class);
                        Iterator<JsonValue> iterator26 = next3.get("gvMultipliers").iterator2();
                        while (iterator26.hasNext()) {
                            array3.add(GameValueType.valueOf(iterator26.next().asString()));
                        }
                        towerStatConfig.gameValueMultipliers = (GameValueType[]) array3.toArray();
                    } else {
                        towerStatConfig.gameValueMultipliers = new GameValueType[0];
                    }
                    if (towerStatConfig.unique) {
                        towerStatConfig.values = new float[256];
                    } else {
                        towerStatConfig.values = new float[11];
                    }
                    if (next3.has(ByteBuddy.EnumerationImplementation.ENUM_VALUES_METHOD_NAME)) {
                        Iterator<JsonValue> iterator27 = next3.get(ByteBuddy.EnumerationImplementation.ENUM_VALUES_METHOD_NAME).iterator2();
                        int i2 = 0;
                        while (iterator27.hasNext()) {
                            towerStatConfig.values[i2] = iterator27.next().asFloat();
                            i2++;
                        }
                        if (i2 != towerStatConfig.values.length) {
                            throw new RuntimeException("Tower " + valueOf.name() + " has " + i2 + "/" + towerStatConfig.values.length + " values for " + valueOf2.name());
                        }
                    } else {
                        float f = next3.getFloat("startValue");
                        float f2 = next3.getFloat("valueDelta");
                        int i3 = 0;
                        while (true) {
                            float[] fArr = towerStatConfig.values;
                            if (i3 < fArr.length) {
                                fArr[i3] = (i3 * f2) + f;
                                i3++;
                            }
                        }
                    }
                    z = false;
                }
                towerStatsConfig.f10196d = (TowerStatType[]) array2.toArray();
                Array array4 = new Array(TowerAbilityConfig.class);
                Iterator<JsonValue> iterator28 = next.get("abilities").iterator2();
                while (iterator28.hasNext()) {
                    JsonValue next4 = iterator28.next();
                    TowerAbilityConfig towerAbilityConfig = new TowerAbilityConfig();
                    towerAbilityConfig.name = next4.getString("name");
                    if (Game.f8589i.assetManager != null) {
                        Iterator<JsonValue> iterator29 = next4.get("textures").iterator2();
                        while (iterator29.hasNext()) {
                            towerAbilityConfig.textures.add(TextureRegionConfig.fromJson(iterator29.next()));
                        }
                    }
                    array4.add(towerAbilityConfig);
                }
                towerStatsConfig.f10197e = (TowerAbilityConfig[]) array4.toArray();
            } else {
                throw new RuntimeException("Tower " + valueOf.name() + " has " + i + "/10 prices");
            }
        }
    }

    public TowerManager() {
        TowerType[] towerTypeArr;
        TowerType[] towerTypeArr2 = TowerType.values;
        this.f10176a = new Tower.Factory[towerTypeArr2.length];
        Tower.AimStrategy[] aimStrategyArr = Tower.AimStrategy.values;
        this.f10177b = new String[aimStrategyArr.length];
        this.f10178d = new String[aimStrategyArr.length];
        ObjectMap<TowerType, String> objectMap = new ObjectMap<>();
        this.SHORT_TOWER_ALIASES = objectMap;
        objectMap.put(TowerType.BASIC, "B");
        objectMap.put(TowerType.SNIPER, "S");
        objectMap.put(TowerType.CANNON, "C");
        objectMap.put(TowerType.FREEZING, "F");
        objectMap.put(TowerType.VENOM, "V");
        objectMap.put(TowerType.SPLASH, "SP");
        objectMap.put(TowerType.BLAST, "BL");
        objectMap.put(TowerType.MULTISHOT, "M");
        objectMap.put(TowerType.MINIGUN, "MI");
        objectMap.put(TowerType.AIR, "A");
        objectMap.put(TowerType.TESLA, "T");
        objectMap.put(TowerType.MISSILE, "MS");
        objectMap.put(TowerType.FLAMETHROWER, "FL");
        objectMap.put(TowerType.LASER, "L");
        objectMap.put(TowerType.GAUSS, "G");
        objectMap.put(TowerType.CRUSHER, "CR");
        EnemyType[] enemyTypeArr = EnemyType.values;
        this.canTowerAttackEnemy = (boolean[][]) java.lang.reflect.Array.newInstance(Boolean.TYPE, enemyTypeArr.length, towerTypeArr2.length);
        this.towerEnemyDamageMultiplier = (float[][]) java.lang.reflect.Array.newInstance(Float.TYPE, enemyTypeArr.length, towerTypeArr2.length);
        this.f10179k = new TowerStatsConfig[towerTypeArr2.length];
        this.f10180p = new StatisticsType[towerTypeArr2.length];
        this.f10181q = new StatisticsType[towerTypeArr2.length];
        this.f10182r = new StatisticsType[towerTypeArr2.length];
        this.f10183s = new StatisticsType[towerTypeArr2.length];
        this.f10184t = new StatisticsType[towerTypeArr2.length];
        this.f10185u = new StatisticsType[towerTypeArr2.length];
        this.f10186v = new String[towerTypeArr2.length];
        this.f10187w = new String[towerTypeArr2.length];
        this.f10188x = new String[towerTypeArr2.length];
        this.f10189y = new GameValueType[towerTypeArr2.length];
        this.f10190z = new GameValueType[towerTypeArr2.length];
        this.f10169A = new GameValueType[towerTypeArr2.length];
        this.f10170B = new GameValueType[towerTypeArr2.length];
        this.f10171C = new GameValueType[towerTypeArr2.length];
        this.f10172D = new GameValueType[towerTypeArr2.length];
        this.f10173E = new GameValueType[towerTypeArr2.length];
        this.f10175G = new GameValueType[towerTypeArr2.length];
        this.f10174F = new Factories();
        this.highlightParticles = new ParticleEffectPool[towerTypeArr2.length];
        for (Tower.AimStrategy aimStrategy : aimStrategyArr) {
            this.f10177b[aimStrategy.ordinal()] = "aim_strategy_" + aimStrategy.name();
        }
        this.f10178d[Tower.AimStrategy.FIRST.ordinal()] = "icon-target-first";
        this.f10178d[Tower.AimStrategy.LAST.ordinal()] = "icon-target-last";
        this.f10178d[Tower.AimStrategy.STRONGEST.ordinal()] = "icon-target-strong";
        this.f10178d[Tower.AimStrategy.WEAKEST.ordinal()] = "icon-target-weak";
        this.f10178d[Tower.AimStrategy.NEAREST.ordinal()] = "icon-target-near";
        this.f10178d[Tower.AimStrategy.RANDOM.ordinal()] = "icon-target-random";
        for (TowerType towerType : TowerType.values) {
            String str = this.SHORT_TOWER_ALIASES.get(towerType);
            this.f10180p[towerType.ordinal()] = StatisticsType.valueOf("TMS_" + str);
            this.f10181q[towerType.ordinal()] = StatisticsType.valueOf("TDD_" + str);
            this.f10182r[towerType.ordinal()] = StatisticsType.valueOf("TB_" + str);
            this.f10183s[towerType.ordinal()] = StatisticsType.valueOf("TS_" + str);
            this.f10184t[towerType.ordinal()] = StatisticsType.valueOf("TU_" + str);
            this.f10185u[towerType.ordinal()] = StatisticsType.valueOf("TEK_" + str);
            this.f10186v[towerType.ordinal()] = "tower_name_" + towerType.name();
            this.f10187w[towerType.ordinal()] = "tower_description_" + towerType.name();
            this.f10188x[towerType.ordinal()] = "tower_unique_stat_description_" + towerType.name();
            this.f10189y[towerType.ordinal()] = GameValueType.valueOf("TOWER_" + towerType.name() + "_UPGRADE_PRICE");
            this.f10190z[towerType.ordinal()] = GameValueType.valueOf("TOWER_" + towerType.name() + "_PRICE");
            this.f10169A[towerType.ordinal()] = GameValueType.valueOf("TOWER_" + towerType.name() + "_MAX_EXP_LEVEL");
            this.f10170B[towerType.ordinal()] = GameValueType.valueOf("TOWER_" + towerType.name() + "_MAX_UPGRADE_LEVEL");
            this.f10171C[towerType.ordinal()] = GameValueType.valueOf("TOWER_" + towerType.name() + "_EXPERIENCE_GENERATION");
            this.f10172D[towerType.ordinal()] = GameValueType.valueOf("TOWER_" + towerType.name() + "_EXPERIENCE_MULTIPLIER");
            this.f10173E[towerType.ordinal()] = GameValueType.valueOf("TOWER_TYPE_" + towerType.name());
            this.f10175G[towerType.ordinal()] = GameValueType.valueOf("TOWER_" + towerType.name() + "_STARTING_LEVEL");
        }
        Tower.Factory[] factoryArr = this.f10176a;
        int ordinal = TowerType.BASIC.ordinal();
        Factories factories = this.f10174F;
        BasicTower.BasicTowerFactory basicTowerFactory = new BasicTower.BasicTowerFactory();
        factories.BASIC = basicTowerFactory;
        factoryArr[ordinal] = basicTowerFactory;
        Tower.Factory[] factoryArr2 = this.f10176a;
        int ordinal2 = TowerType.AIR.ordinal();
        Factories factories2 = this.f10174F;
        AirTower.AirTowerFactory airTowerFactory = new AirTower.AirTowerFactory();
        factories2.AIR = airTowerFactory;
        factoryArr2[ordinal2] = airTowerFactory;
        Tower.Factory[] factoryArr3 = this.f10176a;
        int ordinal3 = TowerType.BLAST.ordinal();
        Factories factories3 = this.f10174F;
        BlastTower.BlastTowerFactory blastTowerFactory = new BlastTower.BlastTowerFactory();
        factories3.BLAST = blastTowerFactory;
        factoryArr3[ordinal3] = blastTowerFactory;
        Tower.Factory[] factoryArr4 = this.f10176a;
        int ordinal4 = TowerType.CANNON.ordinal();
        Factories factories4 = this.f10174F;
        CannonTower.CannonTowerFactory cannonTowerFactory = new CannonTower.CannonTowerFactory();
        factories4.CANNON = cannonTowerFactory;
        factoryArr4[ordinal4] = cannonTowerFactory;
        Tower.Factory[] factoryArr5 = this.f10176a;
        int ordinal5 = TowerType.FREEZING.ordinal();
        Factories factories5 = this.f10174F;
        FreezingTower.FreezingTowerFactory freezingTowerFactory = new FreezingTower.FreezingTowerFactory();
        factories5.FREEZING = freezingTowerFactory;
        factoryArr5[ordinal5] = freezingTowerFactory;
        Tower.Factory[] factoryArr6 = this.f10176a;
        int ordinal6 = TowerType.MINIGUN.ordinal();
        Factories factories6 = this.f10174F;
        MinigunTower.MinigunTowerFactory minigunTowerFactory = new MinigunTower.MinigunTowerFactory();
        factories6.MINIGUN = minigunTowerFactory;
        factoryArr6[ordinal6] = minigunTowerFactory;
        Tower.Factory[] factoryArr7 = this.f10176a;
        int ordinal7 = TowerType.MISSILE.ordinal();
        Factories factories7 = this.f10174F;
        MissileTower.MissileTowerFactory missileTowerFactory = new MissileTower.MissileTowerFactory();
        factories7.MISSILE = missileTowerFactory;
        factoryArr7[ordinal7] = missileTowerFactory;
        Tower.Factory[] factoryArr8 = this.f10176a;
        int ordinal8 = TowerType.MULTISHOT.ordinal();
        Factories factories8 = this.f10174F;
        MultishotTower.MultishotTowerFactory multishotTowerFactory = new MultishotTower.MultishotTowerFactory();
        factories8.MULTISHOT = multishotTowerFactory;
        factoryArr8[ordinal8] = multishotTowerFactory;
        Tower.Factory[] factoryArr9 = this.f10176a;
        int ordinal9 = TowerType.SNIPER.ordinal();
        Factories factories9 = this.f10174F;
        SniperTower.SniperTowerFactory sniperTowerFactory = new SniperTower.SniperTowerFactory();
        factories9.SNIPER = sniperTowerFactory;
        factoryArr9[ordinal9] = sniperTowerFactory;
        Tower.Factory[] factoryArr10 = this.f10176a;
        int ordinal10 = TowerType.SPLASH.ordinal();
        Factories factories10 = this.f10174F;
        SplashTower.SplashTowerFactory splashTowerFactory = new SplashTower.SplashTowerFactory();
        factories10.SPLASH = splashTowerFactory;
        factoryArr10[ordinal10] = splashTowerFactory;
        Tower.Factory[] factoryArr11 = this.f10176a;
        int ordinal11 = TowerType.TESLA.ordinal();
        Factories factories11 = this.f10174F;
        TeslaTower.TeslaTowerFactory teslaTowerFactory = new TeslaTower.TeslaTowerFactory();
        factories11.TESLA = teslaTowerFactory;
        factoryArr11[ordinal11] = teslaTowerFactory;
        Tower.Factory[] factoryArr12 = this.f10176a;
        int ordinal12 = TowerType.VENOM.ordinal();
        Factories factories12 = this.f10174F;
        VenomTower.VenomTowerFactory venomTowerFactory = new VenomTower.VenomTowerFactory();
        factories12.VENOM = venomTowerFactory;
        factoryArr12[ordinal12] = venomTowerFactory;
        Tower.Factory[] factoryArr13 = this.f10176a;
        int ordinal13 = TowerType.FLAMETHROWER.ordinal();
        Factories factories13 = this.f10174F;
        FlamethrowerTower.FlamethrowerTowerFactory flamethrowerTowerFactory = new FlamethrowerTower.FlamethrowerTowerFactory();
        factories13.FLAMETHROWER = flamethrowerTowerFactory;
        factoryArr13[ordinal13] = flamethrowerTowerFactory;
        Tower.Factory[] factoryArr14 = this.f10176a;
        int ordinal14 = TowerType.LASER.ordinal();
        Factories factories14 = this.f10174F;
        LaserTower.LaserTowerFactory laserTowerFactory = new LaserTower.LaserTowerFactory();
        factories14.LASER = laserTowerFactory;
        factoryArr14[ordinal14] = laserTowerFactory;
        Tower.Factory[] factoryArr15 = this.f10176a;
        int ordinal15 = TowerType.GAUSS.ordinal();
        Factories factories15 = this.f10174F;
        GaussTower.GaussTowerFactory gaussTowerFactory = new GaussTower.GaussTowerFactory();
        factories15.GAUSS = gaussTowerFactory;
        factoryArr15[ordinal15] = gaussTowerFactory;
        Tower.Factory[] factoryArr16 = this.f10176a;
        int ordinal16 = TowerType.CRUSHER.ordinal();
        Factories factories16 = this.f10174F;
        CrusherTower.CrusherTowerFactory crusherTowerFactory = new CrusherTower.CrusherTowerFactory();
        factories16.CRUSHER = crusherTowerFactory;
        factoryArr16[ordinal16] = crusherTowerFactory;
        for (TowerType towerType2 : TowerType.values) {
            if (this.f10176a[towerType2.ordinal()] == null) {
                throw new RuntimeException("Not all tower factories were created");
            }
        }
        JsonValue parse = new JsonReader().parse(Gdx.files.internal("res/tower-enemy-attack-matrix.json"));
        Array array = new Array();
        Iterator<JsonValue> iterator2 = parse.get("columns").iterator2();
        while (iterator2.hasNext()) {
            array.add(TowerType.valueOf(iterator2.next().asString()));
        }
        Iterator<JsonValue> iterator22 = parse.get(ByteBuddy.EnumerationImplementation.ENUM_VALUES_METHOD_NAME).iterator2();
        while (iterator22.hasNext()) {
            JsonValue next = iterator22.next();
            EnemyType valueOf = EnemyType.valueOf(next.name);
            Iterator<JsonValue> iterator23 = next.iterator2();
            int i = 0;
            while (iterator23.hasNext()) {
                this.canTowerAttackEnemy[valueOf.ordinal()][((TowerType) array.get(i)).ordinal()] = iterator23.next().asBoolean();
                i++;
            }
        }
        JsonValue parse2 = new JsonReader().parse(Gdx.files.internal("res/tower-enemy-damage-matrix.json"));
        Array array2 = new Array();
        Iterator<JsonValue> iterator24 = parse2.get("columns").iterator2();
        while (iterator24.hasNext()) {
            array2.add(TowerType.valueOf(iterator24.next().asString()));
        }
        Iterator<JsonValue> iterator25 = parse2.get(ByteBuddy.EnumerationImplementation.ENUM_VALUES_METHOD_NAME).iterator2();
        while (iterator25.hasNext()) {
            JsonValue next2 = iterator25.next();
            EnemyType valueOf2 = EnemyType.valueOf(next2.name);
            Iterator<JsonValue> iterator26 = next2.iterator2();
            int i2 = 0;
            while (iterator26.hasNext()) {
                this.towerEnemyDamageMultiplier[valueOf2.ordinal()][((TowerType) array2.get(i2)).ordinal()] = iterator26.next().asFloat();
                i2++;
            }
        }
    }

    public String getDescription(TowerType towerType) {
        return Game.f8589i.localeManager.i18n.get(this.f10187w[towerType.ordinal()]);
    }

    public String getTitle(TowerType towerType) {
        return Game.f8589i.localeManager.i18n.get(this.f10186v[towerType.ordinal()]);
    }

    public String getUniqueStatDescription(TowerType towerType) {
        return Game.f8589i.localeManager.i18n.get(this.f10188x[towerType.ordinal()]);
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        TowerType[] towerTypeArr;
        reloadTowerStats();
        for (Tower.Factory factory : this.f10176a) {
            factory.setup();
        }
        if (Game.f8589i.assetManager != null) {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/ability-available-mark.prt"), Game.f8589i.assetManager.getTextureRegion("upgrade-arrow-up").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.abilityAvailableParticleEffectPool = new ParticleEffectPool(particleEffect, 16, 1024);
            ParticleEffect particleEffect2 = new ParticleEffect();
            particleEffect2.load(Gdx.files.internal("particles/upgrade.prt"), Game.f8589i.assetManager.getTextureRegion("icon-triangle-top").getAtlas());
            particleEffect2.setEmittersCleanUpBlendFunction(false);
            this.upgradeParticles = new ParticleEffectPool(particleEffect2, 8, 512);
            ParticleEffect particleEffect3 = new ParticleEffect();
            particleEffect3.load(Gdx.files.internal("particles/lvl-up.prt"), Game.f8589i.assetManager.getTextureRegion("icon-lvl-plus").getAtlas());
            particleEffect3.setEmittersCleanUpBlendFunction(false);
            this.lvlUpParticles = new ParticleEffectPool(particleEffect3, 8, 512);
            for (TowerType towerType : TowerType.values) {
                ParticleEffect particleEffect4 = new ParticleEffect();
                particleEffect4.load(Gdx.files.internal("particles/building-highlight.prt"), Game.f8589i.assetManager.getTextureRegion("tower-basic-base").getAtlas());
                particleEffect4.setEmittersCleanUpBlendFunction(false);
                Array<TextureRegionConfig> baseTextures = Game.f8589i.towerManager.getFactory(towerType).getBaseTextures();
                Array<Sprite> array = new Array<>(Sprite.class);
                array.add(baseTextures.first().createSprite(128.0f));
                particleEffect4.getEmitters().first().setSprites(array);
                particleEffect4.getEmitters().first().scaleSize(Math.max(baseTextures.first().width, baseTextures.first().height));
                this.highlightParticles[towerType.ordinal()] = new ParticleEffectPool(particleEffect4, 8, 128);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class TowerStatsConfig {

        /* renamed from: a */
        public int[] f10193a;

        /* renamed from: b */
        public float f10194b;

        /* renamed from: c */
        public IntMap<TowerStatConfig> f10195c;

        /* renamed from: d */
        public TowerStatType[] f10196d;

        /* renamed from: e */
        public TowerAbilityConfig[] f10197e;

        /* renamed from: f */
        public ObjectMap<String, Array<TextureRegionConfig>> f10198f;

        public TowerStatsConfig() {
            this.f10193a = new int[10];
            this.f10195c = new IntMap<>();
            this.f10198f = new ObjectMap<>();
        }

        public /* synthetic */ TowerStatsConfig(C18861 c18861) {
            this();
        }
    }
}
