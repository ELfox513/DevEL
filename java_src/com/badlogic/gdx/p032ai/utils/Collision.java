package com.badlogic.gdx.p032ai.utils;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.utils.Collision */
/* loaded from: classes.dex */
public class Collision<T extends Vector<T>> {
    public T normal;
    public T point;

    public Collision<T> set(Collision<T> collision) {
        this.point.set(collision.point);
        this.normal.set(collision.normal);
        return this;
    }

    public Collision(T t, T t2) {
        this.point = t;
        this.normal = t2;
    }

    public Collision<T> set(T t, T t2) {
        this.point.set(t);
        this.normal.set(t2);
        return this;
    }
}
