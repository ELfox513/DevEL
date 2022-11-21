package com.prineside.tdi2.managers;

import com.prineside.tdi2.Buff;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Manager;
import com.prineside.tdi2.buffs.ArmorBuff;
import com.prineside.tdi2.buffs.BlizzardBuff;
import com.prineside.tdi2.buffs.BonusCoinsBuff;
import com.prineside.tdi2.buffs.BonusXpBuff;
import com.prineside.tdi2.buffs.BurnBuff;
import com.prineside.tdi2.buffs.ChainReactionBuff;
import com.prineside.tdi2.buffs.DeathExplosionBuff;
import com.prineside.tdi2.buffs.FreezingBuff;
import com.prineside.tdi2.buffs.PoisonBuff;
import com.prineside.tdi2.buffs.RegenerationBuff;
import com.prineside.tdi2.buffs.SnowballBuff;
import com.prineside.tdi2.buffs.StunBuff;
import com.prineside.tdi2.buffs.ThrowBackBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.serializers.SingletonSerializer;
import com.prineside.tdi2.utils.REGS;
@REGS(serializer = Serializer.class)
/* loaded from: classes2.dex */
public class BuffManager extends Manager.ManagerAdapter {

    /* renamed from: F */
    public final Factories f9699F;

    /* renamed from: a */
    public final Buff.Factory[] f9700a;

    /* loaded from: classes2.dex */
    public static class Factories {
        public ArmorBuff.ArmorBuffFactory ARMOR;
        public BlizzardBuff.BlizzardBuffFactory BLIZZARD;
        public BonusCoinsBuff.BonusCoinsBuffFactory BONUS_COINS;
        public BonusXpBuff.BonusXpBuffFactory BONUS_XP;
        public BurnBuff.BurnBuffFactory BURN;
        public ChainReactionBuff.ChainReactionBuffFactory CHAIN_REACTION;
        public DeathExplosionBuff.ExplosionChargeBuffFactory DEATH_EXPLOSION;
        public FreezingBuff.FreezingBuffFactory FREEZING;
        public PoisonBuff.PoisonBuffFactory POISON;
        public RegenerationBuff.RegenerationBuffFactory REGENERATION;
        public SnowballBuff.SnowballBuffFactory SNOWBALL;
        public StunBuff.StunBuffFactory STUN;
        public ThrowBackBuff.BlastThrowBackBuffFactory THROW_BACK;
    }

    /* loaded from: classes2.dex */
    public static class Serializer extends SingletonSerializer<BuffManager> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.prineside.tdi2.serializers.SingletonSerializer
        public BuffManager read() {
            return Game.f8589i.buffManager;
        }
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.badlogic.gdx.utils.Disposable
    public void dispose() {
    }

    public Buff.Factory<? extends Buff> getFactory(BuffType buffType) {
        return this.f9700a[buffType.ordinal()];
    }

    @Override // com.prineside.tdi2.Manager.ManagerAdapter, com.prineside.tdi2.Manager
    public void setup() {
        for (Buff.Factory factory : this.f9700a) {
            factory.setup();
        }
    }

    public BuffManager() {
        Factories factories = new Factories();
        this.f9699F = factories;
        BuffType[] buffTypeArr = BuffType.values;
        Buff.Factory[] factoryArr = new Buff.Factory[buffTypeArr.length];
        this.f9700a = factoryArr;
        int ordinal = BuffType.FREEZING.ordinal();
        FreezingBuff.FreezingBuffFactory freezingBuffFactory = new FreezingBuff.FreezingBuffFactory();
        factories.FREEZING = freezingBuffFactory;
        factoryArr[ordinal] = freezingBuffFactory;
        int ordinal2 = BuffType.POISON.ordinal();
        PoisonBuff.PoisonBuffFactory poisonBuffFactory = new PoisonBuff.PoisonBuffFactory();
        factories.POISON = poisonBuffFactory;
        factoryArr[ordinal2] = poisonBuffFactory;
        int ordinal3 = BuffType.BLIZZARD.ordinal();
        BlizzardBuff.BlizzardBuffFactory blizzardBuffFactory = new BlizzardBuff.BlizzardBuffFactory();
        factories.BLIZZARD = blizzardBuffFactory;
        factoryArr[ordinal3] = blizzardBuffFactory;
        int ordinal4 = BuffType.SNOWBALL.ordinal();
        SnowballBuff.SnowballBuffFactory snowballBuffFactory = new SnowballBuff.SnowballBuffFactory();
        factories.SNOWBALL = snowballBuffFactory;
        factoryArr[ordinal4] = snowballBuffFactory;
        int ordinal5 = BuffType.THROW_BACK.ordinal();
        ThrowBackBuff.BlastThrowBackBuffFactory blastThrowBackBuffFactory = new ThrowBackBuff.BlastThrowBackBuffFactory();
        factories.THROW_BACK = blastThrowBackBuffFactory;
        factoryArr[ordinal5] = blastThrowBackBuffFactory;
        int ordinal6 = BuffType.STUN.ordinal();
        StunBuff.StunBuffFactory stunBuffFactory = new StunBuff.StunBuffFactory();
        factories.STUN = stunBuffFactory;
        factoryArr[ordinal6] = stunBuffFactory;
        int ordinal7 = BuffType.BURN.ordinal();
        BurnBuff.BurnBuffFactory burnBuffFactory = new BurnBuff.BurnBuffFactory();
        factories.BURN = burnBuffFactory;
        factoryArr[ordinal7] = burnBuffFactory;
        int ordinal8 = BuffType.REGENERATION.ordinal();
        RegenerationBuff.RegenerationBuffFactory regenerationBuffFactory = new RegenerationBuff.RegenerationBuffFactory();
        factories.REGENERATION = regenerationBuffFactory;
        factoryArr[ordinal8] = regenerationBuffFactory;
        int ordinal9 = BuffType.ARMOR.ordinal();
        ArmorBuff.ArmorBuffFactory armorBuffFactory = new ArmorBuff.ArmorBuffFactory();
        factories.ARMOR = armorBuffFactory;
        factoryArr[ordinal9] = armorBuffFactory;
        int ordinal10 = BuffType.BONUS_COINS.ordinal();
        BonusCoinsBuff.BonusCoinsBuffFactory bonusCoinsBuffFactory = new BonusCoinsBuff.BonusCoinsBuffFactory();
        factories.BONUS_COINS = bonusCoinsBuffFactory;
        factoryArr[ordinal10] = bonusCoinsBuffFactory;
        int ordinal11 = BuffType.BONUS_XP.ordinal();
        BonusXpBuff.BonusXpBuffFactory bonusXpBuffFactory = new BonusXpBuff.BonusXpBuffFactory();
        factories.BONUS_XP = bonusXpBuffFactory;
        factoryArr[ordinal11] = bonusXpBuffFactory;
        int ordinal12 = BuffType.DEATH_EXPLOSION.ordinal();
        DeathExplosionBuff.ExplosionChargeBuffFactory explosionChargeBuffFactory = new DeathExplosionBuff.ExplosionChargeBuffFactory();
        factories.DEATH_EXPLOSION = explosionChargeBuffFactory;
        factoryArr[ordinal12] = explosionChargeBuffFactory;
        int ordinal13 = BuffType.CHAIN_REACTION.ordinal();
        ChainReactionBuff.ChainReactionBuffFactory chainReactionBuffFactory = new ChainReactionBuff.ChainReactionBuffFactory();
        factories.CHAIN_REACTION = chainReactionBuffFactory;
        factoryArr[ordinal13] = chainReactionBuffFactory;
        for (BuffType buffType : buffTypeArr) {
            if (this.f9700a[buffType.ordinal()] == null) {
                throw new RuntimeException("Not all buff factories were created");
            }
        }
    }
}
