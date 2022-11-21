package com.prineside.tdi2.systems;

import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Buff;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystem;
import com.prineside.tdi2.ScheduledUpdater;
import com.prineside.tdi2.buffs.processors.ArmorBuffProcessor;
import com.prineside.tdi2.buffs.processors.BlizzardBuffProcessor;
import com.prineside.tdi2.buffs.processors.BonusCoinsBuffProcessor;
import com.prineside.tdi2.buffs.processors.BonusXpBuffProcessor;
import com.prineside.tdi2.buffs.processors.BurnBuffProcessor;
import com.prineside.tdi2.buffs.processors.ChainReactionBuffProcessor;
import com.prineside.tdi2.buffs.processors.DeathExplosionBuffProcessor;
import com.prineside.tdi2.buffs.processors.FreezingBuffProcessor;
import com.prineside.tdi2.buffs.processors.PoisonBuffProcessor;
import com.prineside.tdi2.buffs.processors.RegenerationBuffProcessor;
import com.prineside.tdi2.buffs.processors.SnowballBuffProcessor;
import com.prineside.tdi2.buffs.processors.StunBuffProcessor;
import com.prineside.tdi2.buffs.processors.ThrowBackBuffProcessor;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BuffSystem extends GameSystem {
    public ArmorBuffProcessor P_ARMOR;
    public BlizzardBuffProcessor P_BLIZZARD;
    public BonusCoinsBuffProcessor P_BONUS_COINS;
    public BonusXpBuffProcessor P_BONUS_XP;
    public BurnBuffProcessor P_BURN;
    public ChainReactionBuffProcessor P_CHAIN_REACTION;
    public DeathExplosionBuffProcessor P_DEATH_EXPLOSION;
    public FreezingBuffProcessor P_FREEZING;
    public PoisonBuffProcessor P_POISON;
    public RegenerationBuffProcessor P_REGENERATION;
    public SnowballBuffProcessor P_SNOWBALL;
    public StunBuffProcessor P_STUN;
    public ThrowBackBuffProcessor P_THROW_BACK;

    /* renamed from: a */
    public BuffProcessor[] f11431a = new BuffProcessor[BuffType.values.length];

    /* renamed from: b */
    public ScheduledUpdater f11432b = new ScheduledUpdater();

    @Override // com.prineside.tdi2.GameSystem
    public boolean affectsGameState() {
        return true;
    }

    public BuffProcessor getProcessor(BuffType buffType) {
        return this.f11431a[buffType.ordinal()];
    }

    @Override // com.prineside.tdi2.GameSystem
    public String getSystemName() {
        return "Buff";
    }

    @Override // com.prineside.tdi2.GameSystem, com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f11432b.clear();
        int i = 0;
        while (true) {
            BuffProcessor[] buffProcessorArr = this.f11431a;
            if (i < buffProcessorArr.length) {
                buffProcessorArr[i].setUnregistered();
                this.f11431a[i] = null;
                i++;
            } else {
                super.dispose();
                return;
            }
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void setup() {
        BuffType[] buffTypeArr;
        BuffProcessor[] buffProcessorArr;
        for (BuffType buffType : BuffType.values) {
            this.f11431a[buffType.ordinal()] = Game.f8589i.buffManager.getFactory(buffType).createProcessor();
        }
        this.P_FREEZING = (FreezingBuffProcessor) getProcessor(BuffType.FREEZING);
        this.P_POISON = (PoisonBuffProcessor) getProcessor(BuffType.POISON);
        this.P_BURN = (BurnBuffProcessor) getProcessor(BuffType.BURN);
        this.P_BLIZZARD = (BlizzardBuffProcessor) getProcessor(BuffType.BLIZZARD);
        this.P_ARMOR = (ArmorBuffProcessor) getProcessor(BuffType.ARMOR);
        this.P_SNOWBALL = (SnowballBuffProcessor) getProcessor(BuffType.SNOWBALL);
        this.P_REGENERATION = (RegenerationBuffProcessor) getProcessor(BuffType.REGENERATION);
        this.P_THROW_BACK = (ThrowBackBuffProcessor) getProcessor(BuffType.THROW_BACK);
        this.P_STUN = (StunBuffProcessor) getProcessor(BuffType.STUN);
        this.P_BONUS_COINS = (BonusCoinsBuffProcessor) getProcessor(BuffType.BONUS_COINS);
        this.P_BONUS_XP = (BonusXpBuffProcessor) getProcessor(BuffType.BONUS_XP);
        this.P_DEATH_EXPLOSION = (DeathExplosionBuffProcessor) getProcessor(BuffType.DEATH_EXPLOSION);
        this.P_CHAIN_REACTION = (ChainReactionBuffProcessor) getProcessor(BuffType.CHAIN_REACTION);
        for (BuffProcessor buffProcessor : this.f11431a) {
            if (buffProcessor.getUpdateInterval() != 0.0f) {
                this.f11432b.add(buffProcessor, buffProcessor.getUpdateInterval());
            }
            buffProcessor.setRegistered(this.f8844S);
        }
    }

    @Override // com.prineside.tdi2.GameSystem
    public void update(float f) {
        BuffType[] buffTypeArr;
        int i = this.f8844S.map.spawnedEnemies.size;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy enemy = this.f8844S.map.spawnedEnemies.items[i2].enemy;
            if (enemy != null && enemy.buffsByType != null) {
                for (BuffType buffType : BuffType.values) {
                    DelayedRemovalArray delayedRemovalArray = enemy.buffsByType[buffType.ordinal()];
                    int i3 = delayedRemovalArray.size;
                    while (true) {
                        i3--;
                        if (i3 > -1) {
                            Buff buff = ((Buff[]) delayedRemovalArray.items)[i3];
                            float f2 = buff.duration - f;
                            buff.duration = f2;
                            if (f2 <= 0.0f) {
                                this.f11431a[buffType.ordinal()].removeBuff(enemy, buffType, i3);
                            }
                        }
                    }
                }
            }
        }
        this.f11432b.process(f);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f11431a = (BuffProcessor[]) kryo.readObject(input, BuffProcessor[].class);
        this.f11432b = (ScheduledUpdater) kryo.readObject(input, ScheduledUpdater.class);
        this.P_FREEZING = (FreezingBuffProcessor) kryo.readObject(input, FreezingBuffProcessor.class);
        this.P_POISON = (PoisonBuffProcessor) kryo.readObject(input, PoisonBuffProcessor.class);
        this.P_BURN = (BurnBuffProcessor) kryo.readObject(input, BurnBuffProcessor.class);
        this.P_BLIZZARD = (BlizzardBuffProcessor) kryo.readObject(input, BlizzardBuffProcessor.class);
        this.P_ARMOR = (ArmorBuffProcessor) kryo.readObject(input, ArmorBuffProcessor.class);
        this.P_SNOWBALL = (SnowballBuffProcessor) kryo.readObject(input, SnowballBuffProcessor.class);
        this.P_REGENERATION = (RegenerationBuffProcessor) kryo.readObject(input, RegenerationBuffProcessor.class);
        this.P_THROW_BACK = (ThrowBackBuffProcessor) kryo.readObject(input, ThrowBackBuffProcessor.class);
        this.P_STUN = (StunBuffProcessor) kryo.readObject(input, StunBuffProcessor.class);
        this.P_BONUS_COINS = (BonusCoinsBuffProcessor) kryo.readObject(input, BonusCoinsBuffProcessor.class);
        this.P_BONUS_XP = (BonusXpBuffProcessor) kryo.readObject(input, BonusXpBuffProcessor.class);
        this.P_DEATH_EXPLOSION = (DeathExplosionBuffProcessor) kryo.readObject(input, DeathExplosionBuffProcessor.class);
        this.P_CHAIN_REACTION = (ChainReactionBuffProcessor) kryo.readObject(input, ChainReactionBuffProcessor.class);
    }

    @Override // com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObject(output, this.f11431a);
        kryo.writeObject(output, this.f11432b);
        kryo.writeObject(output, this.P_FREEZING);
        kryo.writeObject(output, this.P_POISON);
        kryo.writeObject(output, this.P_BURN);
        kryo.writeObject(output, this.P_BLIZZARD);
        kryo.writeObject(output, this.P_ARMOR);
        kryo.writeObject(output, this.P_SNOWBALL);
        kryo.writeObject(output, this.P_REGENERATION);
        kryo.writeObject(output, this.P_THROW_BACK);
        kryo.writeObject(output, this.P_STUN);
        kryo.writeObject(output, this.P_BONUS_COINS);
        kryo.writeObject(output, this.P_BONUS_XP);
        kryo.writeObject(output, this.P_DEATH_EXPLOSION);
        kryo.writeObject(output, this.P_CHAIN_REACTION);
    }
}
