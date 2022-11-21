package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.GroupBehavior;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Proximity;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Separation */
/* loaded from: classes.dex */
public class Separation<T extends Vector<T>> extends GroupBehavior<T> implements Proximity.ProximityCallback<T> {

    /* renamed from: e */
    public float f3426e;

    /* renamed from: f */
    public T f3427f;

    /* renamed from: g */
    public T f3428g;

    public float getDecayCoefficient() {
        return this.f3426e;
    }

    public Separation<T> setDecayCoefficient(float f) {
        this.f3426e = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Proximity.ProximityCallback
    public boolean reportNeighbor(Steerable<T> steerable) {
        this.f3427f.set(this.f3358a.getPosition()).sub(steerable.getPosition());
        float len2 = this.f3427f.len2();
        if (len2 == 0.0f) {
            return true;
        }
        float maxLinearAcceleration = m24376a().getMaxLinearAcceleration();
        float decayCoefficient = getDecayCoefficient() / len2;
        if (decayCoefficient <= maxLinearAcceleration) {
            maxLinearAcceleration = decayCoefficient;
        }
        this.f3428g.mulAdd(this.f3427f, maxLinearAcceleration / ((float) Math.sqrt(len2)));
        return true;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Separation<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Separation<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Separation<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }

    public Separation(Steerable<T> steerable, Proximity<T> proximity) {
        super(steerable, proximity);
        this.f3426e = 1.0f;
        this.f3427f = m24375b(steerable);
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        steeringAcceleration.setZero();
        this.f3428g = steeringAcceleration.linear;
        this.f3357d.findNeighbors(this);
        return steeringAcceleration;
    }
}
