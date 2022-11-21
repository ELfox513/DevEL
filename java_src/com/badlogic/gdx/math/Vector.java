package com.badlogic.gdx.math;

import com.badlogic.gdx.math.Vector;
/* loaded from: classes.dex */
public interface Vector<T extends Vector<T>> {
    T add(T t);

    T clamp(float f, float f2);

    T cpy();

    float dot(T t);

    float dst(T t);

    float dst2(T t);

    boolean epsilonEquals(T t, float f);

    boolean hasOppositeDirection(T t);

    boolean hasSameDirection(T t);

    T interpolate(T t, float f, Interpolation interpolation);

    boolean isCollinear(T t);

    boolean isCollinear(T t, float f);

    boolean isCollinearOpposite(T t);

    boolean isCollinearOpposite(T t, float f);

    boolean isOnLine(T t);

    boolean isOnLine(T t, float f);

    boolean isPerpendicular(T t);

    boolean isPerpendicular(T t, float f);

    boolean isUnit();

    boolean isUnit(float f);

    boolean isZero();

    boolean isZero(float f);

    float len();

    float len2();

    T lerp(T t, float f);

    T limit(float f);

    T limit2(float f);

    T mulAdd(T t, float f);

    T mulAdd(T t, T t2);

    T nor();

    T scl(float f);

    T scl(T t);

    T set(T t);

    T setLength(float f);

    T setLength2(float f);

    T setToRandomDirection();

    T setZero();

    T sub(T t);
}
