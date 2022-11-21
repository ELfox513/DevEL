package com.badlogic.gdx.p032ai.steer.utils.rays;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.steer.utils.RayConfiguration;
import com.badlogic.gdx.p032ai.utils.Ray;
/* renamed from: com.badlogic.gdx.ai.steer.utils.rays.RayConfigurationBase */
/* loaded from: classes.dex */
public abstract class RayConfigurationBase<T extends Vector<T>> implements RayConfiguration<T> {

    /* renamed from: a */
    public Steerable<T> f3478a;

    /* renamed from: b */
    public Ray<T>[] f3479b;

    public Steerable<T> getOwner() {
        return this.f3478a;
    }

    public Ray<T>[] getRays() {
        return this.f3479b;
    }

    public void setOwner(Steerable<T> steerable) {
        this.f3478a = steerable;
    }

    public void setRays(Ray<T>[] rayArr) {
        this.f3479b = rayArr;
    }

    public RayConfigurationBase(Steerable<T> steerable, int i) {
        this.f3478a = steerable;
        this.f3479b = new Ray[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.f3479b[i2] = new Ray<>(steerable.getPosition().cpy().setZero(), steerable.getPosition().cpy().setZero());
        }
    }
}
