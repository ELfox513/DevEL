package com.prineside.tdi2.p036ui.actors;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.ParticleEmitter;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Array;
import com.prineside.tdi2.systems.ParticleSystem;
/* renamed from: com.prineside.tdi2.ui.actors.ParticlesCanvas */
/* loaded from: classes2.dex */
public class ParticlesCanvas extends Actor {

    /* renamed from: F */
    public final Array<ParticleConfig> f12660F = new Array<>(true, 1, ParticleConfig.class);
    public boolean scissors;

    /* renamed from: com.prineside.tdi2.ui.actors.ParticlesCanvas$ParticleConfig */
    /* loaded from: classes2.dex */
    public static class ParticleConfig {
        public ParticleEffect effect;

        /* renamed from: x */
        public float f12661x;

        /* renamed from: y */
        public float f12662y;
    }

    public ParticleConfig addParticle(ParticleEffect particleEffect, float f, float f2) {
        return addParticle(particleEffect, f, f2, false);
    }

    public void removeParticle(ParticleEffect particleEffect) {
        int i = 0;
        while (true) {
            Array<ParticleConfig> array = this.f12660F;
            if (i < array.size) {
                if (array.items[i].effect == particleEffect) {
                    particleEffect.reset();
                    this.f12660F.removeIndex(i);
                    ParticleSystem.freeParticle(particleEffect);
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }

    public ParticleConfig addParticle(ParticleEffect particleEffect, float f, float f2, boolean z) {
        ParticleConfig particleConfig = new ParticleConfig();
        particleConfig.effect = particleEffect;
        particleConfig.f12661x = f;
        particleConfig.f12662y = f2;
        if (z) {
            this.f12660F.insert(0, particleConfig);
        } else {
            this.f12660F.add(particleConfig);
        }
        particleEffect.start();
        return particleConfig;
    }

    public void clearParticles() {
        for (int i = this.f12660F.size - 1; i >= 0; i--) {
            Array<ParticleConfig> array = this.f12660F;
            ParticleConfig particleConfig = array.items[i];
            array.removeIndex(i);
            particleConfig.effect.reset();
            ParticleSystem.freeParticle(particleConfig.effect);
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        float x = getX();
        float y = getY();
        if (this.f12660F.size != 0) {
            boolean z = false;
            if (this.scissors) {
                batch.flush();
                z = clipBegin();
            }
            batch.setColor(Color.WHITE);
            for (int i = this.f12660F.size - 1; i >= 0; i--) {
                ParticleConfig particleConfig = this.f12660F.items[i];
                if (particleConfig.effect.isComplete()) {
                    this.f12660F.removeIndex(i);
                    particleConfig.effect.reset();
                    ParticleSystem.freeParticle(particleConfig.effect);
                } else {
                    particleConfig.effect.setPosition(particleConfig.f12661x + x, particleConfig.f12662y + y);
                    Array.ArrayIterator<ParticleEmitter> it = particleConfig.effect.getEmitters().iterator();
                    while (it.hasNext()) {
                        it.next().getTransparency().setHigh(f);
                    }
                    particleConfig.effect.update(Gdx.graphics.getDeltaTime());
                    particleConfig.effect.draw(batch);
                }
            }
            batch.setColor(Color.WHITE);
            batch.flush();
            if (z) {
                clipEnd();
            }
            batch.setBlendFunction(GL20.GL_SRC_ALPHA, GL20.GL_ONE_MINUS_SRC_ALPHA);
        }
    }
}
