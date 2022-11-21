package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.SteeringBehavior;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.FollowFlowField */
/* loaded from: classes.dex */
public class FollowFlowField<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public FlowField<T> f3379d;

    /* renamed from: e */
    public float f3380e;

    /* renamed from: com.badlogic.gdx.ai.steer.behaviors.FollowFlowField$FlowField */
    /* loaded from: classes.dex */
    public interface FlowField<T extends Vector<T>> {
        T lookup(T t);
    }

    public FollowFlowField(Steerable<T> steerable) {
        this(steerable, null);
    }

    public FlowField<T> getFlowField() {
        return this.f3379d;
    }

    public float getPredictionTime() {
        return this.f3380e;
    }

    public FollowFlowField<T> setFlowField(FlowField<T> flowField) {
        this.f3379d = flowField;
        return this;
    }

    public FollowFlowField<T> setPredictionTime(float f) {
        this.f3380e = f;
        return this;
    }

    public FollowFlowField(Steerable<T> steerable, FlowField<T> flowField) {
        this(steerable, flowField, 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        Vector mulAdd;
        if (this.f3380e == 0.0f) {
            mulAdd = this.f3358a.getPosition();
        } else {
            mulAdd = steeringAcceleration.linear.set(this.f3358a.getPosition()).mulAdd(this.f3358a.getLinearVelocity(), this.f3380e);
        }
        T lookup = this.f3379d.lookup(mulAdd);
        steeringAcceleration.setZero();
        if (lookup != null && !lookup.isZero()) {
            Limiter m24376a = m24376a();
            steeringAcceleration.linear.mulAdd(lookup, m24376a.getMaxLinearSpeed()).sub(this.f3358a.getLinearVelocity()).limit(m24376a.getMaxLinearAcceleration());
        }
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public FollowFlowField<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public FollowFlowField<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public FollowFlowField<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }

    public FollowFlowField(Steerable<T> steerable, FlowField<T> flowField, float f) {
        super(steerable);
        this.f3379d = flowField;
        this.f3380e = f;
    }
}
