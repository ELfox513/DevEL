package com.badlogic.gdx.p032ai.steer.proximities;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.Proximity;
import com.badlogic.gdx.p032ai.steer.Steerable;
/* renamed from: com.badlogic.gdx.ai.steer.proximities.ProximityBase */
/* loaded from: classes.dex */
public abstract class ProximityBase<T extends Vector<T>> implements Proximity<T> {

    /* renamed from: a */
    public Steerable<T> f3456a;

    /* renamed from: b */
    public Iterable<? extends Steerable<T>> f3457b;

    public Iterable<? extends Steerable<T>> getAgents() {
        return this.f3457b;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Proximity
    public Steerable<T> getOwner() {
        return this.f3456a;
    }

    public void setAgents(Iterable<Steerable<T>> iterable) {
        this.f3457b = iterable;
    }

    @Override // com.badlogic.gdx.p032ai.steer.Proximity
    public void setOwner(Steerable<T> steerable) {
        this.f3456a = steerable;
    }

    public ProximityBase(Steerable<T> steerable, Iterable<? extends Steerable<T>> iterable) {
        this.f3456a = steerable;
        this.f3457b = iterable;
    }
}
