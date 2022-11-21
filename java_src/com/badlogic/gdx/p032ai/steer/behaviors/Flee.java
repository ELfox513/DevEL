package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Flee */
/* loaded from: classes.dex */
public class Flee<T extends Vector<T>> extends Seek<T> {
    public Flee(Steerable<T> steerable) {
        this(steerable, null);
    }

    public Flee(Steerable<T> steerable, Location<T> location) {
        super(steerable, location);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Seek, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        steeringAcceleration.linear.set(this.f3358a.getPosition()).sub(this.f3425d.getPosition()).nor().scl(m24376a().getMaxLinearAcceleration());
        steeringAcceleration.angular = 0.0f;
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Seek
    public Flee<T> setTarget(Location<T> location) {
        this.f3425d = location;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Seek, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Flee<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Seek, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Flee<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Seek, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Flee<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
