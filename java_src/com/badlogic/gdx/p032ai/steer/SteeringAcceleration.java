package com.badlogic.gdx.p032ai.steer;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.steer.SteeringAcceleration */
/* loaded from: classes.dex */
public class SteeringAcceleration<T extends Vector<T>> {
    public float angular;
    public T linear;

    public SteeringAcceleration(T t) {
        this(t, 0.0f);
    }

    public float calculateMagnitude() {
        return (float) Math.sqrt(calculateSquareMagnitude());
    }

    public float calculateSquareMagnitude() {
        float len2 = this.linear.len2();
        float f = this.angular;
        return len2 + (f * f);
    }

    public boolean isZero() {
        return this.angular == 0.0f && this.linear.isZero();
    }

    public SteeringAcceleration(T t, float f) {
        if (t != null) {
            this.linear = t;
            this.angular = f;
            return;
        }
        throw new IllegalArgumentException("Linear acceleration cannot be null");
    }

    public SteeringAcceleration<T> add(SteeringAcceleration<T> steeringAcceleration) {
        this.linear.add(steeringAcceleration.linear);
        this.angular += steeringAcceleration.angular;
        return this;
    }

    public SteeringAcceleration<T> mulAdd(SteeringAcceleration<T> steeringAcceleration, float f) {
        this.linear.mulAdd(steeringAcceleration.linear, f);
        this.angular += steeringAcceleration.angular * f;
        return this;
    }

    public SteeringAcceleration<T> scl(float f) {
        this.linear.scl(f);
        this.angular *= f;
        return this;
    }

    public SteeringAcceleration<T> setZero() {
        this.linear.setZero();
        this.angular = 0.0f;
        return this;
    }
}
