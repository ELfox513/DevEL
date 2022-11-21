package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.LookWhereYouAreGoing */
/* loaded from: classes.dex */
public class LookWhereYouAreGoing<T extends Vector<T>> extends ReachOrientation<T> {
    public LookWhereYouAreGoing(Steerable<T> steerable) {
        super(steerable);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        if (this.f3358a.getLinearVelocity().isZero(m24376a().getZeroLinearSpeedThreshold())) {
            return steeringAcceleration.setZero();
        }
        Steerable<T> steerable = this.f3358a;
        return m24368c(steeringAcceleration, steerable.vectorToAngle(steerable.getLinearVelocity()));
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public LookWhereYouAreGoing<T> setAlignTolerance(float f) {
        this.f3422e = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public LookWhereYouAreGoing<T> setDecelerationRadius(float f) {
        this.f3423f = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public LookWhereYouAreGoing<T> setTarget(Location<T> location) {
        this.f3421d = location;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public LookWhereYouAreGoing<T> setTimeToTarget(float f) {
        this.f3424g = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public LookWhereYouAreGoing<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public LookWhereYouAreGoing<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public LookWhereYouAreGoing<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
