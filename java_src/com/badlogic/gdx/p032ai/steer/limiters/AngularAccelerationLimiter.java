package com.badlogic.gdx.p032ai.steer.limiters;
/* renamed from: com.badlogic.gdx.ai.steer.limiters.AngularAccelerationLimiter */
/* loaded from: classes.dex */
public class AngularAccelerationLimiter extends NullLimiter {

    /* renamed from: a */
    public float f3437a;

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxAngularAcceleration() {
        return this.f3437a;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxAngularAcceleration(float f) {
        this.f3437a = f;
    }

    public AngularAccelerationLimiter(float f) {
        this.f3437a = f;
    }
}
