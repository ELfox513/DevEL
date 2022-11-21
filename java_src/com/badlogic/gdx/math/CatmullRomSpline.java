package com.badlogic.gdx.math;

import com.badlogic.gdx.math.Vector;
/* loaded from: classes.dex */
public class CatmullRomSpline<T extends Vector<T>> implements Path<T> {

    /* renamed from: a */
    public T f5376a;

    /* renamed from: b */
    public T f5377b;

    /* renamed from: c */
    public T f5378c;
    public boolean continuous;
    public T[] controlPoints;
    public int spanCount;

    public CatmullRomSpline() {
    }

    public static <T extends Vector<T>> T calculate(T t, float f, T[] tArr, boolean z, T t2) {
        int length = tArr.length;
        if (!z) {
            length -= 3;
        }
        float f2 = length * f;
        int i = f >= 1.0f ? length - 1 : (int) f2;
        return (T) calculate(t, i, f2 - i, tArr, z, t2);
    }

    public static <T extends Vector<T>> T derivative(T t, float f, T[] tArr, boolean z, T t2) {
        int length = tArr.length;
        if (!z) {
            length -= 3;
        }
        float f2 = length * f;
        int i = f >= 1.0f ? length - 1 : (int) f2;
        return (T) derivative(t, i, f2 - i, tArr, z, t2);
    }

    @Override // com.badlogic.gdx.math.Path
    public float approxLength(int i) {
        float f = 0.0f;
        for (int i2 = 0; i2 < i; i2++) {
            this.f5377b.set(this.f5378c);
            valueAt((CatmullRomSpline<T>) this.f5378c, i2 / (i - 1.0f));
            if (i2 > 0) {
                f += this.f5377b.dst(this.f5378c);
            }
        }
        return f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.math.Path
    public /* bridge */ /* synthetic */ float approximate(Object obj) {
        return approximate((CatmullRomSpline<T>) ((Vector) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.math.Path
    public /* bridge */ /* synthetic */ Object derivativeAt(Object obj, float f) {
        return derivativeAt((CatmullRomSpline<T>) ((Vector) obj), f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.math.Path
    public /* bridge */ /* synthetic */ float locate(Object obj) {
        return locate((CatmullRomSpline<T>) ((Vector) obj));
    }

    public int nearest(T t) {
        return nearest(t, 0, this.spanCount);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.badlogic.gdx.math.Path
    public /* bridge */ /* synthetic */ Object valueAt(Object obj, float f) {
        return valueAt((CatmullRomSpline<T>) ((Vector) obj), f);
    }

    public CatmullRomSpline(T[] tArr, boolean z) {
        set(tArr, z);
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
        return approximate((CatmullRomSpline<T>) t);
    }

    public int nearest(T t, int i, int i2) {
        while (i < 0) {
            i += this.spanCount;
        }
        int i3 = i % this.spanCount;
        float dst2 = t.dst2(this.controlPoints[i3]);
        for (int i4 = 1; i4 < i2; i4++) {
            int i5 = (i + i4) % this.spanCount;
            float dst22 = t.dst2(this.controlPoints[i5]);
            if (dst22 < dst2) {
                i3 = i5;
                dst2 = dst22;
            }
        }
        return i3;
    }

    public CatmullRomSpline set(T[] tArr, boolean z) {
        if (this.f5376a == null) {
            this.f5376a = (T) tArr[0].cpy();
        }
        if (this.f5377b == null) {
            this.f5377b = (T) tArr[0].cpy();
        }
        if (this.f5378c == null) {
            this.f5378c = (T) tArr[0].cpy();
        }
        this.controlPoints = tArr;
        this.continuous = z;
        int length = tArr.length;
        if (!z) {
            length -= 3;
        }
        this.spanCount = length;
        return this;
    }

    public T valueAt(T t, float f) {
        int i = this.spanCount;
        float f2 = i * f;
        int i2 = f >= 1.0f ? i - 1 : (int) f2;
        return valueAt(t, i2, f2 - i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Vector<T>> T calculate(T t, int i, float f, T[] tArr, boolean z, T t2) {
        int length = tArr.length;
        float f2 = f * f;
        float f3 = f2 * f;
        t.set(tArr[i]).scl(((1.5f * f3) - (2.5f * f2)) + 1.0f);
        if (z || i > 0) {
            t.add(t2.set(tArr[((length + i) - 1) % length]).scl((((-0.5f) * f3) + f2) - (f * 0.5f)));
        }
        if (z || i < length - 1) {
            t.add(t2.set(tArr[(i + 1) % length]).scl(((-1.5f) * f3) + (2.0f * f2) + (f * 0.5f)));
        }
        if (z || i < length - 2) {
            t.add(t2.set(tArr[(i + 2) % length]).scl((f3 * 0.5f) - (f2 * 0.5f)));
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Vector<T>> T derivative(T t, int i, float f, T[] tArr, boolean z, T t2) {
        int length = tArr.length;
        float f2 = f * f;
        float f3 = -f;
        float f4 = 4.5f * f2;
        t.set(tArr[i]).scl((5.0f * f3) + f4);
        if (z || i > 0) {
            t.add(t2.set(tArr[((length + i) - 1) % length]).scl(((2.0f * f) - 0.5f) - (f2 * 1.5f)));
        }
        if (z || i < length - 1) {
            t.add(t2.set(tArr[(i + 1) % length]).scl(((f * 4.0f) + 0.5f) - f4));
        }
        if (z || i < length - 2) {
            t.add(t2.set(tArr[(i + 2) % length]).scl(f3 + (f2 * 1.5f)));
        }
        return t;
    }

    public float approximate(T t, int i, int i2) {
        return approximate(t, nearest(t, i, i2));
    }

    public float approximate(T t, int i) {
        T[] tArr = this.controlPoints;
        T t2 = tArr[i];
        T t3 = tArr[i > 0 ? i - 1 : this.spanCount - 1];
        T t4 = tArr[(i + 1) % this.spanCount];
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
            i++;
        }
        return (T) derivative(t, i, f, this.controlPoints, z, this.f5376a);
    }

    public T valueAt(T t, int i, float f) {
        boolean z = this.continuous;
        if (!z) {
            i++;
        }
        return (T) calculate(t, i, f, this.controlPoints, z, this.f5376a);
    }
}
