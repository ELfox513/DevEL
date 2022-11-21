package com.prineside.tdi2.managers;

import com.prineside.tdi2.Ability;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.abilities.BallLightningAbility;
import com.prineside.tdi2.abilities.BlizzardAbility;
import com.prineside.tdi2.abilities.BulletWallAbility;
import com.prineside.tdi2.abilities.FireballAbility;
import com.prineside.tdi2.abilities.FirestormAbility;
import com.prineside.tdi2.abilities.LoicAbility;
import com.prineside.tdi2.abilities.MagnetAbility;
import com.prineside.tdi2.abilities.NukeAbility;
import com.prineside.tdi2.abilities.OverloadAbility;
import com.prineside.tdi2.abilities.SmokeBombAbility;
import com.prineside.tdi2.abilities.ThunderAbility;
import com.prineside.tdi2.abilities.WindstormAbility;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ResourceType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class AbilityManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f9538F = new Factories();

    /* renamed from: a */
    public final Ability.Factory[] f9539a;

    /* renamed from: b */
    public final GameValueType[] f9540b;

    /* renamed from: d */
    public final GameValueType[] f9541d;

    /* loaded from: classes2.dex */
    public static class Factories {
        public BallLightningAbility.BallLightningAbilityFactory BALL_LIGHTNING;
        public BlizzardAbility.BlizzardAbilityFactory BLIZZARD;
        public BulletWallAbility.BulletWallAbilityFactory BULLET_WALL;
        public FireballAbility.FireballAbilityFactory FIREBALL;
        public FirestormAbility.FirestormAbilityFactory FIRESTORM;
        public LoicAbility.LoicAbilityFactory LOIC;
        public MagnetAbility.MagnetAbilityFactory MAGNET;
        public NukeAbility.NukeAbilityFactory NUKE;
        public OverloadAbility.OverloadAbilityFactory OVERLOAD;
        public SmokeBombAbility.SmokeBombAbilityFactory SMOKE_BOMB;
        public ThunderAbility.ThunderAbilityFactory THUNDER;
        public WindstormAbility.WindstormAbilityFactory WINDSTORM;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<AbilityManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public AbilityManager read() {
            return Game.f8589i.abilityManager;
        }
    }

    public GameValueType getEnergyCostGameValueType(AbilityType abilityType) {
        return this.f9541d[abilityType.ordinal()];
    }

    public Ability.Factory<? extends Ability> getFactory(AbilityType abilityType) {
        return this.f9539a[abilityType.ordinal()];
    }

    public GameValueType getMaxPerGameGameValueType(AbilityType abilityType) {
        return this.f9540b[abilityType.ordinal()];
    }

    public boolean isAnyAbilityOpened() {
        for (AbilityType abilityType : AbilityType.values) {
            if (Game.f8589i.gameValueManager.getSnapshot().getIntValue(getMaxPerGameGameValueType(abilityType)) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        for (Ability.Factory factory : this.f9539a) {
            factory.setup();
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void test() {
        AbilityType[] abilityTypeArr;
        for (AbilityType abilityType : AbilityType.values) {
            Ability.Factory<? extends Ability> factory = getFactory(abilityType);
            if (factory.abilityType == abilityType) {
                if (factory.create() != null) {
                    if (factory.getColor() != null) {
                        if (factory.getDarkerColor() != null) {
                            if (factory.getTitle() != null && factory.getTitle().length() != 0) {
                                if (factory.getDescription(Game.f8589i.gameValueManager.getSnapshot()) != null && factory.getDescription(Game.f8589i.gameValueManager.getSnapshot()).length() != 0) {
                                    if (factory.getIconDrawable() != null) {
                                        for (int i = 0; i < 20; i++) {
                                            factory.getPriceInGreenPapers(i);
                                            for (ResourceType resourceType : ResourceType.values) {
                                                factory.getPriceInResources(resourceType, i);
                                            }
                                        }
                                    } else {
                                        throw new IllegalStateException(abilityType.name() + " factory.getIconDrawable() is null");
                                    }
                                } else {
                                    throw new IllegalStateException(abilityType.name() + " factory.getDescription() is null or empty");
                                }
                            } else {
                                throw new IllegalStateException(abilityType.name() + " factory.getTitle() is null or empty");
                            }
                        } else {
                            throw new IllegalStateException(abilityType.name() + " factory.getDarkerColor() is null");
                        }
                    } else {
                        throw new IllegalStateException(abilityType.name() + " factory.getColor() is null");
                    }
                } else {
                    throw new IllegalStateException(abilityType.name() + " factory.create() is null");
                }
            } else {
                throw new IllegalStateException(abilityType.name() + " factory.abilityType wrong ability type: " + String.valueOf(factory.abilityType));
            }
        }
    }

    public AbilityManager() {
        AbilityType[] abilityTypeArr = AbilityType.values;
        this.f9539a = new Ability.Factory[abilityTypeArr.length];
        this.f9540b = new GameValueType[abilityTypeArr.length];
        this.f9541d = new GameValueType[abilityTypeArr.length];
        for (AbilityType abilityType : abilityTypeArr) {
            this.f9540b[abilityType.ordinal()] = GameValueType.valueOf("ABILITY_" + abilityType.name() + "_MAX_PER_GAME");
            this.f9541d[abilityType.ordinal()] = GameValueType.valueOf("ABILITY_" + abilityType.name() + "_ENERGY_COST");
        }
        Ability.Factory[] factoryArr = this.f9539a;
        AbilityType abilityType2 = AbilityType.FIREBALL;
        int ordinal = abilityType2.ordinal();
        Factories factories = this.f9538F;
        FireballAbility.FireballAbilityFactory fireballAbilityFactory = new FireballAbility.FireballAbilityFactory(abilityType2);
        factories.FIREBALL = fireballAbilityFactory;
        factoryArr[ordinal] = fireballAbilityFactory;
        Ability.Factory[] factoryArr2 = this.f9539a;
        AbilityType abilityType3 = AbilityType.BLIZZARD;
        int ordinal2 = abilityType3.ordinal();
        Factories factories2 = this.f9538F;
        BlizzardAbility.BlizzardAbilityFactory blizzardAbilityFactory = new BlizzardAbility.BlizzardAbilityFactory(abilityType3);
        factories2.BLIZZARD = blizzardAbilityFactory;
        factoryArr2[ordinal2] = blizzardAbilityFactory;
        Ability.Factory[] factoryArr3 = this.f9539a;
        AbilityType abilityType4 = AbilityType.WINDSTORM;
        int ordinal3 = abilityType4.ordinal();
        Factories factories3 = this.f9538F;
        WindstormAbility.WindstormAbilityFactory windstormAbilityFactory = new WindstormAbility.WindstormAbilityFactory(abilityType4);
        factories3.WINDSTORM = windstormAbilityFactory;
        factoryArr3[ordinal3] = windstormAbilityFactory;
        Ability.Factory[] factoryArr4 = this.f9539a;
        AbilityType abilityType5 = AbilityType.THUNDER;
        int ordinal4 = abilityType5.ordinal();
        Factories factories4 = this.f9538F;
        ThunderAbility.ThunderAbilityFactory thunderAbilityFactory = new ThunderAbility.ThunderAbilityFactory(abilityType5);
        factories4.THUNDER = thunderAbilityFactory;
        factoryArr4[ordinal4] = thunderAbilityFactory;
        Ability.Factory[] factoryArr5 = this.f9539a;
        AbilityType abilityType6 = AbilityType.SMOKE_BOMB;
        int ordinal5 = abilityType6.ordinal();
        Factories factories5 = this.f9538F;
        SmokeBombAbility.SmokeBombAbilityFactory smokeBombAbilityFactory = new SmokeBombAbility.SmokeBombAbilityFactory(abilityType6);
        factories5.SMOKE_BOMB = smokeBombAbilityFactory;
        factoryArr5[ordinal5] = smokeBombAbilityFactory;
        Ability.Factory[] factoryArr6 = this.f9539a;
        AbilityType abilityType7 = AbilityType.FIRESTORM;
        int ordinal6 = abilityType7.ordinal();
        Factories factories6 = this.f9538F;
        FirestormAbility.FirestormAbilityFactory firestormAbilityFactory = new FirestormAbility.FirestormAbilityFactory(abilityType7);
        factories6.FIRESTORM = firestormAbilityFactory;
        factoryArr6[ordinal6] = firestormAbilityFactory;
        Ability.Factory[] factoryArr7 = this.f9539a;
        AbilityType abilityType8 = AbilityType.MAGNET;
        int ordinal7 = abilityType8.ordinal();
        Factories factories7 = this.f9538F;
        MagnetAbility.MagnetAbilityFactory magnetAbilityFactory = new MagnetAbility.MagnetAbilityFactory(abilityType8);
        factories7.MAGNET = magnetAbilityFactory;
        factoryArr7[ordinal7] = magnetAbilityFactory;
        Ability.Factory[] factoryArr8 = this.f9539a;
        AbilityType abilityType9 = AbilityType.BULLET_WALL;
        int ordinal8 = abilityType9.ordinal();
        Factories factories8 = this.f9538F;
        BulletWallAbility.BulletWallAbilityFactory bulletWallAbilityFactory = new BulletWallAbility.BulletWallAbilityFactory(abilityType9);
        factories8.BULLET_WALL = bulletWallAbilityFactory;
        factoryArr8[ordinal8] = bulletWallAbilityFactory;
        Ability.Factory[] factoryArr9 = this.f9539a;
        AbilityType abilityType10 = AbilityType.BALL_LIGHTNING;
        int ordinal9 = abilityType10.ordinal();
        Factories factories9 = this.f9538F;
        BallLightningAbility.BallLightningAbilityFactory ballLightningAbilityFactory = new BallLightningAbility.BallLightningAbilityFactory(abilityType10);
        factories9.BALL_LIGHTNING = ballLightningAbilityFactory;
        factoryArr9[ordinal9] = ballLightningAbilityFactory;
        Ability.Factory[] factoryArr10 = this.f9539a;
        AbilityType abilityType11 = AbilityType.LOIC;
        int ordinal10 = abilityType11.ordinal();
        Factories factories10 = this.f9538F;
        LoicAbility.LoicAbilityFactory loicAbilityFactory = new LoicAbility.LoicAbilityFactory(abilityType11);
        factories10.LOIC = loicAbilityFactory;
        factoryArr10[ordinal10] = loicAbilityFactory;
        Ability.Factory[] factoryArr11 = this.f9539a;
        AbilityType abilityType12 = AbilityType.NUKE;
        int ordinal11 = abilityType12.ordinal();
        Factories factories11 = this.f9538F;
        NukeAbility.NukeAbilityFactory nukeAbilityFactory = new NukeAbility.NukeAbilityFactory(abilityType12);
        factories11.NUKE = nukeAbilityFactory;
        factoryArr11[ordinal11] = nukeAbilityFactory;
        Ability.Factory[] factoryArr12 = this.f9539a;
        AbilityType abilityType13 = AbilityType.OVERLOAD;
        int ordinal12 = abilityType13.ordinal();
        Factories factories12 = this.f9538F;
        OverloadAbility.OverloadAbilityFactory overloadAbilityFactory = new OverloadAbility.OverloadAbilityFactory(abilityType13);
        factories12.OVERLOAD = overloadAbilityFactory;
        factoryArr12[ordinal12] = overloadAbilityFactory;
        for (AbilityType abilityType14 : AbilityType.values) {
            if (this.f9539a[abilityType14.ordinal()] == null) {
                throw new RuntimeException("Not all ability factories were created");
            }
        }
    }
}
