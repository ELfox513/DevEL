package com.badlogic.gdx.p032ai.steer.limiters;

import com.badlogic.gdx.p032ai.steer.Limiter;
/* renamed from: com.badlogic.gdx.ai.steer.limiters.FullLimiter */
/* loaded from: classes.dex */
public class FullLimiter implements Limiter {

    /* renamed from: a */
    public float f3441a;

    /* renamed from: b */
    public float f3442b;

    /* renamed from: c */
    public float f3443c;

    /* renamed from: d */
    public float f3444d;

    /* renamed from: e */
    public float f3445e;

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxAngularAcceleration() {
        return this.f3443c;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxAngularSpeed() {
        return this.f3444d;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxLinearAcceleration() {
        return this.f3441a;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxLinearSpeed() {
        return this.f3442b;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public float getZeroLinearSpeedThreshold() {
        return this.f3445e;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxAngularAcceleration(float f) {
        this.f3443c = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxAngularSpeed(float f) {
        this.f3444d = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxLinearAcceleration(float f) {
        this.f3441a = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxLinearSpeed(float f) {
        this.f3442b = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Limiter
    public void setZeroLinearSpeedThreshold(float f) {
        this.f3445e = f;
    }

    public FullLimiter(float f, float f2, float f3, float f4) {
        this.f3441a = f;
        this.f3442b = f2;
        this.f3443c = f3;
        this.f3444d = f4;
    }
}
