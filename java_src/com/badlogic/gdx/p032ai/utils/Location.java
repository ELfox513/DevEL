package com.badlogic.gdx.p032ai.utils;

import com.badlogic.gdx.math.Vector;
/* renamed from: com.badlogic.gdx.ai.utils.Location */
/* loaded from: classes.dex */
public interface Location<T extends Vector<T>> {
    T angleToVector(T t, float f);

    float getOrientation();

    T getPosition();

    Location<T> newLocation();

    void setOrientation(float f);

    float vectorToAngle(T t);
}
