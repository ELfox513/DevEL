package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.SteeringBehavior;
import com.badlogic.gdx.p032ai.utils.ArithmeticUtils;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.ReachOrientation */
/* loaded from: classes.dex */
public class ReachOrientation<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public Location<T> f3421d;

    /* renamed from: e */
    public float f3422e;

    /* renamed from: f */
    public float f3423f;

    /* renamed from: g */
    public float f3424g;

    public ReachOrientation(Steerable<T> steerable) {
        this(steerable, null);
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        return m24368c(steeringAcceleration, this.f3421d.getOrientation());
    }

    public float getAlignTolerance() {
        return this.f3422e;
    }

    public float getDecelerationRadius() {
        return this.f3423f;
    }

    public Location<T> getTarget() {
        return this.f3421d;
    }

    public float getTimeToTarget() {
        return this.f3424g;
    }

    public ReachOrientation<T> setAlignTolerance(float f) {
        this.f3422e = f;
        return this;
    }

    public ReachOrientation<T> setDecelerationRadius(float f) {
        this.f3423f = f;
        return this;
    }

    public ReachOrientation<T> setTarget(Location<T> location) {
        this.f3421d = location;
        return this;
    }

    public ReachOrientation<T> setTimeToTarget(float f) {
        this.f3424g = f;
        return this;
    }

    public ReachOrientation(Steerable<T> steerable, Location<T> location) {
        super(steerable);
        this.f3424g = 0.1f;
        this.f3421d = location;
    }

    /* renamed from: c */
    public SteeringAcceleration<T> m24368c(SteeringAcceleration<T> steeringAcceleration, float f) {
        float f2;
        float wrapAngleAroundZero = ArithmeticUtils.wrapAngleAroundZero(f - this.f3358a.getOrientation());
        if (wrapAngleAroundZero < 0.0f) {
            f2 = -wrapAngleAroundZero;
        } else {
            f2 = wrapAngleAroundZero;
        }
        if (f2 <= this.f3422e) {
            return steeringAcceleration.setZero();
        }
        Limiter m24376a = m24376a();
        float maxAngularSpeed = m24376a.getMaxAngularSpeed();
        float f3 = this.f3423f;
        if (f2 <= f3) {
            maxAngularSpeed *= f2 / f3;
        }
        float angularVelocity = ((maxAngularSpeed * (wrapAngleAroundZero / f2)) - this.f3358a.getAngularVelocity()) / this.f3424g;
        steeringAcceleration.angular = angularVelocity;
        if (angularVelocity < 0.0f) {
            angularVelocity = -angularVelocity;
        }
        if (angularVelocity > m24376a.getMaxAngularAcceleration()) {
            steeringAcceleration.angular *= m24376a.getMaxAngularAcceleration() / angularVelocity;
        }
        steeringAcceleration.linear.setZero();
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public ReachOrientation<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public ReachOrientation<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public ReachOrientation<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
