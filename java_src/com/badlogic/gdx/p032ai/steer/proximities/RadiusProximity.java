package com.badlogic.gdx.p032ai.steer.proximities;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.GdxAI;
import com.badlogic.gdx.p032ai.steer.Proximity;
import com.badlogic.gdx.p032ai.steer.Steerable;
/* renamed from: com.badlogic.gdx.ai.steer.proximities.RadiusProximity */
/* loaded from: classes.dex */
public class RadiusProximity<T extends Vector<T>> extends ProximityBase<T> {

    /* renamed from: c */
    public float f3458c;

    /* renamed from: d */
    public float f3459d;

    public float getRadius() {
        return this.f3458c;
    }

    public void setRadius(float f) {
        this.f3458c = f;
    }

    public RadiusProximity(Steerable<T> steerable, Iterable<? extends Steerable<T>> iterable, float f) {
        super(steerable, iterable);
        this.f3458c = f;
        this.f3459d = 0.0f;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Proximity
    public int findNeighbors(Proximity.ProximityCallback<T> proximityCallback) {
        float time = GdxAI.getTimepiece().getTime();
        int i = 0;
        if (this.f3459d != time) {
            this.f3459d = time;
            T position = this.f3456a.getPosition();
            int i2 = 0;
            for (Steerable<T> steerable : this.f3457b) {
                if (steerable != this.f3456a) {
                    float dst2 = position.dst2(steerable.getPosition());
                    float boundingRadius = this.f3458c + steerable.getBoundingRadius();
                    if (dst2 < boundingRadius * boundingRadius && proximityCallback.reportNeighbor(steerable)) {
                        steerable.setTagged(true);
                        i2++;
                    }
                }
                steerable.setTagged(false);
            }
            return i2;
        }
        for (Steerable<T> steerable2 : this.f3457b) {
            if (steerable2 != this.f3456a && steerable2.isTagged() && proximityCallback.reportNeighbor(steerable2)) {
                i++;
            }
        }
        return i;
    }
}
