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
import com.prineside.tdi2.buffs.BonusXpBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BonusXpBuffProcessor extends BuffProcessor<BonusXpBuff> {

    /* renamed from: d */
    public _EnemySystemListener f9126d;

    /* renamed from: k */
    public GameSystemProvider f9127k;

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f9128a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 9189551;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f9128a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f9128a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            DelayedRemovalArray buffsByTypeOrNull;
            if (tower != null && (buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.BONUS_XP)) != null && buffsByTypeOrNull.size != 0) {
                this.f9128a.statistics.addStatistic(StatisticsType.XPG_BB, this.f9128a.tower.addExperienceBuffed(tower, enemy.getKillExp() * ((BonusXpBuff) buffsByTypeOrNull.first()).bonusXpMultiplier));
            }
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyTakeDamage(Enemy enemy, float f, Tower tower, DamageType damageType, Projectile projectile) {
            DelayedRemovalArray buffsByTypeOrNull;
            if (tower != null && (buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.BONUS_XP)) != null && buffsByTypeOrNull.size != 0 && f > 0.0f) {
                this.f9128a.statistics.addStatistic(StatisticsType.XPG_BB, this.f9128a.tower.addExperienceBuffed(tower, (f / enemy.maxHealth) * enemy.getKillExp() * 2.0f * ((BonusXpBuff) buffsByTypeOrNull.first()).bonusXpMultiplier));
            }
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f9128a = gameSystemProvider;
        }
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return StatisticsType.EB_BXP;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public float getUpdateInterval() {
        return 0.0f;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, BonusXpBuff bonusXpBuff) {
        return m22041b(enemy, bonusXpBuff);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f9127k.enemy.listeners.remove(this.f9126d);
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9126d = (_EnemySystemListener) kryo.readObjectOrNull(input, _EnemySystemListener.class);
        this.f9127k = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        this.f9127k = gameSystemProvider;
        if (this.f9126d == null) {
            this.f9126d = new _EnemySystemListener(gameSystemProvider);
        }
        this.f9127k.enemy.listeners.add(this.f9126d);
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.f9126d, _EnemySystemListener.class);
        kryo.writeObjectOrNull(output, this.f9127k, GameSystemProvider.class);
    }
}
