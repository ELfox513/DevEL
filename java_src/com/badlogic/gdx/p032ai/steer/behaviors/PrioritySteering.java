package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.SteeringBehavior;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.PrioritySteering */
/* loaded from: classes.dex */
public class PrioritySteering<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public float f3411d;

    /* renamed from: e */
    public Array<SteeringBehavior<T>> f3412e;

    /* renamed from: f */
    public int f3413f;

    public PrioritySteering(Steerable<T> steerable) {
        this(steerable, 0.001f);
    }

    public PrioritySteering<T> add(SteeringBehavior<T> steeringBehavior) {
        this.f3412e.add(steeringBehavior);
        return this;
    }

    public float getEpsilon() {
        return this.f3411d;
    }

    public int getSelectedBehaviorIndex() {
        return this.f3413f;
    }

    public PrioritySteering<T> setEpsilon(float f) {
        this.f3411d = f;
        return this;
    }

    public PrioritySteering(Steerable<T> steerable, float f) {
        super(steerable);
        this.f3412e = new Array<>();
        this.f3411d = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        float f = this.f3411d;
        float f2 = f * f;
        int i = this.f3412e.size;
        this.f3413f = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3413f = i2;
            this.f3412e.get(i2).calculateSteering(steeringAcceleration);
            if (steeringAcceleration.calculateSquareMagnitude() > f2) {
                return steeringAcceleration;
            }
        }
        if (i <= 0) {
            return steeringAcceleration.setZero();
        }
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public PrioritySteering<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public PrioritySteering<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public PrioritySteering<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
