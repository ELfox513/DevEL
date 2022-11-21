package com.badlogic.gdx.p032ai.steer.utils.rays;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.utils.Ray;
/* renamed from: com.badlogic.gdx.ai.steer.utils.rays.SingleRayConfiguration */
/* loaded from: classes.dex */
public class SingleRayConfiguration<T extends Vector<T>> extends RayConfigurationBase<T> {

    /* renamed from: c */
    public float f3480c;

    public SingleRayConfiguration(Steerable<T> steerable, float f) {
        super(steerable, 1);
        this.f3480c = f;
    }

    public float getLength() {
        return this.f3480c;
    }

    public void setLength(float f) {
        this.f3480c = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.utils.RayConfiguration
    public Ray<T>[] updateRays() {
        this.f3479b[0].start.set(this.f3478a.getPosition());
        this.f3479b[0].end.set(this.f3478a.getLinearVelocity()).nor().scl(this.f3480c).add(this.f3479b[0].start);
        return this.f3479b;
    }
}
