package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.SteeringBehavior;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Seek */
/* loaded from: classes.dex */
public class Seek<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public Location<T> f3425d;

    public Seek(Steerable<T> steerable) {
        this(steerable, null);
    }

    public Location<T> getTarget() {
        return this.f3425d;
    }

    public Seek<T> setTarget(Location<T> location) {
        this.f3425d = location;
        return this;
    }

    public Seek(Steerable<T> steerable, Location<T> location) {
        super(steerable);
        this.f3425d = location;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        steeringAcceleration.linear.set(this.f3425d.getPosition()).sub(this.f3358a.getPosition()).nor().scl(m24376a().getMaxLinearAcceleration());
        steeringAcceleration.angular = 0.0f;
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Seek<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Seek<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Seek<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
