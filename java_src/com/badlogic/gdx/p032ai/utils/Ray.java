package com.badlogic.gdx.p032ai.utils;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.utils.Ray */
/* loaded from: classes.dex */
public class Ray<T extends Vector<T>> {
    public T end;
    public T start;

    public Ray<T> set(Ray<T> ray) {
        this.start.set(ray.start);
        this.end.set(ray.end);
        return this;
    }

    public Ray(T t, T t2) {
        this.start = t;
        this.end = t2;
    }

    public Ray<T> set(T t, T t2) {
        this.start.set(t);
        this.end.set(t2);
        return this;
    }
}
