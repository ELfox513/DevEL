package com.badlogic.gdx.p032ai.steer.limiters;
/* renamed from: com.badlogic.gdx.ai.steer.limiters.AngularSpeedLimiter */
/* loaded from: classes.dex */
public class AngularSpeedLimiter extends NullLimiter {

    /* renamed from: a */
    public float f3440a;

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxAngularSpeed() {
        return this.f3440a;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxAngularSpeed(float f) {
        this.f3440a = f;
    }

    public AngularSpeedLimiter(float f) {
        this.f3440a = f;
    }
}
