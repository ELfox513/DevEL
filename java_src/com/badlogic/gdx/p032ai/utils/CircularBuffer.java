package com.badlogic.gdx.p032ai.utils;

import com.badlogic.gdx.utils.reflect.ArrayReflection;
/* renamed from: com.badlogic.gdx.ai.utils.CircularBuffer */
/* loaded from: classes.dex */
public class CircularBuffer<T> {

    /* renamed from: a */
    public T[] f3481a;

    /* renamed from: b */
    public boolean f3482b;

    /* renamed from: c */
    public int f3483c;

    /* renamed from: d */
    public int f3484d;

    /* renamed from: e */
    public int f3485e;

    public CircularBuffer() {
        this(16, true);
    }

    public boolean isEmpty() {
        return this.f3485e == 0;
    }

    public boolean isFull() {
        return this.f3485e == this.f3481a.length;
    }

    public boolean isResizable() {
        return this.f3482b;
    }

    public void setResizable(boolean z) {
        this.f3482b = z;
    }

    public int size() {
        return this.f3485e;
    }

    public CircularBuffer(int i) {
        this(i, true);
    }

    /* renamed from: a */
    public void m24367a(int i) {
        T[] tArr = (T[]) ((Object[]) ArrayReflection.newInstance(this.f3481a.getClass().getComponentType(), i));
        int i2 = this.f3484d;
        int i3 = this.f3483c;
        if (i2 > i3) {
            System.arraycopy(this.f3481a, i3, tArr, 0, this.f3485e);
        } else if (this.f3485e > 0) {
            T[] tArr2 = this.f3481a;
            System.arraycopy(tArr2, i3, tArr, 0, tArr2.length - i3);
            T[] tArr3 = this.f3481a;
            System.arraycopy(tArr3, 0, tArr, tArr3.length - this.f3483c, this.f3484d);
        }
        this.f3483c = 0;
        this.f3484d = this.f3485e;
        this.f3481a = tArr;
    }

    public void clear() {
        T[] tArr = this.f3481a;
        int i = this.f3484d;
        int i2 = this.f3483c;
        if (i > i2) {
            while (true) {
                int i3 = i2 + 1;
                tArr[i2] = null;
                if (i3 >= i) {
                    break;
                }
                i2 = i3;
            }
        } else if (this.f3485e > 0) {
            int length = tArr.length;
            while (i2 < length) {
                tArr[i2] = null;
                i2++;
            }
            int i4 = this.f3484d;
            for (int i5 = 0; i5 < i4; i5++) {
                tArr[i5] = null;
            }
        }
        this.f3483c = 0;
        this.f3484d = 0;
        this.f3485e = 0;
    }

    public void ensureCapacity(int i) {
        int i2 = this.f3485e + i;
        if (this.f3481a.length < i2) {
            m24367a(i2);
        }
    }

    public T read() {
        int i = this.f3485e;
        if (i <= 0) {
            return null;
        }
        this.f3485e = i - 1;
        T[] tArr = this.f3481a;
        int i2 = this.f3483c;
        T t = tArr[i2];
        tArr[i2] = null;
        int i3 = i2 + 1;
        this.f3483c = i3;
        if (i3 == tArr.length) {
            this.f3483c = 0;
        }
        return t;
    }

    public boolean store(T t) {
        T[] tArr;
        if (this.f3485e == this.f3481a.length) {
            if (!this.f3482b) {
                return false;
            }
            m24367a(Math.max(8, (int) (tArr.length * 1.75f)));
        }
        this.f3485e++;
        T[] tArr2 = this.f3481a;
        int i = this.f3484d;
        int i2 = i + 1;
        this.f3484d = i2;
        tArr2[i] = t;
        if (i2 == tArr2.length) {
            this.f3484d = 0;
        }
        return true;
    }

    public CircularBuffer(int i, boolean z) {
        this.f3481a = (T[]) new Object[i];
        this.f3482b = z;
        this.f3483c = 0;
        this.f3484d = 0;
        this.f3485e = 0;
    }
}
