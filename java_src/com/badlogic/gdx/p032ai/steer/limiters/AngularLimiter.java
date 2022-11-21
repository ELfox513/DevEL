package com.badlogic.gdx.p032ai.steer.limiters;
/* renamed from: com.badlogic.gdx.ai.steer.limiters.AngularLimiter */
/* loaded from: classes.dex */
public class AngularLimiter extends NullLimiter {

    /* renamed from: a */
    public float f3438a;

    /* renamed from: b */
    public float f3439b;

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxAngularAcceleration() {
        return this.f3438a;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxAngularSpeed() {
        return this.f3439b;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxAngularAcceleration(float f) {
        this.f3438a = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxAngularSpeed(float f) {
        this.f3439b = f;
    }

    public AngularLimiter(float f, float f2) {
        this.f3438a = f;
        this.f3439b = f2;
    }
}
