package com.prineside.tdi2.managers;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.ObjectSet;
import com.badlogic.gdx.utils.Pool;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.Config;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.enemies.ArmoredEnemy;
import com.prineside.tdi2.enemies.BossEnemy;
import com.prineside.tdi2.enemies.FastEnemy;
import com.prineside.tdi2.enemies.FighterEnemy;
import com.prineside.tdi2.enemies.GenericEnemy;
import com.prineside.tdi2.enemies.HealerEnemy;
import com.prineside.tdi2.enemies.HeliEnemy;
import com.prineside.tdi2.enemies.IcyEnemy;
import com.prineside.tdi2.enemies.JetEnemy;
import com.prineside.tdi2.enemies.LightEnemy;
import com.prineside.tdi2.enemies.RegularEnemy;
import com.prineside.tdi2.enemies.StrongEnemy;
import com.prineside.tdi2.enemies.ToxicEnemy;
import com.prineside.tdi2.enemies.bosses.BrootEnemy;
import com.prineside.tdi2.enemies.bosses.ConstructorBossEnemy;
import com.prineside.tdi2.enemies.bosses.MetaphorBossCreepEnemy;
import com.prineside.tdi2.enemies.bosses.MetaphorBossEnemy;
import com.prineside.tdi2.enemies.bosses.MobchainBossBodyEnemy;
import com.prineside.tdi2.enemies.bosses.MobchainBossCreepEnemy;
import com.prineside.tdi2.enemies.bosses.MobchainBossHeadEnemy;
import com.prineside.tdi2.enemies.bosses.SnakeBossBodyEnemy;
import com.prineside.tdi2.enemies.bosses.SnakeBossHeadEnemy;
import com.prineside.tdi2.enemies.bosses.SnakeBossTailEnemy;
import com.prineside.tdi2.enums.BossType;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.managers.PreferencesManager;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class EnemyManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f9783F;

    /* renamed from: a */
    public final Enemy.Factory[] f9784a;

    /* renamed from: b */
    public final TextureRegion[] f9785b;

    /* renamed from: d */
    public final TextureRegion[] f9786d;
    public Pool<DelayedRemovalArray[]> enemyBuffArraysPool;

    /* renamed from: k */
    public final ObjectSet<EnemyType> f9787k;

    /* renamed from: com.prineside.tdi2.managers.EnemyManager$3 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C17823 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9790a;

        static {
            int[] iArr = new int[BossType.values().length];
            f9790a = iArr;
            try {
                iArr[BossType.BROOT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9790a[BossType.SNAKE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9790a[BossType.METAPHOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9790a[BossType.MOBCHAIN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f9790a[BossType.CONSTRUCTOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Factories {
        public ArmoredEnemy.ArmoredEnemyFactory ARMORED;
        public BossEnemy.BossEnemyFactory BOSS;
        public BrootEnemy.BrootEnemyFactory BROOT_BOSS;
        public ConstructorBossEnemy.ConstructorBossBodyEnemyFactory CONSTRUCTOR_BOSS;
        public FastEnemy.FastEnemyFactory FAST;
        public FighterEnemy.FighterEnemyFactory FIGHTER;
        public GenericEnemy.GenericEnemyFactory GENERIC;
        public HealerEnemy.HealerEnemyFactory HEALER;
        public HeliEnemy.HeliEnemyFactory HELI;
        public IcyEnemy.IcyEnemyFactory ICY;
        public JetEnemy.JetEnemyFactory JET;
        public LightEnemy.LightEnemyFactory LIGHT;
        public MetaphorBossEnemy.MetaphorBossEnemyFactory METAPHOR_BOSS;
        public MetaphorBossCreepEnemy.MetaphorBossCreepEnemyFactory METAPHOR_BOSS_CREEP;
        public MobchainBossBodyEnemy.MobchainBossBodyEnemyFactory MOBCHAIN_BOSS_BODY;
        public MobchainBossCreepEnemy.MobchainBossCreepEnemyFactory MOBCHAIN_BOSS_CREEP;
        public MobchainBossHeadEnemy.MobchainBossHeadEnemyFactory MOBCHAIN_BOSS_HEAD;
        public RegularEnemy.RegularEnemyFactory REGULAR;
        public SnakeBossBodyEnemy.SnakeBossBodyEnemyFactory SNAKE_BOSS_BODY;
        public SnakeBossHeadEnemy.SnakeBossHeadEnemyFactory SNAKE_BOSS_HEAD;
        public SnakeBossTailEnemy.SnakeBossTailEnemyFactory SNAKE_BOSS_TAIL;
        public StrongEnemy.StrongEnemyFactory STRONG;
        public ToxicEnemy.ToxicEnemyFactory TOXIC;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<EnemyManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public EnemyManager read() {
            return Game.f8589i.enemyManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public TextureRegion getDamageTypeIcon(DamageType damageType) {
        return this.f9786d[damageType.ordinal()];
    }

    public Enemy.Factory<? extends Enemy> getFactory(EnemyType enemyType) {
        return this.f9784a[enemyType.ordinal()];
    }

    public TextureRegion getIceOverlayTexture(int i) {
        return this.f9785b[i];
    }

    public EnemyType getMainEnemyType(EnemyType enemyType) {
        int ordinal = enemyType.ordinal();
        EnemyType enemyType2 = EnemyType.BOSS;
        return ordinal > enemyType2.ordinal() ? enemyType2 : enemyType;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
    }

    public EnemyType getBossEnemyType(BossType bossType) {
        int i = C17823.f9790a[bossType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return EnemyType.CONSTRUCTOR_BOSS;
                        }
                        throw new IllegalArgumentException("Not implemented for " + bossType.name());
                    }
                    return EnemyType.MOBCHAIN_BOSS_HEAD;
                }
                return EnemyType.METAPHOR_BOSS;
            }
            return EnemyType.SNAKE_BOSS_HEAD;
        }
        return EnemyType.BROOT_BOSS;
    }

    public void markEnemyTypeAsNotNewForPlayer(EnemyType enemyType) {
        if (!this.f9787k.contains(enemyType)) {
            this.f9787k.add(enemyType);
            StringBuilder sb = new StringBuilder();
            int i = 0;
            ObjectSet.ObjectSetIterator<EnemyType> it = this.f9787k.iterator();
            while (it.hasNext()) {
                sb.append(it.next().name());
                i++;
                if (i != this.f9787k.size) {
                    sb.append(",");
                }
            }
            if (Config.isHeadless()) {
                return;
            }
            Logger.log("typeNames", sb.toString());
            PreferencesManager.SafePreferences preferencesManager = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS);
            preferencesManager.set("enemyTypesMetWith", sb.toString());
            preferencesManager.flush();
        }
    }

    public final void reload() {
        this.f9787k.clear();
        try {
            String str = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_PROGRESS).get("enemyTypesMetWith", null);
            if (str == null) {
                str = Game.f8589i.preferencesManager.getInstance(Config.PREFERENCES_NAME_SETTINGS).get("enemyTypesMetWith", null);
            }
            if (str != null) {
                for (String str2 : str.split(",")) {
                    this.f9787k.add(EnemyType.valueOf(str2));
                }
            }
        } catch (Exception e) {
            Logger.error("EnemyManager", "Failed loading info about enemy types met with", e);
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        Game.f8589i.preferencesManager.addListener(new PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter() { // from class: com.prineside.tdi2.managers.EnemyManager.2
            @Override // com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener.PreferencesManagerListenerAdapter, com.prineside.tdi2.managers.PreferencesManager.PreferencesManagerListener
            public void reloaded() {
                EnemyManager.this.reload();
            }
        });
        reload();
        for (Enemy.Factory factory : this.f9784a) {
            factory.setup();
        }
        AssetManager assetManager = Game.f8589i.assetManager;
        if (assetManager != null) {
            this.f9785b[0] = assetManager.getTextureRegion("enemy-ice-overlay-1");
            this.f9785b[1] = Game.f8589i.assetManager.getTextureRegion("enemy-ice-overlay-2");
            this.f9786d[DamageType.BULLET.ordinal()] = Game.f8589i.assetManager.getTextureRegion("icon-bullet");
            this.f9786d[DamageType.ELECTRICITY.ordinal()] = Game.f8589i.assetManager.getTextureRegion("icon-lightning-bolt");
            this.f9786d[DamageType.EXPLOSION.ordinal()] = Game.f8589i.assetManager.getTextureRegion("icon-explosion-range");
            this.f9786d[DamageType.FIRE.ordinal()] = Game.f8589i.assetManager.getTextureRegion("icon-flame");
            this.f9786d[DamageType.LASER.ordinal()] = Game.f8589i.assetManager.getTextureRegion("icon-laser");
            this.f9786d[DamageType.POISON.ordinal()] = Game.f8589i.assetManager.getTextureRegion("icon-poison");
        }
    }

    public EnemyManager() {
        Factories factories = new Factories();
        this.f9783F = factories;
        EnemyType[] enemyTypeArr = EnemyType.values;
        Enemy.Factory[] factoryArr = new Enemy.Factory[enemyTypeArr.length];
        this.f9784a = factoryArr;
        this.f9785b = new TextureRegion[2];
        this.f9786d = new TextureRegion[DamageType.values.length];
        this.enemyBuffArraysPool = new Pool<DelayedRemovalArray[]>() { // from class: com.prineside.tdi2.managers.EnemyManager.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: d */
            public void mo21604b(DelayedRemovalArray[] delayedRemovalArrayArr) {
                for (int i = 0; i < BuffType.values.length; i++) {
                    DelayedRemovalArray delayedRemovalArray = delayedRemovalArrayArr[i];
                    if (delayedRemovalArray.size != 0) {
                        for (int i2 = 0; i2 < delayedRemovalArray.size; i2++) {
                            ((Buff) delayedRemovalArray.items[i2]).free();
                        }
                        delayedRemovalArrayArr[i].clear();
                    }
                }
            }

            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public DelayedRemovalArray[] newObject() {
                DelayedRemovalArray[] delayedRemovalArrayArr = new DelayedRemovalArray[BuffType.values.length];
                for (int i = 0; i < BuffType.values.length; i++) {
                    delayedRemovalArrayArr[i] = new DelayedRemovalArray(false, 0, BuffType.relevantClasses[i]);
                }
                return delayedRemovalArrayArr;
            }
        };
        this.f9787k = new ObjectSet<>();
        int ordinal = EnemyType.HELI.ordinal();
        HeliEnemy.HeliEnemyFactory heliEnemyFactory = new HeliEnemy.HeliEnemyFactory();
        factories.HELI = heliEnemyFactory;
        factoryArr[ordinal] = heliEnemyFactory;
        int ordinal2 = EnemyType.ARMORED.ordinal();
        ArmoredEnemy.ArmoredEnemyFactory armoredEnemyFactory = new ArmoredEnemy.ArmoredEnemyFactory();
        factories.ARMORED = armoredEnemyFactory;
        factoryArr[ordinal2] = armoredEnemyFactory;
        int ordinal3 = EnemyType.BOSS.ordinal();
        BossEnemy.BossEnemyFactory bossEnemyFactory = new BossEnemy.BossEnemyFactory();
        factories.BOSS = bossEnemyFactory;
        factoryArr[ordinal3] = bossEnemyFactory;
        int ordinal4 = EnemyType.FAST.ordinal();
        FastEnemy.FastEnemyFactory fastEnemyFactory = new FastEnemy.FastEnemyFactory();
        factories.FAST = fastEnemyFactory;
        factoryArr[ordinal4] = fastEnemyFactory;
        int ordinal5 = EnemyType.FIGHTER.ordinal();
        FighterEnemy.FighterEnemyFactory fighterEnemyFactory = new FighterEnemy.FighterEnemyFactory();
        factories.FIGHTER = fighterEnemyFactory;
        factoryArr[ordinal5] = fighterEnemyFactory;
        int ordinal6 = EnemyType.ICY.ordinal();
        IcyEnemy.IcyEnemyFactory icyEnemyFactory = new IcyEnemy.IcyEnemyFactory();
        factories.ICY = icyEnemyFactory;
        factoryArr[ordinal6] = icyEnemyFactory;
        int ordinal7 = EnemyType.JET.ordinal();
        JetEnemy.JetEnemyFactory jetEnemyFactory = new JetEnemy.JetEnemyFactory();
        factories.JET = jetEnemyFactory;
        factoryArr[ordinal7] = jetEnemyFactory;
        int ordinal8 = EnemyType.LIGHT.ordinal();
        LightEnemy.LightEnemyFactory lightEnemyFactory = new LightEnemy.LightEnemyFactory();
        factories.LIGHT = lightEnemyFactory;
        factoryArr[ordinal8] = lightEnemyFactory;
        int ordinal9 = EnemyType.REGULAR.ordinal();
        RegularEnemy.RegularEnemyFactory regularEnemyFactory = new RegularEnemy.RegularEnemyFactory();
        factories.REGULAR = regularEnemyFactory;
        factoryArr[ordinal9] = regularEnemyFactory;
        int ordinal10 = EnemyType.STRONG.ordinal();
        StrongEnemy.StrongEnemyFactory strongEnemyFactory = new StrongEnemy.StrongEnemyFactory();
        factories.STRONG = strongEnemyFactory;
        factoryArr[ordinal10] = strongEnemyFactory;
        int ordinal11 = EnemyType.TOXIC.ordinal();
        ToxicEnemy.ToxicEnemyFactory toxicEnemyFactory = new ToxicEnemy.ToxicEnemyFactory();
        factories.TOXIC = toxicEnemyFactory;
        factoryArr[ordinal11] = toxicEnemyFactory;
        int ordinal12 = EnemyType.HEALER.ordinal();
        HealerEnemy.HealerEnemyFactory healerEnemyFactory = new HealerEnemy.HealerEnemyFactory();
        factories.HEALER = healerEnemyFactory;
        factoryArr[ordinal12] = healerEnemyFactory;
        int ordinal13 = EnemyType.GENERIC.ordinal();
        GenericEnemy.GenericEnemyFactory genericEnemyFactory = new GenericEnemy.GenericEnemyFactory();
        factories.GENERIC = genericEnemyFactory;
        factoryArr[ordinal13] = genericEnemyFactory;
        int ordinal14 = EnemyType.SNAKE_BOSS_HEAD.ordinal();
        SnakeBossHeadEnemy.SnakeBossHeadEnemyFactory snakeBossHeadEnemyFactory = new SnakeBossHeadEnemy.SnakeBossHeadEnemyFactory();
        factories.SNAKE_BOSS_HEAD = snakeBossHeadEnemyFactory;
        factoryArr[ordinal14] = snakeBossHeadEnemyFactory;
        int ordinal15 = EnemyType.SNAKE_BOSS_BODY.ordinal();
        SnakeBossBodyEnemy.SnakeBossBodyEnemyFactory snakeBossBodyEnemyFactory = new SnakeBossBodyEnemy.SnakeBossBodyEnemyFactory();
        factories.SNAKE_BOSS_BODY = snakeBossBodyEnemyFactory;
        factoryArr[ordinal15] = snakeBossBodyEnemyFactory;
        int ordinal16 = EnemyType.SNAKE_BOSS_TAIL.ordinal();
        SnakeBossTailEnemy.SnakeBossTailEnemyFactory snakeBossTailEnemyFactory = new SnakeBossTailEnemy.SnakeBossTailEnemyFactory();
        factories.SNAKE_BOSS_TAIL = snakeBossTailEnemyFactory;
        factoryArr[ordinal16] = snakeBossTailEnemyFactory;
        int ordinal17 = EnemyType.BROOT_BOSS.ordinal();
        BrootEnemy.BrootEnemyFactory brootEnemyFactory = new BrootEnemy.BrootEnemyFactory();
        factories.BROOT_BOSS = brootEnemyFactory;
        factoryArr[ordinal17] = brootEnemyFactory;
        int ordinal18 = EnemyType.CONSTRUCTOR_BOSS.ordinal();
        ConstructorBossEnemy.ConstructorBossBodyEnemyFactory constructorBossBodyEnemyFactory = new ConstructorBossEnemy.ConstructorBossBodyEnemyFactory();
        factories.CONSTRUCTOR_BOSS = constructorBossBodyEnemyFactory;
        factoryArr[ordinal18] = constructorBossBodyEnemyFactory;
        int ordinal19 = EnemyType.MOBCHAIN_BOSS_BODY.ordinal();
        MobchainBossBodyEnemy.MobchainBossBodyEnemyFactory mobchainBossBodyEnemyFactory = new MobchainBossBodyEnemy.MobchainBossBodyEnemyFactory();
        factories.MOBCHAIN_BOSS_BODY = mobchainBossBodyEnemyFactory;
        factoryArr[ordinal19] = mobchainBossBodyEnemyFactory;
        int ordinal20 = EnemyType.MOBCHAIN_BOSS_HEAD.ordinal();
        MobchainBossHeadEnemy.MobchainBossHeadEnemyFactory mobchainBossHeadEnemyFactory = new MobchainBossHeadEnemy.MobchainBossHeadEnemyFactory();
        factories.MOBCHAIN_BOSS_HEAD = mobchainBossHeadEnemyFactory;
        factoryArr[ordinal20] = mobchainBossHeadEnemyFactory;
        int ordinal21 = EnemyType.MOBCHAIN_BOSS_CREEP.ordinal();
        MobchainBossCreepEnemy.MobchainBossCreepEnemyFactory mobchainBossCreepEnemyFactory = new MobchainBossCreepEnemy.MobchainBossCreepEnemyFactory();
        factories.MOBCHAIN_BOSS_CREEP = mobchainBossCreepEnemyFactory;
        factoryArr[ordinal21] = mobchainBossCreepEnemyFactory;
        int ordinal22 = EnemyType.METAPHOR_BOSS.ordinal();
        MetaphorBossEnemy.MetaphorBossEnemyFactory metaphorBossEnemyFactory = new MetaphorBossEnemy.MetaphorBossEnemyFactory();
        factories.METAPHOR_BOSS = metaphorBossEnemyFactory;
        factoryArr[ordinal22] = metaphorBossEnemyFactory;
        int ordinal23 = EnemyType.METAPHOR_BOSS_CREEP.ordinal();
        MetaphorBossCreepEnemy.MetaphorBossCreepEnemyFactory metaphorBossCreepEnemyFactory = new MetaphorBossCreepEnemy.MetaphorBossCreepEnemyFactory();
        factories.METAPHOR_BOSS_CREEP = metaphorBossCreepEnemyFactory;
        factoryArr[ordinal23] = metaphorBossCreepEnemyFactory;
        for (EnemyType enemyType : enemyTypeArr) {
            if (this.f9784a[enemyType.ordinal()] == null) {
                throw new RuntimeException("Not all enemy factories were created");
            }
        }
    }

    public boolean isEnemyTypeNewForPlayer(EnemyType enemyType) {
        if (Config.isModdingMode()) {
            return false;
        }
        return !this.f9787k.contains(enemyType);
    }
}
