package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.Evade */
/* loaded from: classes.dex */
public class Evade<T extends Vector<T>> extends Pursue<T> {
    public Evade(Steerable<T> steerable, Steerable<T> steerable2) {
        this(steerable, steerable2, 1.0f);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Pursue
    /* renamed from: c */
    public float mo24369c() {
        return -m24376a().getMaxLinearAcceleration();
    }

    public Evade(Steerable<T> steerable, Steerable<T> steerable2, float f) {
        super(steerable, steerable2, f);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Pursue
    public Evade<T> setTarget(Steerable<T> steerable) {
        this.f3414d = steerable;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Pursue, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Evade<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Pursue, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Evade<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Pursue, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public Evade<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
