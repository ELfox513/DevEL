package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.SteeringBehavior;
import com.badlogic.gdx.utils.Array;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.BlendedSteering */
/* loaded from: classes.dex */
public class BlendedSteering<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public Array<BehaviorAndWeight<T>> f3366d;

    /* renamed from: e */
    public SteeringAcceleration<T> f3367e;

    public BlendedSteering<T> add(SteeringBehavior<T> steeringBehavior, float f) {
        return add(new BehaviorAndWeight<>(steeringBehavior, f));
    }

    public BehaviorAndWeight<T> get(int i) {
        return this.f3366d.get(i);
    }

    public void remove(BehaviorAndWeight<T> behaviorAndWeight) {
        this.f3366d.removeValue(behaviorAndWeight, true);
    }

    /* renamed from: com.badlogic.gdx.ai.steer.behaviors.BlendedSteering$BehaviorAndWeight */
    /* loaded from: classes.dex */
    public static class BehaviorAndWeight<T extends Vector<T>> {

        /* renamed from: a */
        public SteeringBehavior<T> f3368a;

        /* renamed from: b */
        public float f3369b;

        public SteeringBehavior<T> getBehavior() {
            return this.f3368a;
        }

        public float getWeight() {
            return this.f3369b;
        }

        public void setBehavior(SteeringBehavior<T> steeringBehavior) {
            this.f3368a = steeringBehavior;
        }

        public void setWeight(float f) {
            this.f3369b = f;
        }

        public BehaviorAndWeight(SteeringBehavior<T> steeringBehavior, float f) {
            this.f3368a = steeringBehavior;
            this.f3369b = f;
        }
    }

    public BlendedSteering<T> add(BehaviorAndWeight<T> behaviorAndWeight) {
        behaviorAndWeight.f3368a.setOwner(this.f3358a);
        this.f3366d.add(behaviorAndWeight);
        return this;
    }

    public void remove(SteeringBehavior<T> steeringBehavior) {
        int i = 0;
        while (true) {
            Array<BehaviorAndWeight<T>> array = this.f3366d;
            if (i >= array.size) {
                return;
            }
            if (array.get(i).f3368a == steeringBehavior) {
                this.f3366d.removeIndex(i);
                return;
            }
            i++;
        }
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public BlendedSteering<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public BlendedSteering<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public BlendedSteering<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }

    public BlendedSteering(Steerable<T> steerable) {
        super(steerable);
        this.f3366d = new Array<>();
        this.f3367e = new SteeringAcceleration<>(m24375b(steerable));
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        steeringAcceleration.setZero();
        int i = this.f3366d.size;
        for (int i2 = 0; i2 < i; i2++) {
            BehaviorAndWeight<T> behaviorAndWeight = this.f3366d.get(i2);
            behaviorAndWeight.f3368a.calculateSteering(this.f3367e);
            steeringAcceleration.mulAdd(this.f3367e, behaviorAndWeight.f3369b);
        }
        Limiter m24376a = m24376a();
        steeringAcceleration.linear.limit(m24376a.getMaxLinearAcceleration());
        if (steeringAcceleration.angular > m24376a.getMaxAngularAcceleration()) {
            steeringAcceleration.angular = m24376a.getMaxAngularAcceleration();
        }
        return steeringAcceleration;
    }
}
