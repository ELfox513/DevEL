package com.badlogic.gdx.p032ai.steer;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.steer.GroupBehavior */
/* loaded from: classes.dex */
public abstract class GroupBehavior<T extends Vector<T>> extends SteeringBehavior<T> {

    /* renamed from: d */
    public Proximity<T> f3357d;

    public Proximity<T> getProximity() {
        return this.f3357d;
    }

    public void setProximity(Proximity<T> proximity) {
        this.f3357d = proximity;
    }

    public GroupBehavior(Steerable<T> steerable, Proximity<T> proximity) {
        super(steerable);
        this.f3357d = proximity;
    }
}
