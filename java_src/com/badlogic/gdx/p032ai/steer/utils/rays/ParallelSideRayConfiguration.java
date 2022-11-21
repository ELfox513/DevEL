package com.badlogic.gdx.p032ai.steer.utils.rays;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.utils.Ray;
/* renamed from: com.badlogic.gdx.ai.steer.utils.rays.ParallelSideRayConfiguration */
/* loaded from: classes.dex */
public class ParallelSideRayConfiguration<T extends Vector<T>> extends RayConfigurationBase<T> {

    /* renamed from: c */
    public float f3476c;

    /* renamed from: d */
    public float f3477d;

    public ParallelSideRayConfiguration(Steerable<T> steerable, float f, float f2) {
        super(steerable, 2);
        this.f3476c = f;
        this.f3477d = f2;
    }

    public float getLength() {
        return this.f3476c;
    }

    public float getSideOffset() {
        return this.f3477d;
    }

    public void setLength(float f) {
        this.f3476c = f;
    }

    public void setSideOffset(float f) {
        this.f3477d = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.utils.RayConfiguration
    public Ray<T>[] updateRays() {
        Steerable<T> steerable = this.f3478a;
        float vectorToAngle = steerable.vectorToAngle(steerable.getLinearVelocity());
        this.f3478a.angleToVector(this.f3479b[0].start, vectorToAngle - 1.5707964f).scl(this.f3477d).add(this.f3478a.getPosition());
        this.f3479b[0].end.set(this.f3478a.getLinearVelocity()).nor().scl(this.f3476c);
        this.f3478a.angleToVector(this.f3479b[1].start, vectorToAngle + 1.5707964f).scl(this.f3477d).add(this.f3478a.getPosition());
        Ray<T>[] rayArr = this.f3479b;
        rayArr[1].end.set(rayArr[0].end).add(this.f3479b[1].start);
        Ray<T> ray = this.f3479b[0];
        ray.end.add(ray.start);
        return this.f3479b;
    }
}
