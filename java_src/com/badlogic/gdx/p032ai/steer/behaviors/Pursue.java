package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.SteeringBehavior;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Pursue */
/* loaded from: classes.dex */
public class Pursue<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public Steerable<T> f3414d;

    /* renamed from: e */
    public float f3415e;

    public Pursue(Steerable<T> steerable, Steerable<T> steerable2) {
        this(steerable, steerable2, 1.0f);
    }

    /* renamed from: c */
    public float mo24369c() {
        return m24376a().getMaxLinearAcceleration();
    }

    public float getMaxPredictionTime() {
        return this.f3415e;
    }

    public Steerable<T> getTarget() {
        return this.f3414d;
    }

    public Pursue<T> setMaxPredictionTime(float f) {
        this.f3415e = f;
        return this;
    }

    public Pursue<T> setTarget(Steerable<T> steerable) {
        this.f3414d = steerable;
        return this;
    }

    public Pursue(Steerable<T> steerable, Steerable<T> steerable2, float f) {
        super(steerable);
        this.f3414d = steerable2;
        this.f3415e = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        T position = this.f3414d.getPosition();
        float len2 = steeringAcceleration.linear.set(position).sub(this.f3358a.getPosition()).len2();
        float len22 = this.f3358a.getLinearVelocity().len2();
        float f = this.f3415e;
        if (len22 > 0.0f) {
            float f2 = len2 / len22;
            if (f2 < f * f) {
                f = (float) Math.sqrt(f2);
            }
        }
        steeringAcceleration.linear.set(position).mulAdd(this.f3414d.getLinearVelocity(), f).sub(this.f3358a.getPosition()).nor().scl(mo24369c());
        steeringAcceleration.angular = 0.0f;
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Pursue<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Pursue<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Pursue<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
