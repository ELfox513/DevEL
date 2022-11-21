package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.SteeringBehavior;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.MatchVelocity */
/* loaded from: classes.dex */
public class MatchVelocity<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public Steerable<T> f3409d;

    /* renamed from: e */
    public float f3410e;

    public MatchVelocity(Steerable<T> steerable) {
        this(steerable, null);
    }

    public Steerable<T> getTarget() {
        return this.f3409d;
    }

    public float getTimeToTarget() {
        return this.f3410e;
    }

    public MatchVelocity<T> setTarget(Steerable<T> steerable) {
        this.f3409d = steerable;
        return this;
    }

    public MatchVelocity<T> setTimeToTarget(float f) {
        this.f3410e = f;
        return this;
    }

    public MatchVelocity(Steerable<T> steerable, Steerable<T> steerable2) {
        this(steerable, steerable2, 0.1f);
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        steeringAcceleration.linear.set(this.f3409d.getLinearVelocity()).sub(this.f3358a.getLinearVelocity()).scl(1.0f / this.f3410e).limit(m24376a().getMaxLinearAcceleration());
        steeringAcceleration.angular = 0.0f;
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public MatchVelocity<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public MatchVelocity<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public MatchVelocity<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }

    public MatchVelocity(Steerable<T> steerable, Steerable<T> steerable2, float f) {
        super(steerable);
        this.f3409d = steerable2;
        this.f3410e = f;
    }
}
