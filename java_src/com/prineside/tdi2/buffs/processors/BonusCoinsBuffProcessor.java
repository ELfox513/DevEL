package com.prineside.tdi2.buffs.processors;

import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.BonusCoinsBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BonusCoinsBuffProcessor extends BuffProcessor<BonusCoinsBuff> {

    /* renamed from: d */
    public _EnemySystemListener f9123d;

    /* renamed from: k */
    public GameSystemProvider f9124k;

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f9125a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 918911;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f9125a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f9125a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            int addMoney;
            DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.BONUS_COINS);
            if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
                BonusCoinsBuff bonusCoinsBuff = (BonusCoinsBuff) buffsByTypeOrNull.first();
                float f = bonusCoinsBuff.bonusCoinsMultiplier * enemy.bounty;
                if (f > 0.0f && (addMoney = this.f9125a.gameState.addMoney(f, true)) > 0) {
                    Tower tower2 = bonusCoinsBuff.issuer;
                    if (tower2 != null) {
                        tower2.bonusCoinsBrought += addMoney;
                    } else if (tower != null) {
                        tower.bonusCoinsBrought += addMoney;
                    }
                }
            }
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f9125a = gameSystemProvider;
        }
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return StatisticsType.EB_BC;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public float getUpdateInterval() {
        return 0.0f;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, BonusCoinsBuff bonusCoinsBuff) {
        return m22041b(enemy, bonusCoinsBuff);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f9124k.enemy.listeners.remove(this.f9123d);
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9123d = (_EnemySystemListener) kryo.readObjectOrNull(input, _EnemySystemListener.class);
        this.f9124k = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        this.f9124k = gameSystemProvider;
        if (this.f9123d == null) {
            this.f9123d = new _EnemySystemListener(gameSystemProvider);
        }
        this.f9124k.enemy.listeners.add(this.f9123d);
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.f9123d, _EnemySystemListener.class);
        kryo.writeObjectOrNull(output, this.f9124k, GameSystemProvider.class);
    }
}
