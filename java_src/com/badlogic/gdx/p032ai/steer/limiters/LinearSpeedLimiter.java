package com.badlogic.gdx.p032ai.steer.limiters;
/* renamed from: com.badlogic.gdx.ai.steer.limiters.LinearSpeedLimiter */
/* loaded from: classes.dex */
public class LinearSpeedLimiter extends NullLimiter {

    /* renamed from: a */
    public float f3449a;

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public float getMaxLinearSpeed() {
        return this.f3449a;
    }

    @Override // com.badlogic.gdx.p032ai.steer.limiters.NullLimiter, com.badlogic.gdx.p032ai.steer.Limiter
    public void setMaxLinearSpeed(float f) {
        this.f3449a = f;
    }

    public LinearSpeedLimiter(float f) {
        this.f3449a = f;
    }
}
