package com.badlogic.gdx.p032ai.utils;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.utils.RaycastCollisionDetector */
/* loaded from: classes.dex */
public interface RaycastCollisionDetector<T extends Vector<T>> {
    boolean collides(Ray<T> ray);

    boolean findCollision(Collision<T> collision, Ray<T> ray);
}
