package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.SteeringBehavior;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Arrive */
/* loaded from: classes.dex */
public class Arrive<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public Location<T> f3362d;

    /* renamed from: e */
    public float f3363e;

    /* renamed from: f */
    public float f3364f;

    /* renamed from: g */
    public float f3365g;

    public Arrive(Steerable<T> steerable) {
        this(steerable, null);
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        return m24374c(steeringAcceleration, this.f3362d.getPosition());
    }

    public float getArrivalTolerance() {
        return this.f3363e;
    }

    public float getDecelerationRadius() {
        return this.f3364f;
    }

    public Location<T> getTarget() {
        return this.f3362d;
    }

    public float getTimeToTarget() {
        return this.f3365g;
    }

    public Arrive<T> setArrivalTolerance(float f) {
        this.f3363e = f;
        return this;
    }

    public Arrive<T> setDecelerationRadius(float f) {
        this.f3364f = f;
        return this;
    }

    public Arrive<T> setTarget(Location<T> location) {
        this.f3362d = location;
        return this;
    }

    public Arrive<T> setTimeToTarget(float f) {
        this.f3365g = f;
        return this;
    }

    public Arrive(Steerable<T> steerable, Location<T> location) {
        super(steerable);
        this.f3365g = 0.1f;
        this.f3362d = location;
    }

    /* renamed from: c */
    public SteeringAcceleration<T> m24374c(SteeringAcceleration<T> steeringAcceleration, T t) {
        Vector sub = steeringAcceleration.linear.set(t).sub(this.f3358a.getPosition());
        float len = sub.len();
        if (len <= this.f3363e) {
            return steeringAcceleration.setZero();
        }
        Limiter m24376a = m24376a();
        float maxLinearSpeed = m24376a.getMaxLinearSpeed();
        float f = this.f3364f;
        if (len <= f) {
            maxLinearSpeed *= len / f;
        }
        sub.scl(maxLinearSpeed / len).sub(this.f3358a.getLinearVelocity()).scl(1.0f / this.f3365g).limit(m24376a.getMaxLinearAcceleration());
        steeringAcceleration.angular = 0.0f;
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Arrive<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Arrive<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Arrive<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
