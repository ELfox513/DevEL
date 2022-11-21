package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Arrays;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class LongArray {
    public long[] items;
    public boolean ordered;
    public int size;

    public LongArray() {
        this(true, 16);
    }

    public static LongArray with(long... jArr) {
        return new LongArray(jArr);
    }

    public void add(long j) {
        long[] jArr = this.items;
        int i = this.size;
        if (i == jArr.length) {
            jArr = m23596a(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        this.size = i2 + 1;
        jArr[i2] = j;
    }

    public void addAll(LongArray longArray) {
        addAll(longArray.items, 0, longArray.size);
    }

    public void clear() {
        this.size = 0;
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.ordered || !(obj instanceof LongArray)) {
            return false;
        }
        LongArray longArray = (LongArray) obj;
        if (!longArray.ordered || (i = this.size) != longArray.size) {
            return false;
        }
        long[] jArr = this.items;
        long[] jArr2 = longArray.items;
        for (int i2 = 0; i2 < i; i2++) {
            if (jArr[i2] != jArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public void incr(int i, long j) {
        if (i < this.size) {
            long[] jArr = this.items;
            jArr[i] = jArr[i] + j;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public void mul(int i, long j) {
        if (i < this.size) {
            long[] jArr = this.items;
            jArr[i] = jArr[i] * j;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public long peek() {
        return this.items[this.size - 1];
    }

    public long pop() {
        long[] jArr = this.items;
        int i = this.size - 1;
        this.size = i;
        return jArr[i];
    }

    public void sort() {
        Arrays.sort(this.items, 0, this.size);
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        long[] jArr = this.items;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        stringBuilder.append(jArr[0]);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(", ");
            stringBuilder.append(jArr[i]);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public void truncate(int i) {
        if (this.size > i) {
            this.size = i;
        }
    }

    public LongArray(int i) {
        this(true, i);
    }

    /* renamed from: a */
    public long[] m23596a(int i) {
        long[] jArr = new long[i];
        System.arraycopy(this.items, 0, jArr, 0, Math.min(this.size, i));
        this.items = jArr;
        return jArr;
    }

    public void addAll(LongArray longArray, int i, int i2) {
        if (i + i2 <= longArray.size) {
            addAll(longArray.items, i, i2);
            return;
        }
        throw new IllegalArgumentException("offset + length must be <= size: " + i + " + " + i2 + " <= " + longArray.size);
    }

    public boolean contains(long j) {
        int i = this.size - 1;
        long[] jArr = this.items;
        while (i >= 0) {
            int i2 = i - 1;
            if (jArr[i] == j) {
                return true;
            }
            i = i2;
        }
        return false;
    }

    public long[] ensureCapacity(int i) {
        if (i >= 0) {
            int i2 = this.size + i;
            if (i2 > this.items.length) {
                m23596a(Math.max(Math.max(8, i2), (int) (this.size * 1.75f)));
            }
            return this.items;
        }
        throw new IllegalArgumentException("additionalCapacity must be >= 0: " + i);
    }

    public long first() {
        if (this.size != 0) {
            return this.items[0];
        }
        throw new IllegalStateException("Array is empty.");
    }

    public long get(int i) {
        if (i < this.size) {
            return this.items[i];
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public int hashCode() {
        if (!this.ordered) {
            return super.hashCode();
        }
        long[] jArr = this.items;
        int i = this.size;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            long j = jArr[i3];
            i2 = (i2 * 31) + ((int) (j ^ (j >>> 32)));
        }
        return i2;
    }

    public int indexOf(long j) {
        long[] jArr = this.items;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (jArr[i2] == j) {
                return i2;
            }
        }
        return -1;
    }

    public void insert(int i, long j) {
        int i2 = this.size;
        if (i <= i2) {
            long[] jArr = this.items;
            if (i2 == jArr.length) {
                jArr = m23596a(Math.max(8, (int) (i2 * 1.75f)));
            }
            if (this.ordered) {
                System.arraycopy(jArr, i, jArr, i + 1, this.size - i);
            } else {
                jArr[this.size] = jArr[i];
            }
            this.size++;
            jArr[i] = j;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be > size: " + i + " > " + this.size);
    }

    public void insertRange(int i, int i2) {
        int i3 = this.size;
        if (i <= i3) {
            int i4 = i3 + i2;
            if (i4 > this.items.length) {
                this.items = m23596a(Math.max(Math.max(8, i4), (int) (this.size * 1.75f)));
            }
            long[] jArr = this.items;
            System.arraycopy(jArr, i, jArr, i2 + i, this.size - i);
            this.size = i4;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be > size: " + i + " > " + this.size);
    }

    public int lastIndexOf(char c) {
        long[] jArr = this.items;
        for (int i = this.size - 1; i >= 0; i--) {
            if (jArr[i] == c) {
                return i;
            }
        }
        return -1;
    }

    public long random() {
        int i = this.size;
        if (i == 0) {
            return 0L;
        }
        return this.items[MathUtils.random(0, i - 1)];
    }

    public boolean removeAll(LongArray longArray) {
        int i = this.size;
        long[] jArr = this.items;
        int i2 = longArray.size;
        int i3 = i;
        for (int i4 = 0; i4 < i2; i4++) {
            long j = longArray.get(i4);
            int i5 = 0;
            while (true) {
                if (i5 >= i3) {
                    break;
                } else if (j == jArr[i5]) {
                    removeIndex(i5);
                    i3--;
                    break;
                } else {
                    i5++;
                }
            }
        }
        if (i3 == i) {
            return false;
        }
        return true;
    }

    public long removeIndex(int i) {
        int i2 = this.size;
        if (i < i2) {
            long[] jArr = this.items;
            long j = jArr[i];
            int i3 = i2 - 1;
            this.size = i3;
            if (this.ordered) {
                System.arraycopy(jArr, i + 1, jArr, i, i3 - i);
            } else {
                jArr[i] = jArr[i3];
            }
            return j;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public void removeRange(int i, int i2) {
        int i3 = this.size;
        if (i2 < i3) {
            if (i <= i2) {
                int i4 = (i2 - i) + 1;
                int i5 = i3 - i4;
                if (this.ordered) {
                    long[] jArr = this.items;
                    int i6 = i4 + i;
                    System.arraycopy(jArr, i6, jArr, i, i3 - i6);
                } else {
                    int max = Math.max(i5, i2 + 1);
                    long[] jArr2 = this.items;
                    System.arraycopy(jArr2, max, jArr2, i, i3 - max);
                }
                this.size = i5;
                return;
            }
            throw new IndexOutOfBoundsException("start can't be > end: " + i + " > " + i2);
        }
        throw new IndexOutOfBoundsException("end can't be >= size: " + i2 + " >= " + this.size);
    }

    public boolean removeValue(long j) {
        long[] jArr = this.items;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (jArr[i2] == j) {
                removeIndex(i2);
                return true;
            }
        }
        return false;
    }

    public void reverse() {
        long[] jArr = this.items;
        int i = this.size;
        int i2 = i - 1;
        int i3 = i / 2;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 - i4;
            long j = jArr[i4];
            jArr[i4] = jArr[i5];
            jArr[i5] = j;
        }
    }

    public void set(int i, long j) {
        if (i < this.size) {
            this.items[i] = j;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public long[] setSize(int i) {
        if (i >= 0) {
            if (i > this.items.length) {
                m23596a(Math.max(8, i));
            }
            this.size = i;
            return this.items;
        }
        throw new IllegalArgumentException("newSize must be >= 0: " + i);
    }

    public long[] shrink() {
        int length = this.items.length;
        int i = this.size;
        if (length != i) {
            m23596a(i);
        }
        return this.items;
    }

    public void shuffle() {
        long[] jArr = this.items;
        for (int i = this.size - 1; i >= 0; i--) {
            int random = MathUtils.random(i);
            long j = jArr[i];
            jArr[i] = jArr[random];
            jArr[random] = j;
        }
    }

    public void swap(int i, int i2) {
        int i3 = this.size;
        if (i < i3) {
            if (i2 < i3) {
                long[] jArr = this.items;
                long j = jArr[i];
                jArr[i] = jArr[i2];
                jArr[i2] = j;
                return;
            }
            throw new IndexOutOfBoundsException("second can't be >= size: " + i2 + " >= " + this.size);
        }
        throw new IndexOutOfBoundsException("first can't be >= size: " + i + " >= " + this.size);
    }

    public long[] toArray() {
        int i = this.size;
        long[] jArr = new long[i];
        System.arraycopy(this.items, 0, jArr, 0, i);
        return jArr;
    }

    public LongArray(boolean z, int i) {
        this.ordered = z;
        this.items = new long[i];
    }

    public void add(long j, long j2) {
        long[] jArr = this.items;
        int i = this.size;
        if (i + 1 >= jArr.length) {
            jArr = m23596a(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        jArr[i2] = j;
        jArr[i2 + 1] = j2;
        this.size = i2 + 2;
    }

    public void incr(long j) {
        long[] jArr = this.items;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = jArr[i2] + j;
        }
    }

    public void mul(long j) {
        long[] jArr = this.items;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = jArr[i2] * j;
        }
    }

    public void addAll(long... jArr) {
        addAll(jArr, 0, jArr.length);
    }

    public LongArray(LongArray longArray) {
        this.ordered = longArray.ordered;
        int i = longArray.size;
        this.size = i;
        long[] jArr = new long[i];
        this.items = jArr;
        System.arraycopy(longArray.items, 0, jArr, 0, i);
    }

    public void addAll(long[] jArr, int i, int i2) {
        long[] jArr2 = this.items;
        int i3 = this.size + i2;
        if (i3 > jArr2.length) {
            jArr2 = m23596a(Math.max(Math.max(8, i3), (int) (this.size * 1.75f)));
        }
        System.arraycopy(jArr, i, jArr2, this.size, i2);
        this.size += i2;
    }

    public void add(long j, long j2, long j3) {
        long[] jArr = this.items;
        int i = this.size;
        if (i + 2 >= jArr.length) {
            jArr = m23596a(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        jArr[i2] = j;
        jArr[i2 + 1] = j2;
        jArr[i2 + 2] = j3;
        this.size = i2 + 3;
    }

    public LongArray(long[] jArr) {
        this(true, jArr, 0, jArr.length);
    }

    public String toString(String str) {
        if (this.size == 0) {
            return "";
        }
        long[] jArr = this.items;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append(jArr[0]);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(str);
            stringBuilder.append(jArr[i]);
        }
        return stringBuilder.toString();
    }

    public LongArray(boolean z, long[] jArr, int i, int i2) {
        this(z, i2);
        this.size = i2;
        System.arraycopy(jArr, i, this.items, 0, i2);
    }

    public void add(long j, long j2, long j3, long j4) {
        long[] jArr = this.items;
        int i = this.size;
        if (i + 3 >= jArr.length) {
            jArr = m23596a(Math.max(8, (int) (i * 1.8f)));
        }
        int i2 = this.size;
        jArr[i2] = j;
        jArr[i2 + 1] = j2;
        jArr[i2 + 2] = j3;
        jArr[i2 + 3] = j4;
        this.size = i2 + 4;
    }
}
