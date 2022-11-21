package com.badlogic.gdx.p032ai.steer;
/* renamed from: com.badlogic.gdx.ai.steer.Limiter */
/* loaded from: classes.dex */
public interface Limiter {
    float getMaxAngularAcceleration();

    float getMaxAngularSpeed();

    float getMaxLinearAcceleration();

    float getMaxLinearSpeed();

    float getZeroLinearSpeedThreshold();

    void setMaxAngularAcceleration(float f);

    void setMaxAngularSpeed(float f);

    void setMaxLinearAcceleration(float f);

    void setMaxLinearSpeed(float f);

    void setZeroLinearSpeedThreshold(float f);
}
