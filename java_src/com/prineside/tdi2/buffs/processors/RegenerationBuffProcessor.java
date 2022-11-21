package com.prineside.tdi2.buffs.processors;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Ability;
import com.prineside.tdi2.BuffProcessor;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.GameSystemProvider;
import com.prineside.tdi2.Projectile;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.buffs.RegenerationBuff;
import com.prineside.tdi2.enums.BuffType;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.StatisticsType;
import com.prineside.tdi2.systems.EnemySystem;
import com.prineside.tdi2.tiles.TargetTile;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class RegenerationBuffProcessor extends BuffProcessor<RegenerationBuff> {
    @NAGS

    /* renamed from: d */
    public ParticleEffectPool f9135d;

    /* renamed from: k */
    public _EnemySystemListener f9136k = new _EnemySystemListener();

    @REGS
    /* loaded from: classes2.dex */
    public static class _EnemySystemListener extends EnemySystem.EnemySystemListener.EnemySystemListenerAdapter implements KryoSerializable {
        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public boolean affectsGameState() {
            return true;
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.GameListener
        public int getConstantId() {
            return 701718;
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void read(Kryo kryo, Input input) {
        }

        @Override // com.esotericsoftware.kryo.KryoSerializable
        public void write(Kryo kryo, Output output) {
        }

        public _EnemySystemListener() {
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public void enemyDie(Enemy enemy, Tower tower, DamageType damageType, Ability ability, Projectile projectile) {
            ParticleEffectPool.PooledEffect pooledEffect = enemy.buffRegenerationParticle;
            if (pooledEffect != null) {
                pooledEffect.allowCompletion();
                enemy.buffRegenerationParticle = null;
            }
        }

        @Override // com.prineside.tdi2.systems.EnemySystem.EnemySystemListener.EnemySystemListenerAdapter, com.prineside.tdi2.systems.EnemySystem.EnemySystemListener
        public boolean enemyReachedTarget(Enemy enemy, int i, TargetTile targetTile) {
            ParticleEffectPool.PooledEffect pooledEffect;
            if (targetTile != null && (pooledEffect = enemy.buffRegenerationParticle) != null) {
                pooledEffect.allowCompletion();
                enemy.buffRegenerationParticle = null;
                return false;
            }
            return false;
        }
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public StatisticsType getBuffCountStatistic() {
        return null;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public float getUpdateInterval() {
        return 0.0761f;
    }

    @Override // com.prineside.tdi2.BuffProcessor
    public boolean addBuff(Enemy enemy, RegenerationBuff regenerationBuff) {
        DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.REGENERATION);
        boolean z = true;
        if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
            buffsByTypeOrNull.begin();
            int i = 0;
            while (true) {
                if (i >= buffsByTypeOrNull.size) {
                    break;
                }
                RegenerationBuff regenerationBuff2 = ((RegenerationBuff[]) buffsByTypeOrNull.items)[i];
                if (regenerationBuff2.issuer != regenerationBuff.issuer) {
                    i++;
                } else if (regenerationBuff2.hpPerSecond * regenerationBuff2.duration < regenerationBuff.duration * regenerationBuff.hpPerSecond) {
                    removeBuff(enemy, BuffType.REGENERATION, i);
                } else {
                    z = false;
                }
            }
            buffsByTypeOrNull.end();
        }
        if (z) {
            return super.addBuff(enemy, (Enemy) regenerationBuff);
        }
        regenerationBuff.free();
        return false;
    }

    @Override // com.prineside.tdi2.BuffProcessor, com.prineside.tdi2.ScheduledUpdater.Updatable
    public void scheduledUpdate(float f) {
        boolean z;
        this.f8844S.map.spawnedEnemies.begin();
        int i = this.f8844S.map.spawnedEnemies.size;
        for (int i2 = 0; i2 < i; i2++) {
            Enemy enemy = this.f8844S.map.spawnedEnemies.items[i2].enemy;
            if (enemy != null) {
                DelayedRemovalArray buffsByTypeOrNull = enemy.getBuffsByTypeOrNull(BuffType.REGENERATION);
                if (buffsByTypeOrNull != null && buffsByTypeOrNull.size != 0) {
                    buffsByTypeOrNull.begin();
                    int i3 = buffsByTypeOrNull.size;
                    z = false;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (enemy.getHealth() < enemy.maxHealth) {
                            float health = enemy.getHealth() + (((RegenerationBuff) buffsByTypeOrNull.get(i4)).hpPerSecond * f);
                            float f2 = enemy.maxHealth;
                            if (health > f2) {
                                health = f2;
                            }
                            enemy.setHealth(health);
                            z = true;
                        }
                    }
                    buffsByTypeOrNull.end();
                } else {
                    z = false;
                }
                if (z) {
                    if (enemy.buffRegenerationParticle == null && this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S._particle.willParticleBeSkipped() && (enemy.getCurrentTile() == null || enemy.getCurrentTile().enemies.size < 10)) {
                        ParticleEffectPool.PooledEffect obtain = this.f9135d.obtain();
                        obtain.setPosition(enemy.getPosition().f5527x, enemy.getPosition().f5528y);
                        enemy.buffRegenerationParticle = obtain;
                        this.f8844S._particle.addParticle(obtain, true);
                    }
                } else {
                    ParticleEffectPool.PooledEffect pooledEffect = enemy.buffRegenerationParticle;
                    if (pooledEffect != null) {
                        pooledEffect.allowCompletion();
                        enemy.buffRegenerationParticle = null;
                    }
                }
            }
        }
        this.f8844S.map.spawnedEnemies.end();
    }

    @Override // com.prineside.tdi2.Registrable
    public void setUnregistered() {
        this.f8844S.enemy.listeners.remove(this.f9136k);
        super.setUnregistered();
    }

    public RegenerationBuffProcessor() {
        if (Game.f8589i.assetManager != null) {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.internal("particles/regeneration.prt"), Game.f8589i.assetManager.getTextureRegion("particle-plus").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9135d = new ParticleEffectPool(particleEffect, 8, 1024);
        }
    }

    @Override // com.prineside.tdi2.Registrable
    public void setRegistered(GameSystemProvider gameSystemProvider) {
        super.setRegistered(gameSystemProvider);
        gameSystemProvider.enemy.listeners.add(this.f9136k);
    }
}
