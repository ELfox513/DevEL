package com.badlogic.gdx.p032ai.steer.proximities;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.GdxAI;
import com.badlogic.gdx.p032ai.steer.Proximity;
import com.badlogic.gdx.p032ai.steer.Steerable;
/* renamed from: com.badlogic.gdx.ai.steer.proximities.FieldOfViewProximity */
/* loaded from: classes.dex */
public class FieldOfViewProximity<T extends Vector<T>> extends ProximityBase<T> {

    /* renamed from: c */
    public float f3450c;

    /* renamed from: d */
    public float f3451d;

    /* renamed from: e */
    public float f3452e;

    /* renamed from: f */
    public float f3453f;

    /* renamed from: g */
    public T f3454g;

    /* renamed from: h */
    public T f3455h;

    public float getAngle() {
        return this.f3451d;
    }

    public float getRadius() {
        return this.f3450c;
    }

    public void setRadius(float f) {
        this.f3450c = f;
    }

    public void setAngle(float f) {
        this.f3451d = f;
        this.f3452e = (float) Math.cos(f * 0.5f);
    }

    public FieldOfViewProximity(Steerable<T> steerable, Iterable<? extends Steerable<T>> iterable, float f, float f2) {
        super(steerable, iterable);
        this.f3450c = f;
        setAngle(f2);
        this.f3453f = 0.0f;
        this.f3454g = (T) steerable.getPosition().cpy().setZero();
        this.f3455h = (T) steerable.getPosition().cpy().setZero();
    }

    @Override // com.badlogic.gdx.p032ai.steer.Proximity
    public int findNeighbors(Proximity.ProximityCallback<T> proximityCallback) {
        float time = GdxAI.getTimepiece().getTime();
        int i = 0;
        if (this.f3453f != time) {
            this.f3453f = time;
            T position = this.f3456a.getPosition();
            Steerable<T> steerable = this.f3456a;
            steerable.angleToVector(this.f3454g, steerable.getOrientation());
            int i2 = 0;
            for (Steerable<T> steerable2 : this.f3457b) {
                if (steerable2 != this.f3456a) {
                    this.f3455h.set(steerable2.getPosition()).sub(position);
                    float boundingRadius = this.f3450c + steerable2.getBoundingRadius();
                    if (this.f3455h.len2() < boundingRadius * boundingRadius && this.f3454g.dot(this.f3455h) > this.f3452e && proximityCallback.reportNeighbor(steerable2)) {
                        steerable2.setTagged(true);
                        i2++;
                    }
                }
                steerable2.setTagged(false);
            }
            return i2;
        }
        for (Steerable<T> steerable3 : this.f3457b) {
            if (steerable3 != this.f3456a && steerable3.isTagged() && proximityCallback.reportNeighbor(steerable3)) {
                i++;
            }
        }
        return i;
    }
}
