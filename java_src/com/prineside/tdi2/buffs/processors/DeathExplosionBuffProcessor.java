package com.prineside.tdi2.buffs.processors;

import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Explosion;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.DeathExplosionBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class DeathExplosionBuffProcessor extends BuffProcessor<DeathExplosionBuff> {

    /* renamed from: d */
    public _EnemySystemListener f9132d;

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {

        /* renamed from: a */
        public GameSystemProvider f9133a;

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 918915;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
            this.f9133a = (GameSystemProvider) kryo.readObjectOrNull(input, GameSystemProvider.class);
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
            kryo.writeObjectOrNull(output, this.f9133a, GameSystemProvider.class);
        }

        @Deprecated
        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.DEATH_EXPLOSION);
            if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
                for (int i = 0; i < buffsByTypeOrNull.size; i++) {
                    DeathExplosionBuff deathExplosionBuff = (DeathExplosionBuff) buffsByTypeOrNull.items[i];
                    Explosion explosion = deathExplosionBuff.explosion;
                    deathExplosionBuff.explosion = null;
                    if (explosion != null) {
                        explosion.position.set(enemy.getPosition());
                        this.f9133a.explosion.register(explosion);
                        explosion.explode();
                    }
                }
            }
        }

        public _EnemySystemListener(GameSystemProvider gameSystemProvider) {
            this.f9133a = gameSystemProvider;
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
    public boolean addBuff(Enemy enemy, DeathExplosionBuff deathExplosionBuff) {
        return m22041b(enemy, deathExplosionBuff);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f8844S.enemy.listeners.remove(this.f9132d);
        super.setUnregistered();
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9132d = (_EnemySystemListener) kryo.readObjectOrNull(input, _EnemySystemListener.class);
    }

    @Override // com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        if (this.f9132d == null) {
            this.f9132d = new _EnemySystemListener(this.f8844S);
        }
        this.f8844S.enemy.listeners.add(this.f9132d);
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        kryo.writeObjectOrNull(output, this.f9132d, _EnemySystemListener.class);
    }
}
