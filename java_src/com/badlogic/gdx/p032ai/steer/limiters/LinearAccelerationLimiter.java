package com.badlogic.gdx.p032ai.steer.limiters;
/* renamed from: com.badlogic.gdx.ai.steer.limiters.LinearAccelerationLimiter */
/* loaded from: classes.dex */
public class LinearAccelerationLimiter extends NullLimiter {

    /* renamed from: a */
    public float f3446a;

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxLinearAcceleration() {
        return this.f3446a;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxLinearAcceleration(float f) {
        this.f3446a = f;
    }

    public LinearAccelerationLimiter(float f) {
        this.f3446a = f;
    }
}
