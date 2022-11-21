package com.badlogic.gdx.scenes.scene2d.p033ui;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.graphics.g2d.ParticleEffect;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.utils.Disposable;
/* renamed from: com.badlogic.gdx.scenes.scene2d.ui.ParticleEffectActor */
/* loaded from: classes.dex */
public class ParticleEffectActor extends Actor implements Disposable {

    /* renamed from: F */
    public final ParticleEffect f5936F;

    /* renamed from: G */
    public float f5937G;

    /* renamed from: H */
    public boolean f5938H;

    /* renamed from: I */
    public boolean f5939I;

    /* renamed from: J */
    public boolean f5940J;

    /* renamed from: K */
    public boolean f5941K;

    public ParticleEffectActor(ParticleEffect particleEffect, boolean z) {
        this.f5936F = particleEffect;
        this.f5940J = z;
    }

    public void allowCompletion() {
        this.f5936F.allowCompletion();
    }

    public void cancel() {
        this.f5938H = true;
    }

    public ParticleEffect getEffect() {
        return this.f5936F;
    }

    public boolean isAutoRemove() {
        return this.f5941K;
    }

    public boolean isResetOnStart() {
        return this.f5940J;
    }

    public boolean isRunning() {
        return this.f5938H;
    }

    public ParticleEffectActor setAutoRemove(boolean z) {
        this.f5941K = z;
        return this;
    }

    public ParticleEffectActor setResetOnStart(boolean z) {
        this.f5940J = z;
        return this;
    }

    public void start() {
        this.f5938H = true;
        if (this.f5940J) {
            this.f5936F.reset(false);
        }
        this.f5936F.start();
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        if (this.f5939I) {
            this.f5936F.dispose();
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void draw(Batch batch, float f) {
        this.f5936F.setPosition(getX(), getY());
        float f2 = this.f5937G;
        if (f2 > 0.0f) {
            this.f5936F.update(f2);
            this.f5937G = 0.0f;
        }
        if (this.f5938H) {
            this.f5936F.draw(batch);
            this.f5938H = !this.f5936F.isComplete();
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    public void act(float f) {
        super.act(f);
        this.f5937G += f;
        if (this.f5941K && this.f5936F.isComplete()) {
            remove();
        }
    }

    @Override // com.badlogic.gdx.scenes.scene2d.Actor
    /* renamed from: d */
    public void mo23819d() {
        super.mo23819d();
        this.f5936F.scaleEffect(getScaleX(), getScaleY(), getScaleY());
    }

    public ParticleEffectActor(FileHandle fileHandle, TextureAtlas textureAtlas) {
        ParticleEffect particleEffect = new ParticleEffect();
        this.f5936F = particleEffect;
        particleEffect.load(fileHandle, textureAtlas);
        this.f5939I = true;
    }

    public ParticleEffectActor(FileHandle fileHandle, FileHandle fileHandle2) {
        ParticleEffect particleEffect = new ParticleEffect();
        this.f5936F = particleEffect;
        particleEffect.load(fileHandle, fileHandle2);
        this.f5939I = true;
    }
}
