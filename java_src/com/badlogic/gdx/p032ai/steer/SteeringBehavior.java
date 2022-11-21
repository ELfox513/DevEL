package com.badlogic.gdx.p032ai.steer;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.SteeringBehavior */
/* loaded from: classes.dex */
public abstract class SteeringBehavior<T extends Vector<T>> {

    /* renamed from: a */
    public Steerable<T> f3358a;

    /* renamed from: b */
    public Limiter f3359b;

    /* renamed from: c */
    public boolean f3360c;

    public SteeringBehavior(Steerable<T> steerable) {
        this(steerable, null, true);
    }

    /* renamed from: a */
    public Limiter m24376a() {
        Limiter limiter = this.f3359b;
        return limiter == null ? this.f3358a : limiter;
    }

    /* renamed from: b */
    public T m24375b(Location<T> location) {
        return (T) location.getPosition().cpy().setZero();
    }

    public abstract SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration);

    public SteeringAcceleration<T> calculateSteering(SteeringAcceleration<T> steeringAcceleration) {
        return isEnabled() ? calculateRealSteering(steeringAcceleration) : steeringAcceleration.setZero();
    }

    public Limiter getLimiter() {
        return this.f3359b;
    }

    public Steerable<T> getOwner() {
        return this.f3358a;
    }

    public boolean isEnabled() {
        return this.f3360c;
    }

    public SteeringBehavior<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    public SteeringBehavior<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    public SteeringBehavior<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }

    public SteeringBehavior(Steerable<T> steerable, Limiter limiter) {
        this(steerable, limiter, true);
    }

    public SteeringBehavior(Steerable<T> steerable, boolean z) {
        this(steerable, null, z);
    }

    public SteeringBehavior(Steerable<T> steerable, Limiter limiter, boolean z) {
        this.f3358a = steerable;
        this.f3359b = limiter;
        this.f3360c = z;
    }
}
