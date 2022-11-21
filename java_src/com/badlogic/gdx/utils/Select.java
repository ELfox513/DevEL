package com.badlogic.gdx.utils;

import java.util.Comparator;
/* loaded from: classes.dex */
public class Select {

    /* renamed from: b */
    public static Select f6731b;

    /* renamed from: a */
    public QuickSelect f6732a;

    /* renamed from: a */
    public final <T> int m23542a(T[] tArr, Comparator<T> comparator, int i) {
        int i2 = 0;
        for (int i3 = 1; i3 < i; i3++) {
            if (comparator.compare(tArr[i3], tArr[i2]) > 0) {
                i2 = i3;
            }
        }
        return i2;
    }

    /* renamed from: b */
    public final <T> int m23541b(T[] tArr, Comparator<T> comparator, int i) {
        int i2 = 0;
        for (int i3 = 1; i3 < i; i3++) {
            if (comparator.compare(tArr[i3], tArr[i2]) < 0) {
                i2 = i3;
            }
        }
        return i2;
    }

    public <T> int selectIndex(T[] tArr, Comparator<T> comparator, int i, int i2) {
        if (i2 >= 1) {
            if (i <= i2) {
                if (i == 1) {
                    return m23541b(tArr, comparator, i2);
                }
                if (i == i2) {
                    return m23542a(tArr, comparator, i2);
                }
                if (this.f6732a == null) {
                    this.f6732a = new QuickSelect();
                }
                return this.f6732a.select(tArr, comparator, i, i2);
            }
            throw new GdxRuntimeException("Kth rank is larger than size. k: " + i + ", size: " + i2);
        }
        throw new GdxRuntimeException("cannot select from empty array (size < 1)");
    }

    public static Select instance() {
        if (f6731b == null) {
            f6731b = new Select();
        }
        return f6731b;
    }

    public <T> T select(T[] tArr, Comparator<T> comparator, int i, int i2) {
        return tArr[selectIndex(tArr, comparator, i, i2)];
    }
}
