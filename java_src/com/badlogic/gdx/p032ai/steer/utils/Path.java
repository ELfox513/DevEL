package com.badlogic.gdx.p032ai.steer.utils;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.p032ai.steer.utils.Path.PathParam;
/* renamed from: com.badlogic.gdx.ai.steer.utils.Path */
/* loaded from: classes.dex */
public interface Path<T extends Vector<T>, P extends PathParam> {

    /* renamed from: com.badlogic.gdx.ai.steer.utils.Path$PathParam */
    /* loaded from: classes.dex */
    public interface PathParam {
        float getDistance();

        void setDistance(float f);
    }

    float calculateDistance(T t, P p);

    void calculateTargetPosition(T t, P p, float f);

    P createParam();

    T getEndPoint();

    float getLength();

    T getStartPoint();

    boolean isOpen();
}
