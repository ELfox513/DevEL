package com.prineside.tdi2.managers;

import com.badlogic.gdx.utils.JsonValue;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.Modifier;
import com.prineside.tdi2.enums.GameValueType;
import com.prineside.tdi2.enums.ModifierType;
import com.prineside.tdi2.modifiers.AttackSpeedModifier;
import com.prineside.tdi2.modifiers.BalanceModifier;
import com.prineside.tdi2.modifiers.BountyModifier;
import com.prineside.tdi2.modifiers.DamageModifier;
import com.prineside.tdi2.modifiers.ExperienceModifier;
import com.prineside.tdi2.modifiers.MiningSpeedModifier;
import com.prineside.tdi2.modifiers.PowerModifier;
import com.prineside.tdi2.modifiers.SearchModifier;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class ModifierManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f9900F;

    /* renamed from: a */
    public final Modifier.Factory[] f9901a;

    /* renamed from: b */
    public final GameValueType[] f9902b;

    /* renamed from: d */
    public final String[] f9903d;

    /* renamed from: k */
    public final String[] f9904k;

    /* loaded from: classes2.dex */
    public static class Factories {
        public AttackSpeedModifier.AttackSpeedModifierFactory ATTACK_SPEED;
        public BalanceModifier.BalanceModifierFactory BALANCE;
        public BountyModifier.BountyModifierFactory BOUNTY;
        public DamageModifier.DamageModifierFactory DAMAGE;
        public ExperienceModifier.ExperienceModifierFactory EXPERIENCE;
        public MiningSpeedModifier.MiningSpeedModifierFactory MINING_SPEED;
        public PowerModifier.PowerModifierFactory POWER;
        public SearchModifier.SearchModifierFactory SEARCH;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<ModifierManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public ModifierManager read() {
            return Game.f8589i.modifierManager;
        }
    }

    public GameValueType getCountGameValue(ModifierType modifierType) {
        return this.f9902b[modifierType.ordinal()];
    }

    public String getDescriptionAlias(ModifierType modifierType) {
        return this.f9904k[modifierType.ordinal()];
    }

    public Modifier.Factory<? extends Modifier> getFactory(ModifierType modifierType) {
        return this.f9901a[modifierType.ordinal()];
    }

    public String getTitleAlias(ModifierType modifierType) {
        return this.f9903d[modifierType.ordinal()];
    }

    public Modifier fromJson(JsonValue jsonValue) {
        Modifier create = getFactory(ModifierType.valueOf(jsonValue.getString("type"))).create();
        create.loadFromJson(jsonValue);
        return create;
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        for (ModifierType modifierType : ModifierType.values) {
            getFactory(modifierType).setup();
        }
    }

    public ModifierManager() {
        ModifierType[] modifierTypeArr;
        ModifierType[] modifierTypeArr2 = ModifierType.values;
        Modifier.Factory[] factoryArr = new Modifier.Factory[modifierTypeArr2.length];
        this.f9901a = factoryArr;
        this.f9902b = new GameValueType[modifierTypeArr2.length];
        this.f9903d = new String[modifierTypeArr2.length];
        this.f9904k = new String[modifierTypeArr2.length];
        Factories factories = new Factories();
        this.f9900F = factories;
        int ordinal = ModifierType.BALANCE.ordinal();
        BalanceModifier.BalanceModifierFactory balanceModifierFactory = new BalanceModifier.BalanceModifierFactory();
        factories.BALANCE = balanceModifierFactory;
        factoryArr[ordinal] = balanceModifierFactory;
        int ordinal2 = ModifierType.POWER.ordinal();
        PowerModifier.PowerModifierFactory powerModifierFactory = new PowerModifier.PowerModifierFactory();
        factories.POWER = powerModifierFactory;
        factoryArr[ordinal2] = powerModifierFactory;
        int ordinal3 = ModifierType.SEARCH.ordinal();
        SearchModifier.SearchModifierFactory searchModifierFactory = new SearchModifier.SearchModifierFactory();
        factories.SEARCH = searchModifierFactory;
        factoryArr[ordinal3] = searchModifierFactory;
        int ordinal4 = ModifierType.DAMAGE.ordinal();
        DamageModifier.DamageModifierFactory damageModifierFactory = new DamageModifier.DamageModifierFactory();
        factories.DAMAGE = damageModifierFactory;
        factoryArr[ordinal4] = damageModifierFactory;
        int ordinal5 = ModifierType.ATTACK_SPEED.ordinal();
        AttackSpeedModifier.AttackSpeedModifierFactory attackSpeedModifierFactory = new AttackSpeedModifier.AttackSpeedModifierFactory();
        factories.ATTACK_SPEED = attackSpeedModifierFactory;
        factoryArr[ordinal5] = attackSpeedModifierFactory;
        int ordinal6 = ModifierType.MINING_SPEED.ordinal();
        MiningSpeedModifier.MiningSpeedModifierFactory miningSpeedModifierFactory = new MiningSpeedModifier.MiningSpeedModifierFactory();
        factories.MINING_SPEED = miningSpeedModifierFactory;
        factoryArr[ordinal6] = miningSpeedModifierFactory;
        int ordinal7 = ModifierType.EXPERIENCE.ordinal();
        ExperienceModifier.ExperienceModifierFactory experienceModifierFactory = new ExperienceModifier.ExperienceModifierFactory();
        factories.EXPERIENCE = experienceModifierFactory;
        factoryArr[ordinal7] = experienceModifierFactory;
        int ordinal8 = ModifierType.BOUNTY.ordinal();
        BountyModifier.BountyModifierFactory bountyModifierFactory = new BountyModifier.BountyModifierFactory();
        factories.BOUNTY = bountyModifierFactory;
        factoryArr[ordinal8] = bountyModifierFactory;
        for (ModifierType modifierType : ModifierType.values) {
            if (this.f9901a[modifierType.ordinal()] == null) {
                throw new RuntimeException("Not all modifier factories were created");
            }
        }
        for (ModifierType modifierType2 : ModifierType.values) {
            this.f9903d[modifierType2.ordinal()] = "modifier_name_" + modifierType2.name();
            this.f9904k[modifierType2.ordinal()] = "modifier_description_" + modifierType2.name();
            this.f9902b[modifierType2.ordinal()] = GameValueType.valueOf("MODIFIER_" + modifierType2.name() + "_COUNT");
        }
    }
}
