package com.prineside.tdi2.explosions;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEffectPool;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Array;
import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import com.prineside.tdi2.Enemy;
import com.prineside.tdi2.Explosion;
import com.prineside.tdi2.Game;
import com.prineside.tdi2.Logger;
import com.prineside.tdi2.Tower;
import com.prineside.tdi2.abilities.FireballAbility;
import com.prineside.tdi2.buffs.BurnBuff;
import com.prineside.tdi2.enums.DamageType;
import com.prineside.tdi2.enums.ExplosionType;
import com.prineside.tdi2.enums.LimitedParticleType;
import com.prineside.tdi2.systems.ParticleSystem;
import com.prineside.tdi2.systems.SoundSystem;
import com.prineside.tdi2.utils.MaterialColor;
import com.prineside.tdi2.utils.REGS;
@REGS
/* loaded from: classes2.dex */
public class FireballExplosion extends Explosion {

    /* renamed from: w */
    public static final Color f9333w = MaterialColor.DEEP_ORANGE.P400;

    /* renamed from: u */
    public float f9334u;

    /* renamed from: v */
    public float f9335v;

    /* loaded from: classes2.dex */
    public static class FireballExplosionFactory extends Explosion.Factory<FireballExplosion> {

        /* renamed from: b */
        public ParticleEffectPool f9336b;

        @Override // com.prineside.tdi2.Explosion.Factory
        /* renamed from: b */
        public FireballExplosion mo21770a() {
            return new FireballExplosion();
        }

        @Override // com.prineside.tdi2.Explosion.Factory
        public void setupAssets() {
            ParticleEffect particleEffect = new ParticleEffect();
            particleEffect.load(Gdx.files.external("particles/fireball-explosion.prt"), Game.f8589i.assetManager.getTextureRegion("particle-shockwave").getAtlas());
            particleEffect.setEmittersCleanUpBlendFunction(false);
            this.f9336b = new ParticleEffectPool(particleEffect, 1, 64);
            Logger.log("FireballExplosion", "factory setup");
        }

        @Override // com.prineside.tdi2.Explosion.Factory
        public void clearPool() {
            super.clearPool();
            ParticleEffectPool particleEffectPool = this.f9336b;
            if (particleEffectPool != null) {
                particleEffectPool.clear();
            }
        }
    }

    public FireballExplosion() {
        super(ExplosionType.FIREBALL);
    }

    @Override // com.prineside.tdi2.Explosion
    public void enemyAffected(Enemy enemy, float f, float f2) {
        BurnBuff obtain = Game.f8589i.buffManager.f9699F.BURN.obtain();
        obtain.setup(null, 15.0f, 150.0f, this.f9335v, this.fromAbility);
        this.f8844S.buff.P_BURN.addBuff(enemy, obtain);
        Tower tower = getTower();
        if (tower != null && !tower.isRegistered()) {
            tower = null;
        }
        this.f8844S.enemy.giveDamage(enemy, tower, this.f9334u, DamageType.FIRE, this.fromAbility, true, null);
    }

    @Override // com.prineside.tdi2.Explosion
    public void explode() {
        super.explode();
        if (this.f8844S._particle != null && Game.f8589i.settingsManager.isExplosionsDrawing()) {
            ParticleEffectPool.PooledEffect obtain = Game.f8589i.explosionManager.f9791F.FIREBALL.f9336b.obtain();
            Array<ParticleEmitter> emitters = obtain.getEmitters();
            float f = (this.f8581d * 2.0f) / 128.0f;
            ParticleEmitter particleEmitter = emitters.get(1);
            ParticleEmitter.GradientColorValue tint = particleEmitter.getTint();
            float[] colors = tint.getColors();
            Color color = f9333w;
            colors[0] = color.f3892r;
            colors[1] = color.f3891g;
            colors[2] = color.f3890b;
            tint.setColors(colors);
            float f2 = 16.0f * f;
            particleEmitter.getXScale().setHigh(f2);
            particleEmitter.getYScale().setHigh(f2);
            particleEmitter.getVelocity().setHigh(50.0f * f, 150.0f * f);
            ParticleEmitter particleEmitter2 = emitters.get(2);
            float f3 = 4.0f * f;
            particleEmitter2.getXScale().setLow(f3);
            particleEmitter2.getYScale().setLow(f3);
            float f4 = 8.0f * f;
            float f5 = 32.0f * f;
            particleEmitter2.getXScale().setHigh(f4, f5);
            particleEmitter2.getYScale().setHigh(f4, f5);
            particleEmitter2.getVelocity().setHigh(20.0f, f * 70.0f);
            Vector2 vector2 = this.position;
            obtain.setPosition(vector2.f5527x, vector2.f5528y);
            ParticleEmitter particleEmitter3 = obtain.getEmitters().get(0);
            ParticleEmitter.GradientColorValue tint2 = particleEmitter3.getTint();
            float[] colors2 = tint2.getColors();
            colors2[0] = color.f3892r;
            colors2[1] = color.f3891g;
            colors2[2] = color.f3890b;
            tint2.setColors(colors2);
            particleEmitter3.getXScale().setHigh(this.f8581d * 2.0f);
            particleEmitter3.getYScale().setHigh(this.f8581d * 2.0f);
            particleEmitter3.getLife().setHigh(this.f8582k * 1000.0f);
            particleEmitter3.getLife().setLow(this.f8582k * 1500.0f);
            ParticleSystem particleSystem = this.f8844S._particle;
            LimitedParticleType limitedParticleType = LimitedParticleType.EXPLOSION_FIREBALL;
            Vector2 vector22 = this.position;
            particleSystem.addParticle(obtain, limitedParticleType, vector22.f5527x, vector22.f5528y);
        }
        SoundSystem soundSystem = this.f8844S._sound;
        if (soundSystem != null) {
            soundSystem.playExplosionSound(this.position.f5527x);
        }
    }

    @Override // com.prineside.tdi2.Explosion, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        super.read(kryo, input);
        this.f9334u = input.readFloat();
        this.f9335v = input.readFloat();
    }

    public void setup(float f, float f2, float f3, float f4, float f5, FireballAbility fireballAbility) {
        this.f9334u = f3;
        this.f9335v = f4;
        super.m22014a(null, f, f2, 0.0f, f5, (0.08f * f5) + 0.25f, fireballAbility);
    }

    @Override // com.prineside.tdi2.Explosion, com.prineside.tdi2.Registrable, com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        super.write(kryo, output);
        output.writeFloat(this.f9334u);
        output.writeFloat(this.f9335v);
    }
}
