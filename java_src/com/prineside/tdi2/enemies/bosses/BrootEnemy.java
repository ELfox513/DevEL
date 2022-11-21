package com.prineside.tdi2.enemies.bosses;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.enums.AbilityType;
import com.prineside.tdi2.enums.EnemyType;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.NAGS;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class BrootEnemy extends Enemy {
    public static final float RAGE_DURATION = 8.0f;

    /* renamed from: v */
    public boolean f9200v;

    /* renamed from: w */
    public float f9201w;
    @NAGS

    /* renamed from: x */
    public float f9202x;
    @NAGS

    /* renamed from: y */
    public ParticleEffectPool.PooledEffect f9203y;

    /* loaded from: classes2.dex */
    public static class BrootEnemyFactory extends Enemy.Factory<BrootEnemy> {

        /* renamed from: r */
        public TextureRegion f9204r;

        /* renamed from: s */
        public ParticleEffectPool f9205s;

        /* renamed from: t */
        public ParticleEffectPool f9206t;

        public BrootEnemyFactory() {
            super(EnemyType.BROOT_BOSS);
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public Color getColor() {
            return MaterialColor.DEEP_ORANGE.P500;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getHighlightTexture() {
            return this.f9204r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public TextureRegion getTexture() {
            return this.f9204r;
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public BrootEnemy create() {
            return new BrootEnemy();
        }

        @Override // com.prineside.tdi2.Enemy.Factory
        public void setupAssets() {
            this.f9204r = Game.f8589i.assetManager.getTextureRegion("enemy-type-boss-broot");
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/anger.prt"), Game.f8589i.assetManager.getTextureRegion("particle-twist").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9205s = new ParticleEffectPool(particleEffect, 1, 8);
            ParticleEffect particleEffect2 = new ParticleEffect();
            particleEffect2.load(Gdx.files.external("particles/regeneration-once.prt"), Game.f8589i.assetManager.getTextureRegion("particle-plus").getAtlas());
            particleEffect2.setEmittersCleanUpBlendFunction(false);
            this.f9206t = new ParticleEffectPool(particleEffect2, 8, 1024);
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean dynamicPathfindingAllowed() {
        return false;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getAbilityVulnerability(AbilityType abilityType) {
        return abilityType == AbilityType.BALL_LIGHTNING ? 0.1f : 1.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBaseDamage() {
        return 100.0f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSize() {
        return 51.2f;
    }

    @Override // com.prineside.tdi2.Enemy
    public float getSquaredSize() {
        return 2621.4402f;
    }

    @Override // com.prineside.tdi2.Enemy
    public boolean hasDrawPriority() {
        return true;
    }

    public boolean isInRage() {
        return this.f9200v && this.f9201w < 8.0f;
    }

    public void startRage() {
        this.f9200v = true;
        this.f9201w = 0.0f;
        ParticleEffectPool.PooledEffect pooledEffect = this.f9203y;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f9203y = null;
        }
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing() && !this.f8844S._particle.willParticleBeSkipped()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.enemyManager.f9783F.BROOT_BOSS.f9205s.obtain();
            this.f9203y = obtain;
            this.f8844S._particle.addParticle(obtain, true);
        }
    }

    public boolean wasInRage() {
        return this.f9200v;
    }

    public BrootEnemy() {
        super(EnemyType.BROOT_BOSS);
    }

    public void healthRestoredWithDamage() {
        if (this.f9202x > 0.1f) {
            this.f9202x = 0.0f;
            if (this.f8844S._particle != null && Game.f8589i.settingsManager.isParticlesDrawing()) {
                ParticleEffectPool.PooledEffect obtain = Game.f8589i.enemyManager.f9783F.BROOT_BOSS.f9206t.obtain();
                obtain.setPosition(getPosition().f5527x, getPosition().f5528y);
                this.f8844S._particle.addParticle(obtain, true);
            }
        }
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable
    public void setUnregistered() {
        ParticleEffectPool.PooledEffect pooledEffect = this.f9203y;
        if (pooledEffect != null) {
            pooledEffect.allowCompletion();
            this.f9203y = null;
        }
        super.setUnregistered();
    }

    public void updateRageState(float f) {
        ParticleEffectPool.PooledEffect pooledEffect;
        ParticleEffectPool.PooledEffect pooledEffect2;
        this.f9202x += f;
        if (this.f9200v) {
            float f2 = this.f9201w + f;
            this.f9201w = f2;
            if (f2 >= 8.0f && (pooledEffect2 = this.f9203y) != null) {
                pooledEffect2.allowCompletion();
                this.f9203y = null;
            }
        }
        if (isInRage() && (pooledEffect = this.f9203y) != null) {
            pooledEffect.setPosition(getPosition().f5527x, getPosition().f5528y);
        }
    }

    @Override // com.prineside.tdi2.Enemy
    public float getBuffedSpeed() {
        float buffedSpeed = super.getBuffedSpeed();
        if (isInRage()) {
            return buffedSpeed * 0.7f;
        }
        return buffedSpeed;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9200v = input.readBoolean();
        this.f9201w = input.readFloat();
    }

    @Override // com.prineside.tdi2.Enemy, com.badlogic.gdx.utils.Pool.Poolable
    public void reset() {
        super.reset();
        this.f9200v = false;
        this.f9201w = 0.0f;
        this.f9202x = 0.0f;
        this.f9203y = null;
    }

    @Override // com.prineside.tdi2.Enemy, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeBoolean(this.f9200v);
        output.writeFloat(this.f9201w);
    }
}
