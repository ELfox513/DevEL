package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Face */
/* loaded from: classes.dex */
public class Face<T extends Vector<T>> extends ReachOrientation<T> {
    public Face(Steerable<T> steerable) {
        this(steerable, null);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        return m24373d(steeringAcceleration, this.f3421d.getPosition());
    }

    public Face(Steerable<T> steerable, Location<T> location) {
        super(steerable, location);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public SteeringAcceleration<T> m24373d(SteeringAcceleration<T> steeringAcceleration, T t) {
        Vector sub = steeringAcceleration.linear.set(t).sub(this.f3358a.getPosition());
        if (sub.isZero(m24376a().getZeroLinearSpeedThreshold())) {
            return steeringAcceleration.setZero();
        }
        return m24368c(steeringAcceleration, this.f3358a.vectorToAngle(sub));
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public Face<T> setAlignTolerance(float f) {
        this.f3422e = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public Face<T> setDecelerationRadius(float f) {
        this.f3423f = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public Face<T> setTarget(Location<T> location) {
        this.f3421d = location;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public Face<T> setTimeToTarget(float f) {
        this.f3424g = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Face<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Face<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Face<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
