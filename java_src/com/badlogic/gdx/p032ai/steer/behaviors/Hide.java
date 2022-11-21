package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Proximity;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Hide */
/* loaded from: classes.dex */
public class Hide<T extends Vector<T>> extends Arrive<T> implements Proximity.ProximityCallback<T> {

    /* renamed from: h */
    public Proximity<T> f3387h;

    /* renamed from: i */
    public float f3388i;

    /* renamed from: j */
    public T f3389j;

    /* renamed from: k */
    public T f3390k;

    /* renamed from: l */
    public float f3391l;

    public Hide(Steerable<T> steerable) {
        this(steerable, null);
    }

    public float getDistanceFromBoundary() {
        return this.f3388i;
    }

    public Proximity<T> getProximity() {
        return this.f3387h;
    }

    public Hide<T> setDistanceFromBoundary(float f) {
        this.f3388i = f;
        return this;
    }

    public Hide<T> setProximity(Proximity<T> proximity) {
        this.f3387h = proximity;
        return this;
    }

    public Hide(Steerable<T> steerable, Location<T> location) {
        this(steerable, location, null);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        this.f3391l = Float.POSITIVE_INFINITY;
        this.f3389j = steeringAcceleration.linear;
        if (this.f3387h.findNeighbors(this) == 0) {
            return steeringAcceleration.setZero();
        }
        return m24374c(steeringAcceleration, this.f3390k);
    }

    /* renamed from: d */
    public T m24372d(T t, float f, T t2) {
        float f2 = f + this.f3388i;
        this.f3389j.set(t).sub(t2).nor();
        return (T) this.f3389j.scl(f2).add(t);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public Hide<T> setArrivalTolerance(float f) {
        this.f3363e = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public Hide<T> setDecelerationRadius(float f) {
        this.f3364f = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public Hide<T> setTarget(Location<T> location) {
        this.f3362d = location;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public Hide<T> setTimeToTarget(float f) {
        this.f3365g = f;
        return this;
    }

    public Hide(Steerable<T> steerable, Location<T> location, Proximity<T> proximity) {
        super(steerable, location);
        this.f3387h = proximity;
        this.f3390k = m24375b(steerable);
        this.f3389j = null;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Proximity.ProximityCallback
    public boolean reportNeighbor(Steerable<T> steerable) {
        T m24372d = m24372d(steerable.getPosition(), steerable.getBoundingRadius(), this.f3362d.getPosition());
        float dst2 = m24372d.dst2(this.f3358a.getPosition());
        if (dst2 < this.f3391l) {
            this.f3391l = dst2;
            this.f3390k.set(m24372d);
            return true;
        }
        return false;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Hide<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Hide<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Hide<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
