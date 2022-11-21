package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes.dex */
public class ParticleEffectPool extends Pool<PooledEffect> {

    /* renamed from: b */
    public final ParticleEffect f4065b;

    /* loaded from: classes.dex */
    public class PooledEffect extends ParticleEffect {
        public void free() {
            ParticleEffectPool.this.free(this);
        }

        public PooledEffect(ParticleEffect particleEffect) {
            super(particleEffect);
        }
    }

    @Override // com.badlogic.gdx.utils.Pool
    /* renamed from: c */
    public PooledEffect newObject() {
        PooledEffect pooledEffect = new PooledEffect(this.f4065b);
        pooledEffect.start();
        return pooledEffect;
    }

    @Override // com.badlogic.gdx.utils.Pool
    public void free(PooledEffect pooledEffect) {
        super.free((ParticleEffectPool) pooledEffect);
        pooledEffect.reset(false);
        float f = pooledEffect.f4062k;
        ParticleEffect particleEffect = this.f4065b;
        if (f == particleEffect.f4062k && pooledEffect.f4063p == particleEffect.f4063p && pooledEffect.f4064q == particleEffect.f4064q) {
            return;
        }
        Array<ParticleEmitter> emitters = pooledEffect.getEmitters();
        Array<ParticleEmitter> emitters2 = this.f4065b.getEmitters();
        for (int i = 0; i < emitters.size; i++) {
            ParticleEmitter particleEmitter = emitters.get(i);
            ParticleEmitter particleEmitter2 = emitters2.get(i);
            particleEmitter.matchSize(particleEmitter2);
            particleEmitter.matchMotion(particleEmitter2);
        }
        ParticleEffect particleEffect2 = this.f4065b;
        pooledEffect.f4062k = particleEffect2.f4062k;
        pooledEffect.f4063p = particleEffect2.f4063p;
        pooledEffect.f4064q = particleEffect2.f4064q;
    }

    public ParticleEffectPool(ParticleEffect particleEffect, int i, int i2) {
        super(i, i2);
        this.f4065b = particleEffect;
    }
}
