package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Interpose */
/* loaded from: classes.dex */
public class Interpose<T extends Vector<T>> extends Arrive<T> {

    /* renamed from: h */
    public Steerable<T> f3392h;

    /* renamed from: i */
    public Steerable<T> f3393i;

    /* renamed from: j */
    public float f3394j;

    /* renamed from: k */
    public T f3395k;

    public Interpose(Steerable<T> steerable, Steerable<T> steerable2, Steerable<T> steerable3) {
        this(steerable, steerable2, steerable3, 0.5f);
    }

    public Steerable<T> getAgentA() {
        return this.f3392h;
    }

    public Steerable<T> getAgentB() {
        return this.f3393i;
    }

    public T getInternalTargetPosition() {
        return this.f3395k;
    }

    public float getInterpositionRatio() {
        return this.f3394j;
    }

    public Interpose<T> setAgentA(Steerable<T> steerable) {
        this.f3392h = steerable;
        return this;
    }

    public Interpose<T> setAgentB(Steerable<T> steerable) {
        this.f3393i = steerable;
        return this;
    }

    public Interpose<T> setInterpositionRatio(float f) {
        this.f3394j = f;
        return this;
    }

    public Interpose(Steerable<T> steerable, Steerable<T> steerable2, Steerable<T> steerable3, float f) {
        super(steerable);
        this.f3392h = steerable2;
        this.f3393i = steerable3;
        this.f3394j = f;
        this.f3395k = m24375b(steerable);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        this.f3395k.set(this.f3393i.getPosition()).sub(this.f3392h.getPosition()).scl(this.f3394j).add(this.f3392h.getPosition());
        float dst = this.f3358a.getPosition().dst(this.f3395k) / m24376a().getMaxLinearSpeed();
        steeringAcceleration.linear.set(this.f3392h.getPosition()).mulAdd(this.f3392h.getLinearVelocity(), dst);
        this.f3395k.set(this.f3393i.getPosition()).mulAdd(this.f3393i.getLinearVelocity(), dst);
        this.f3395k.sub(steeringAcceleration.linear).scl(this.f3394j).add(steeringAcceleration.linear);
        return m24374c(steeringAcceleration, this.f3395k);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public Interpose<T> setArrivalTolerance(float f) {
        this.f3363e = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public Interpose<T> setDecelerationRadius(float f) {
        this.f3364f = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public Interpose<T> setTarget(Location<T> location) {
        this.f3362d = location;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public Interpose<T> setTimeToTarget(float f) {
        this.f3365g = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Interpose<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Interpose<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Interpose<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
