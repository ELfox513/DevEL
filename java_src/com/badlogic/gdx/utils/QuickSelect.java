package com.badlogic.gdx.utils;

import java.util.Comparator;
/* loaded from: classes.dex */
public class QuickSelect<T> {

    /* renamed from: a */
    public T[] f6727a;

    /* renamed from: b */
    public Comparator<? super T> f6728b;

    /* renamed from: a */
    public final int m23547a(int i, int i2) {
        T[] tArr = this.f6727a;
        T t = tArr[i];
        int i3 = (i + i2) / 2;
        T t2 = tArr[i3];
        T t3 = tArr[i2];
        if (this.f6728b.compare(t, t2) > 0) {
            if (this.f6728b.compare(t2, t3) > 0) {
                return i3;
            }
            if (this.f6728b.compare(t, t3) > 0) {
                return i2;
            }
            return i;
        } else if (this.f6728b.compare(t, t3) > 0) {
            return i;
        } else {
            if (this.f6728b.compare(t2, t3) > 0) {
                return i2;
            }
            return i3;
        }
    }

    /* renamed from: b */
    public final int m23546b(int i, int i2, int i3) {
        T t = this.f6727a[i3];
        m23544d(i2, i3);
        int i4 = i;
        while (i < i2) {
            if (this.f6728b.compare((Object) this.f6727a[i], t) < 0) {
                m23544d(i4, i);
                i4++;
            }
            i++;
        }
        m23544d(i2, i4);
        return i4;
    }

    /* renamed from: c */
    public final int m23545c(int i, int i2, int i3) {
        if (i == i2) {
            return i;
        }
        int m23546b = m23546b(i, i2, m23547a(i, i2));
        int i4 = (m23546b - i) + 1;
        if (i4 != i3) {
            if (i3 < i4) {
                return m23545c(i, m23546b - 1, i3);
            }
            return m23545c(m23546b + 1, i2, i3 - i4);
        }
        return m23546b;
    }

    /* renamed from: d */
    public final void m23544d(int i, int i2) {
        T[] tArr = this.f6727a;
        T t = tArr[i];
        tArr[i] = tArr[i2];
        tArr[i2] = t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int select(T[] tArr, Comparator<T> comparator, int i, int i2) {
        this.f6727a = tArr;
        this.f6728b = comparator;
        return m23545c(0, i2 - 1, i);
    }
}
