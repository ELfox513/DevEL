package com.badlogic.gdx.utils;

import java.util.NoSuchElementException;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class LongQueue {

    /* renamed from: a */
    public long[] f6600a;

    /* renamed from: b */
    public int f6601b;

    /* renamed from: c */
    public int f6602c;
    public int size;

    public LongQueue() {
        this(16);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof LongQueue)) {
            return false;
        }
        LongQueue longQueue = (LongQueue) obj;
        int i = this.size;
        if (longQueue.size != i) {
            return false;
        }
        long[] jArr = this.f6600a;
        int length = jArr.length;
        long[] jArr2 = longQueue.f6600a;
        int length2 = jArr2.length;
        int i2 = this.f6601b;
        int i3 = longQueue.f6601b;
        for (int i4 = 0; i4 < i; i4++) {
            if (jArr[i2] != jArr2[i3]) {
                return false;
            }
            i2++;
            i3++;
            if (i2 == length) {
                i2 = 0;
            }
            if (i3 == length2) {
                i3 = 0;
            }
        }
        return true;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        long[] jArr = this.f6600a;
        int i = this.f6601b;
        int i2 = this.f6602c;
        StringBuilder stringBuilder = new StringBuilder(64);
        stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        stringBuilder.append(jArr[i]);
        while (true) {
            i = (i + 1) % jArr.length;
            if (i != i2) {
                stringBuilder.append(", ").append(jArr[i]);
            } else {
                stringBuilder.append(']');
                return stringBuilder.toString();
            }
        }
    }

    public LongQueue(int i) {
        this.f6601b = 0;
        this.f6602c = 0;
        this.size = 0;
        this.f6600a = new long[i];
    }

    /* renamed from: a */
    public void m23590a(int i) {
        long[] jArr = this.f6600a;
        int i2 = this.f6601b;
        int i3 = this.f6602c;
        long[] jArr2 = new long[i];
        if (i2 < i3) {
            System.arraycopy(jArr, i2, jArr2, 0, i3 - i2);
        } else if (this.size > 0) {
            int length = jArr.length - i2;
            System.arraycopy(jArr, i2, jArr2, 0, length);
            System.arraycopy(jArr, 0, jArr2, length, i3);
        }
        this.f6600a = jArr2;
        this.f6601b = 0;
        this.f6602c = this.size;
    }

    public void addFirst(long j) {
        long[] jArr = this.f6600a;
        if (this.size == jArr.length) {
            m23590a(jArr.length << 1);
            jArr = this.f6600a;
        }
        int i = this.f6601b - 1;
        if (i == -1) {
            i = jArr.length - 1;
        }
        jArr[i] = j;
        this.f6601b = i;
        this.size++;
    }

    public void addLast(long j) {
        long[] jArr = this.f6600a;
        if (this.size == jArr.length) {
            m23590a(jArr.length << 1);
            jArr = this.f6600a;
        }
        int i = this.f6602c;
        int i2 = i + 1;
        this.f6602c = i2;
        jArr[i] = j;
        if (i2 == jArr.length) {
            this.f6602c = 0;
        }
        this.size++;
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.f6601b = 0;
        this.f6602c = 0;
        this.size = 0;
    }

    public void ensureCapacity(int i) {
        int i2 = this.size + i;
        if (this.f6600a.length < i2) {
            m23590a(i2);
        }
    }

    public long first() {
        if (this.size != 0) {
            return this.f6600a[this.f6601b];
        }
        throw new NoSuchElementException("Queue is empty.");
    }

    public long get(int i) {
        if (i >= 0) {
            if (i < this.size) {
                long[] jArr = this.f6600a;
                int i2 = this.f6601b + i;
                if (i2 >= jArr.length) {
                    i2 -= jArr.length;
                }
                return jArr[i2];
            }
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
        }
        throw new IndexOutOfBoundsException("index can't be < 0: " + i);
    }

    public int hashCode() {
        int i = this.size;
        long[] jArr = this.f6600a;
        int length = jArr.length;
        int i2 = this.f6601b;
        int i3 = i + 1;
        for (int i4 = 0; i4 < i; i4++) {
            long j = jArr[i2];
            i3 += ((int) (j ^ (j >>> 32))) * 31;
            i2++;
            if (i2 == length) {
                i2 = 0;
            }
        }
        return i3;
    }

    public int indexOf(long j) {
        if (this.size == 0) {
            return -1;
        }
        long[] jArr = this.f6600a;
        int i = this.f6601b;
        int i2 = this.f6602c;
        if (i < i2) {
            for (int i3 = i; i3 < i2; i3++) {
                if (jArr[i3] == j) {
                    return i3 - i;
                }
            }
        } else {
            int length = jArr.length;
            for (int i4 = i; i4 < length; i4++) {
                if (jArr[i4] == j) {
                    return i4 - i;
                }
            }
            for (int i5 = 0; i5 < i2; i5++) {
                if (jArr[i5] == j) {
                    return (i5 + jArr.length) - i;
                }
            }
        }
        return -1;
    }

    public long last() {
        if (this.size != 0) {
            long[] jArr = this.f6600a;
            int i = this.f6602c - 1;
            if (i == -1) {
                i = jArr.length - 1;
            }
            return jArr[i];
        }
        throw new NoSuchElementException("Queue is empty.");
    }

    public long removeFirst() {
        int i = this.size;
        if (i != 0) {
            long[] jArr = this.f6600a;
            int i2 = this.f6601b;
            long j = jArr[i2];
            int i3 = i2 + 1;
            this.f6601b = i3;
            if (i3 == jArr.length) {
                this.f6601b = 0;
            }
            this.size = i - 1;
            return j;
        }
        throw new NoSuchElementException("Queue is empty.");
    }

    public long removeIndex(int i) {
        long j;
        if (i >= 0) {
            if (i < this.size) {
                long[] jArr = this.f6600a;
                int i2 = this.f6601b;
                int i3 = this.f6602c;
                int i4 = i + i2;
                if (i2 < i3) {
                    j = jArr[i4];
                    System.arraycopy(jArr, i4 + 1, jArr, i4, i3 - i4);
                    this.f6602c--;
                } else if (i4 >= jArr.length) {
                    int length = i4 - jArr.length;
                    j = jArr[length];
                    System.arraycopy(jArr, length + 1, jArr, length, i3 - length);
                    this.f6602c--;
                } else {
                    j = jArr[i4];
                    System.arraycopy(jArr, i2, jArr, i2 + 1, i4 - i2);
                    int i5 = this.f6601b + 1;
                    this.f6601b = i5;
                    if (i5 == jArr.length) {
                        this.f6601b = 0;
                    }
                }
                this.size--;
                return j;
            }
            throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
        }
        throw new IndexOutOfBoundsException("index can't be < 0: " + i);
    }

    public long removeLast() {
        int i = this.size;
        if (i != 0) {
            long[] jArr = this.f6600a;
            int i2 = this.f6602c - 1;
            if (i2 == -1) {
                i2 = jArr.length - 1;
            }
            long j = jArr[i2];
            this.f6602c = i2;
            this.size = i - 1;
            return j;
        }
        throw new NoSuchElementException("Queue is empty.");
    }

    public boolean removeValue(long j) {
        int indexOf = indexOf(j);
        if (indexOf == -1) {
            return false;
        }
        removeIndex(indexOf);
        return true;
    }

    public String toString(String str) {
        if (this.size == 0) {
            return "";
        }
        long[] jArr = this.f6600a;
        int i = this.f6601b;
        int i2 = this.f6602c;
        StringBuilder stringBuilder = new StringBuilder(64);
        stringBuilder.append(jArr[i]);
        while (true) {
            i = (i + 1) % jArr.length;
            if (i != i2) {
                stringBuilder.append(str).append(jArr[i]);
            } else {
                return stringBuilder.toString();
            }
        }
    }
}
