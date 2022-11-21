package com.badlogic.gdx.p032ai.steer;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.steer.Proximity */
/* loaded from: classes.dex */
public interface Proximity<T extends Vector<T>> {

    /* renamed from: com.badlogic.gdx.ai.steer.Proximity$ProximityCallback */
    /* loaded from: classes.dex */
    public interface ProximityCallback<T extends Vector<T>> {
        boolean reportNeighbor(Steerable<T> steerable);
    }

    int findNeighbors(ProximityCallback<T> proximityCallback);

    Steerable<T> getOwner();

    void setOwner(Steerable<T> steerable);
}
