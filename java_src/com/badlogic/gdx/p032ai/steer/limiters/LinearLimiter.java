package com.badlogic.gdx.p032ai.steer.limiters;
/* renamed from: com.badlogic.gdx.ai.steer.limiters.LinearLimiter */
/* loaded from: classes.dex */
public class LinearLimiter extends NullLimiter {

    /* renamed from: a */
    public float f3447a;

    /* renamed from: b */
    public float f3448b;

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxLinearAcceleration() {
        return this.f3447a;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxLinearSpeed() {
        return this.f3448b;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxLinearAcceleration(float f) {
        this.f3447a = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxLinearSpeed(float f) {
        this.f3448b = f;
    }

    public LinearLimiter(float f, float f2) {
        this.f3447a = f;
        this.f3448b = f2;
    }
}
