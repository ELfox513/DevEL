package com.badlogic.gdx.p032ai.steer.proximities;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Proximity;
import com.badlogic.gdx.p032ai.steer.Steerable;
/* renamed from: com.badlogic.gdx.ai.steer.proximities.InfiniteProximity */
/* loaded from: classes.dex */
public class InfiniteProximity<T extends Vector<T>> extends ProximityBase<T> {
    public InfiniteProximity(Steerable<T> steerable, Iterable<? extends Steerable<T>> iterable) {
        super(steerable, iterable);
    }

    @Override // com.badlogic.gdx.p032ai.steer.Proximity
    public int findNeighbors(Proximity.ProximityCallback<T> proximityCallback) {
        int i = 0;
        for (Steerable<T> steerable : this.f3457b) {
            if (steerable != this.f3456a && proximityCallback.reportNeighbor(steerable)) {
                i++;
            }
        }
        return i;
    }
}
