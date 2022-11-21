package com.badlogic.gdx.math;

import com.badlogic.gdx.math.Vector;
import com.badlogic.gdx.utils.Array;
/* loaded from: classes.dex */
public class BSpline<T extends Vector<T>> implements Path<T> {

    /* renamed from: a */
    public T f5367a;

    /* renamed from: b */
    public T f5368b;

    /* renamed from: c */
    public T f5369c;
    public boolean continuous;
    public T[] controlPoints;
    public int degree;
    public Array<T> knots;
    public int spanCount;

    public BSpline() {
    }

    public static <T extends Vector<T>> T calculate(T t, float f, T[] tArr, int i, boolean z, T t2) {
        int length = tArr.length;
        if (!z) {
            length -= i;
        }
        float f2 = length * f;
        int i2 = f >= 1.0f ? length - 1 : (int) f2;
        return (T) calculate(t, i2, f2 - i2, tArr, i, z, t2);
    }

    public static <T extends Vector<T>> T cubic(T t, float f, T[] tArr, boolean z, T t2) {
        int length = tArr.length;
        if (!z) {
            length -= 3;
        }
        float f2 = length * f;
        int i = f >= 1.0f ? length - 1 : (int) f2;
        return (T) cubic(t, i, f2 - i, tArr, z, t2);
    }

    public static <T extends Vector<T>> T cubic_derivative(T t, float f, T[] tArr, boolean z, T t2) {
        int length = tArr.length;
        if (!z) {
            length -= 3;
        }
        float f2 = length * f;
        int i = f >= 1.0f ? length - 1 : (int) f2;
        return (T) cubic(t, i, f2 - i, tArr, z, t2);
    }

    public static <T extends Vector<T>> T derivative(T t, float f, T[] tArr, int i, boolean z, T t2) {
        int length = tArr.length;
        if (!z) {
            length -= i;
        }
        float f2 = length * f;
        int i2 = f >= 1.0f ? length - 1 : (int) f2;
        return (T) derivative(t, i2, f2 - i2, tArr, i, z, t2);
    }

    @Override // com.badlogic.gdx.math.Path
    public float approxLength(int i) {
        float f = 0.0f;
        for (int i2 = 0; i2 < i; i2++) {
            this.f5368b.set(this.f5369c);
            valueAt((BSpline<T>) this.f5369c, i2 / (i - 1.0f));
            if (i2 > 0) {
                f += this.f5368b.dst(this.f5369c);
            }
        }
        return f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.math.Path
    public /* bridge */ /* synthetic */ float approximate(Object obj) {
        return approximate((BSpline<T>) ((Vector) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.math.Path
    public /* bridge */ /* synthetic */ Object derivativeAt(Object obj, float f) {
        return derivativeAt((BSpline<T>) ((Vector) obj), f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.math.Path
    public /* bridge */ /* synthetic */ float locate(Object obj) {
        return locate((BSpline<T>) ((Vector) obj));
    }

    public int nearest(T t) {
        return nearest(t, 0, this.spanCount);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.math.Path
    public /* bridge */ /* synthetic */ Object valueAt(Object obj, float f) {
        return valueAt((BSpline<T>) ((Vector) obj), f);
    }

    public BSpline(T[] tArr, int i, boolean z) {
        set(tArr, i, z);
    }

    public float approximate(T t) {
        return approximate(t, nearest(t));
    }

    public T derivativeAt(T t, float f) {
        int i = this.spanCount;
        float f2 = i * f;
        int i2 = f >= 1.0f ? i - 1 : (int) f2;
        return derivativeAt(t, i2, f2 - i2);
    }

    public float locate(T t) {
        return approximate((BSpline<T>) t);
    }

    public int nearest(T t, int i, int i2) {
        while (i < 0) {
            i += this.spanCount;
        }
        int i3 = i % this.spanCount;
        float dst2 = t.dst2(this.knots.get(i3));
        for (int i4 = 1; i4 < i2; i4++) {
            int i5 = (i + i4) % this.spanCount;
            float dst22 = t.dst2(this.knots.get(i5));
            if (dst22 < dst2) {
                i3 = i5;
                dst2 = dst22;
            }
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BSpline set(T[] tArr, int i, boolean z) {
        int i2;
        if (this.f5367a == null) {
            this.f5367a = (T) tArr[0].cpy();
        }
        if (this.f5368b == null) {
            this.f5368b = (T) tArr[0].cpy();
        }
        if (this.f5369c == null) {
            this.f5369c = (T) tArr[0].cpy();
        }
        this.controlPoints = tArr;
        this.degree = i;
        this.continuous = z;
        int length = tArr.length;
        if (!z) {
            length -= i;
        }
        this.spanCount = length;
        Array<T> array = this.knots;
        if (array == null) {
            this.knots = new Array<>(length);
        } else {
            array.clear();
            this.knots.ensureCapacity(this.spanCount);
        }
        for (int i3 = 0; i3 < this.spanCount; i3++) {
            Array<T> array2 = this.knots;
            Vector cpy = tArr[0].cpy();
            if (z) {
                i2 = i3;
            } else {
                i2 = (int) (i3 + (i * 0.5f));
            }
            array2.add(calculate(cpy, i2, 0.0f, tArr, i, z, this.f5367a));
        }
        return this;
    }

    public T valueAt(T t, float f) {
        int i = this.spanCount;
        float f2 = i * f;
        int i2 = f >= 1.0f ? i - 1 : (int) f2;
        return valueAt(t, i2, f2 - i2);
    }

    public static <T extends Vector<T>> T calculate(T t, int i, float f, T[] tArr, int i2, boolean z, T t2) {
        if (i2 == 3) {
            return (T) cubic(t, i, f, tArr, z, t2);
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Vector<T>> T cubic(T t, int i, float f, T[] tArr, boolean z, T t2) {
        int length = tArr.length;
        float f2 = 1.0f - f;
        float f3 = f * f;
        float f4 = f3 * f;
        t.set(tArr[i]).scl((((f4 * 3.0f) - (6.0f * f3)) + 4.0f) * 0.16666667f);
        if (z || i > 0) {
            t.add(t2.set(tArr[((length + i) - 1) % length]).scl(f2 * f2 * f2 * 0.16666667f));
        }
        if (z || i < length - 1) {
            t.add(t2.set(tArr[(i + 1) % length]).scl((((-3.0f) * f4) + (f3 * 3.0f) + (f * 3.0f) + 1.0f) * 0.16666667f));
        }
        if (z || i < length - 2) {
            t.add(t2.set(tArr[(i + 2) % length]).scl(f4 * 0.16666667f));
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Vector<T>> T cubic_derivative(T t, int i, float f, T[] tArr, boolean z, T t2) {
        int length = tArr.length;
        float f2 = 1.0f - f;
        float f3 = f * f;
        t.set(tArr[i]).scl((1.5f * f3) - (2.0f * f));
        if (z || i > 0) {
            t.add(t2.set(tArr[((length + i) - 1) % length]).scl((-0.5f) * f2 * f2));
        }
        if (z || i < length - 1) {
            t.add(t2.set(tArr[(i + 1) % length]).scl(((-1.5f) * f3) + f + 0.5f));
        }
        if (z || i < length - 2) {
            t.add(t2.set(tArr[(i + 2) % length]).scl(f3 * 0.5f));
        }
        return t;
    }

    public static <T extends Vector<T>> T derivative(T t, int i, float f, T[] tArr, int i2, boolean z, T t2) {
        if (i2 == 3) {
            return (T) cubic_derivative(t, i, f, tArr, z, t2);
        }
        throw new IllegalArgumentException();
    }

    public float approximate(T t, int i, int i2) {
        return approximate(t, nearest(t, i, i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.badlogic.gdx.math.Vector] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.badlogic.gdx.math.Vector, T extends com.badlogic.gdx.math.Vector<T>] */
    public float approximate(T t, int i) {
        T t2 = this.knots.get(i);
        T t3 = this.knots.get(i > 0 ? i - 1 : this.spanCount - 1);
        T t4 = this.knots.get((i + 1) % this.spanCount);
        if (t.dst2(t4) >= t.dst2(t3)) {
            if (i <= 0) {
                i = this.spanCount;
            }
            i--;
            t4 = t2;
            t2 = t3;
        }
        float dst2 = t2.dst2(t4);
        float dst22 = t.dst2(t4);
        float dst23 = t.dst2(t2);
        float sqrt = (float) Math.sqrt(dst2);
        return (i + MathUtils.clamp((sqrt - (((dst22 + dst2) - dst23) / (2.0f * sqrt))) / sqrt, 0.0f, 1.0f)) / this.spanCount;
    }

    public T derivativeAt(T t, int i, float f) {
        boolean z = this.continuous;
        if (!z) {
            i += (int) (this.degree * 0.5f);
        }
        return (T) derivative(t, i, f, this.controlPoints, this.degree, z, this.f5367a);
    }

    public T valueAt(T t, int i, float f) {
        boolean z = this.continuous;
        if (!z) {
            i += (int) (this.degree * 0.5f);
        }
        return (T) calculate(t, i, f, this.controlPoints, this.degree, z, this.f5367a);
    }
}
