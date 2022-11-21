package com.badlogic.gdx.p032ai.steer.utils.rays;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Steerable;
import com.badlogic.gdx.p032ai.utils.Ray;
/* renamed from: com.badlogic.gdx.ai.steer.utils.rays.CentralRayWithWhiskersConfiguration */
/* loaded from: classes.dex */
public class CentralRayWithWhiskersConfiguration<T extends Vector<T>> extends RayConfigurationBase<T> {

    /* renamed from: c */
    public float f3473c;

    /* renamed from: d */
    public float f3474d;

    /* renamed from: e */
    public float f3475e;

    public CentralRayWithWhiskersConfiguration(Steerable<T> steerable, float f, float f2, float f3) {
        super(steerable, 3);
        this.f3473c = f;
        this.f3474d = f2;
        this.f3475e = f3;
    }

    public float getRayLength() {
        return this.f3473c;
    }

    public float getWhiskerAngle() {
        return this.f3475e;
    }

    public float getWhiskerLength() {
        return this.f3474d;
    }

    public void setRayLength(float f) {
        this.f3473c = f;
    }

    public void setWhiskerAngle(float f) {
        this.f3475e = f;
    }

    public void setWhiskerLength(float f) {
        this.f3474d = f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.utils.RayConfiguration
    public Ray<T>[] updateRays() {
        T position = this.f3478a.getPosition();
        T linearVelocity = this.f3478a.getLinearVelocity();
        float vectorToAngle = this.f3478a.vectorToAngle(linearVelocity);
        this.f3479b[0].start.set(position);
        this.f3479b[0].end.set(linearVelocity).nor().scl(this.f3473c).add(position);
        this.f3479b[1].start.set(position);
        this.f3478a.angleToVector(this.f3479b[1].end, vectorToAngle - this.f3475e).scl(this.f3474d).add(position);
        this.f3479b[2].start.set(position);
        this.f3478a.angleToVector(this.f3479b[2].end, vectorToAngle + this.f3475e).scl(this.f3474d).add(position);
        return this.f3479b;
    }
}
