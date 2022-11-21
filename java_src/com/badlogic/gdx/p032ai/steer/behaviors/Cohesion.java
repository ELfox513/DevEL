package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.GroupBehavior;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Proximity;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Cohesion */
/* loaded from: classes.dex */
public class Cohesion<T extends Vector<T>> extends GroupBehavior<T> implements Proximity.ProximityCallback<T> {

    /* renamed from: e */
    public T f3370e;

    public Cohesion(Steerable<T> steerable, Proximity<T> proximity) {
        super(steerable, proximity);
    }

    @Override // com.badlogic.gdx.p032ai.steer.Proximity.ProximityCallback
    public boolean reportNeighbor(Steerable<T> steerable) {
        this.f3370e.add(steerable.getPosition());
        return true;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Cohesion<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Cohesion<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Cohesion<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        steeringAcceleration.setZero();
        this.f3370e = steeringAcceleration.linear;
        int findNeighbors = this.f3357d.findNeighbors(this);
        if (findNeighbors > 0) {
            this.f3370e.scl(1.0f / findNeighbors);
            this.f3370e.sub(this.f3358a.getPosition()).nor().scl(m24376a().getMaxLinearAcceleration());
        }
        return steeringAcceleration;
    }
}
