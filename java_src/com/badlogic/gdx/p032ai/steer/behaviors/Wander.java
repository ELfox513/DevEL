package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.GdxAI;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Wander */
/* loaded from: classes.dex */
public class Wander<T extends Vector<T>> extends Face<T> {

    /* renamed from: h */
    public float f3429h;

    /* renamed from: i */
    public float f3430i;

    /* renamed from: j */
    public float f3431j;

    /* renamed from: k */
    public float f3432k;

    /* renamed from: l */
    public float f3433l;

    /* renamed from: m */
    public boolean f3434m;

    /* renamed from: n */
    public T f3435n;

    /* renamed from: o */
    public T f3436o;

    public T getInternalTargetPosition() {
        return this.f3435n;
    }

    public T getWanderCenter() {
        return this.f3436o;
    }

    public float getWanderOffset() {
        return this.f3429h;
    }

    public float getWanderOrientation() {
        return this.f3433l;
    }

    public float getWanderRadius() {
        return this.f3430i;
    }

    public float getWanderRate() {
        return this.f3431j;
    }

    public boolean isFaceEnabled() {
        return this.f3434m;
    }

    public Wander<T> setFaceEnabled(boolean z) {
        this.f3434m = z;
        return this;
    }

    public Wander<T> setWanderOffset(float f) {
        this.f3429h = f;
        return this;
    }

    public Wander<T> setWanderOrientation(float f) {
        this.f3433l = f;
        return this;
    }

    public Wander<T> setWanderRadius(float f) {
        this.f3430i = f;
        return this;
    }

    public Wander<T> setWanderRate(float f) {
        this.f3431j = f;
        return this;
    }

    public Wander(Steerable<T> steerable) {
        super(steerable);
        this.f3435n = m24375b(steerable);
        this.f3436o = m24375b(steerable);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Face, com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        float time = GdxAI.getTimepiece().getTime();
        float f = this.f3432k;
        if (f > 0.0f) {
            this.f3433l += MathUtils.randomTriangular(this.f3431j * (time - f));
        }
        this.f3432k = time;
        float orientation = this.f3433l + this.f3358a.getOrientation();
        Vector vector = this.f3436o.set(this.f3358a.getPosition());
        Steerable<T> steerable = this.f3358a;
        vector.mulAdd(steerable.angleToVector(steeringAcceleration.linear, steerable.getOrientation()), this.f3429h);
        this.f3435n.set(this.f3436o).mulAdd(this.f3358a.angleToVector(steeringAcceleration.linear, orientation), this.f3430i);
        float maxLinearAcceleration = m24376a().getMaxLinearAcceleration();
        if (this.f3434m) {
            m24373d(steeringAcceleration, this.f3435n);
            Steerable<T> steerable2 = this.f3358a;
            steerable2.angleToVector(steeringAcceleration.linear, steerable2.getOrientation()).scl(maxLinearAcceleration);
        } else {
            steeringAcceleration.linear.set(this.f3435n).sub(this.f3358a.getPosition()).nor().scl(maxLinearAcceleration);
            steeringAcceleration.angular = 0.0f;
        }
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Face, com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public Wander<T> setAlignTolerance(float f) {
        this.f3422e = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Face, com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public Wander<T> setDecelerationRadius(float f) {
        this.f3423f = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Face, com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public Wander<T> setTarget(Location<T> location) {
        this.f3421d = location;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Face, com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation
    public Wander<T> setTimeToTarget(float f) {
        this.f3424g = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Face, com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Wander<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Face, com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Wander<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Face, com.badlogic.gdx.p032ai.steer.behaviors.ReachOrientation, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Wander<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
