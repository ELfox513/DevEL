package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.utils.Path;
import com.badlogic.gdx.p032ai.steer.utils.Path.PathParam;
import com.badlogic.gdx.p032ai.utils.Location;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.FollowPath */
/* loaded from: classes.dex */
public class FollowPath<T extends Vector<T>, P extends Path.PathParam> extends Arrive<T> {

    /* renamed from: h */
    public Path<T, P> f3381h;

    /* renamed from: i */
    public float f3382i;

    /* renamed from: j */
    public P f3383j;

    /* renamed from: k */
    public boolean f3384k;

    /* renamed from: l */
    public float f3385l;

    /* renamed from: m */
    public T f3386m;

    public FollowPath(Steerable<T> steerable, Path<T, P> path) {
        this(steerable, path, 0.0f);
    }

    public T getInternalTargetPosition() {
        return this.f3386m;
    }

    public Path<T, P> getPath() {
        return this.f3381h;
    }

    public float getPathOffset() {
        return this.f3382i;
    }

    public P getPathParam() {
        return this.f3383j;
    }

    public float getPredictionTime() {
        return this.f3385l;
    }

    public boolean isArriveEnabled() {
        return this.f3384k;
    }

    public FollowPath<T, P> setArriveEnabled(boolean z) {
        this.f3384k = z;
        return this;
    }

    public FollowPath<T, P> setPath(Path<T, P> path) {
        this.f3381h = path;
        return this;
    }

    public FollowPath<T, P> setPathOffset(float f) {
        this.f3382i = f;
        return this;
    }

    public FollowPath<T, P> setPredictionTime(float f) {
        this.f3385l = f;
        return this;
    }

    public FollowPath(Steerable<T> steerable, Path<T, P> path, float f) {
        this(steerable, path, f, 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        Vector mulAdd;
        if (this.f3385l == 0.0f) {
            mulAdd = this.f3358a.getPosition();
        } else {
            mulAdd = steeringAcceleration.linear.set(this.f3358a.getPosition()).mulAdd(this.f3358a.getLinearVelocity(), this.f3385l);
        }
        float calculateDistance = this.f3381h.calculateDistance(mulAdd, this.f3383j) + this.f3382i;
        this.f3381h.calculateTargetPosition(this.f3386m, this.f3383j, calculateDistance);
        if (this.f3384k && this.f3381h.isOpen()) {
            if (this.f3382i >= 0.0f) {
                if (calculateDistance > this.f3381h.getLength() - this.f3364f) {
                    return m24374c(steeringAcceleration, this.f3386m);
                }
            } else if (calculateDistance < this.f3364f) {
                return m24374c(steeringAcceleration, this.f3386m);
            }
        }
        steeringAcceleration.linear.set(this.f3386m).sub(this.f3358a.getPosition()).nor().scl(m24376a().getMaxLinearAcceleration());
        steeringAcceleration.angular = 0.0f;
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public FollowPath<T, P> setArrivalTolerance(float f) {
        this.f3363e = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public FollowPath<T, P> setDecelerationRadius(float f) {
        this.f3364f = f;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public FollowPath<T, P> setTarget(Location<T> location) {
        this.f3362d = location;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive
    public FollowPath<T, P> setTimeToTarget(float f) {
        this.f3365g = f;
        return this;
    }

    public FollowPath(Steerable<T> steerable, Path<T, P> path, float f, float f2) {
        super(steerable);
        this.f3381h = path;
        this.f3383j = path.createParam();
        this.f3382i = f;
        this.f3385l = f2;
        this.f3384k = true;
        this.f3386m = m24375b(steerable);
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public FollowPath<T, P> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public FollowPath<T, P> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.behaviors.Arrive, com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public FollowPath<T, P> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }
}
