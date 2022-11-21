package com.badlogic.gdx.p032ai.steer.behaviors;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Limiter;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.SteeringAcceleration;
import com.badlogic.gdx.p032ai.steer.SteeringBehavior;
import com.badlogic.gdx.p032ai.steer.utils.RayConfiguration;
import com.badlogic.gdx.p032ai.utils.Collision;
import com.badlogic.gdx.p032ai.utils.Ray;
import com.badlogic.gdx.p032ai.utils.RaycastCollisionDetector;
/* renamed from: com.badlogic.gdx.ai.steer.behaviors.RaycastObstacleAvoidance */
/* loaded from: classes.dex */
public class RaycastObstacleAvoidance<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public RayConfiguration<T> f3416d;

    /* renamed from: e */
    public RaycastCollisionDetector<T> f3417e;

    /* renamed from: f */
    public float f3418f;

    /* renamed from: g */
    public Collision<T> f3419g;

    /* renamed from: h */
    public Collision<T> f3420h;

    public RaycastObstacleAvoidance(Steerable<T> steerable) {
        this(steerable, null);
    }

    public float getDistanceFromBoundary() {
        return this.f3418f;
    }

    public RayConfiguration<T> getRayConfiguration() {
        return this.f3416d;
    }

    public RaycastCollisionDetector<T> getRaycastCollisionDetector() {
        return this.f3417e;
    }

    public RaycastObstacleAvoidance<T> setDistanceFromBoundary(float f) {
        this.f3418f = f;
        return this;
    }

    public RaycastObstacleAvoidance<T> setRayConfiguration(RayConfiguration<T> rayConfiguration) {
        this.f3416d = rayConfiguration;
        return this;
    }

    public RaycastObstacleAvoidance<T> setRaycastCollisionDetector(RaycastCollisionDetector<T> raycastCollisionDetector) {
        this.f3417e = raycastCollisionDetector;
        return this;
    }

    public RaycastObstacleAvoidance(Steerable<T> steerable, RayConfiguration<T> rayConfiguration) {
        this(steerable, rayConfiguration, null);
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public SteeringAcceleration<T> calculateRealSteering(SteeringAcceleration<T> steeringAcceleration) {
        T position = this.f3358a.getPosition();
        float f = Float.POSITIVE_INFINITY;
        for (Ray<T> ray : this.f3416d.updateRays()) {
            if (this.f3417e.findCollision(this.f3419g, ray)) {
                float dst2 = position.dst2(this.f3419g.point);
                if (dst2 < f) {
                    Collision<T> collision = this.f3419g;
                    this.f3419g = this.f3420h;
                    this.f3420h = collision;
                    f = dst2;
                }
            }
        }
        if (f == Float.POSITIVE_INFINITY) {
            return steeringAcceleration.setZero();
        }
        steeringAcceleration.linear.set(this.f3420h.point).mulAdd(this.f3420h.normal, this.f3358a.getBoundingRadius() + this.f3418f).sub(this.f3358a.getPosition()).nor().scl(m24376a().getMaxLinearAcceleration());
        steeringAcceleration.angular = 0.0f;
        return steeringAcceleration;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public RaycastObstacleAvoidance<T> setEnabled(boolean z) {
        this.f3360c = z;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public RaycastObstacleAvoidance<T> setLimiter(Limiter limiter) {
        this.f3359b = limiter;
        return this;
    }

    @Override // com.badlogic.gdx.p032ai.steer.SteeringBehavior
    public RaycastObstacleAvoidance<T> setOwner(Steerable<T> steerable) {
        this.f3358a = steerable;
        return this;
    }

    public RaycastObstacleAvoidance(Steerable<T> steerable, RayConfiguration<T> rayConfiguration, RaycastCollisionDetector<T> raycastCollisionDetector) {
        this(steerable, rayConfiguration, raycastCollisionDetector, 0.0f);
    }

    public RaycastObstacleAvoidance(Steerable<T> steerable, RayConfiguration<T> rayConfiguration, RaycastCollisionDetector<T> raycastCollisionDetector, float f) {
        super(steerable);
        this.f3416d = rayConfiguration;
        this.f3417e = raycastCollisionDetector;
        this.f3418f = f;
        this.f3419g = new Collision<>(m24375b(steerable), m24375b(steerable));
        this.f3420h = new Collision<>(m24375b(steerable), m24375b(steerable));
    }
}
