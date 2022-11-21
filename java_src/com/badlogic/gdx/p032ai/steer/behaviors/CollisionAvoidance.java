package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.GroupBehavior;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Proximity;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.CollisionAvoidance */
/* loaded from: classes.dex */
public class CollisionAvoidance<T extends Vector<T>> extends GroupBehavior<T> implements Proximity.ProximityCallback<T> {

    /* renamed from: e */
    public float f3371e;

    /* renamed from: f */
    public Steerable<T> f3372f;

    /* renamed from: g */
    public float f3373g;

    /* renamed from: h */
    public float f3374h;

    /* renamed from: i */
    public T f3375i;

    /* renamed from: j */
    public T f3376j;

    /* renamed from: k */
    public T f3377k;

    /* renamed from: l */
    public T f3378l;

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        this.f3371e = Float.POSITIVE_INFINITY;
        this.f3372f = null;
        this.f3373g = 0.0f;
        this.f3374h = 0.0f;
        this.f3377k = steeringAcceleration.linear;
        if (this.f3357d.findNeighbors(this) != 0 && this.f3372f != null) {
            if (this.f3373g > 0.0f && this.f3374h >= this.f3358a.getBoundingRadius() + this.f3372f.getBoundingRadius()) {
                this.f3377k.set(this.f3375i).mulAdd(this.f3376j, this.f3371e);
            } else {
                this.f3377k.set(this.f3372f.getPosition()).sub(this.f3358a.getPosition());
            }
            this.f3377k.nor().scl(-m24376a().getMaxLinearAcceleration());
            steeringAcceleration.angular = 0.0f;
            return steeringAcceleration;
        }
        return steeringAcceleration.setZero();
    }

    @Override // com.badlogic.gdx.p032ai.steer.Proximity.ProximityCallback
    public boolean reportNeighbor(Steerable<T> steerable) {
        this.f3377k.set(steerable.getPosition()).sub(this.f3358a.getPosition());
        this.f3378l.set(steerable.getLinearVelocity()).sub(this.f3358a.getLinearVelocity());
        float len2 = this.f3378l.len2();
        if (len2 == 0.0f) {
            return false;
        }
        float f = (-this.f3377k.dot(this.f3378l)) / len2;
        if (f <= 0.0f || f >= this.f3371e) {
            return false;
        }
        float len = this.f3377k.len();
        float sqrt = len - (((float) Math.sqrt(len2)) * f);
        if (sqrt > this.f3358a.getBoundingRadius() + steerable.getBoundingRadius()) {
            return false;
        }
        this.f3371e = f;
        this.f3372f = steerable;
        this.f3373g = sqrt;
        this.f3374h = len;
        this.f3375i.set(this.f3377k);
        this.f3376j.set(this.f3378l);
        return true;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public CollisionAvoidance<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public CollisionAvoidance<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public CollisionAvoidance<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }

    public CollisionAvoidance(Steerable<T> steerable, Proximity<T> proximity) {
        super(steerable, proximity);
        this.f3375i = m24375b(steerable);
        this.f3376j = m24375b(steerable);
        this.f3378l = m24375b(steerable);
    }
}
