package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class BooleanArray {
    public boolean[] items;
    public boolean ordered;
    public int size;

    public BooleanArray() {
        this(true, 16);
    }

    public static BooleanArray with(boolean... zArr) {
        return new BooleanArray(zArr);
    }

    public void add(boolean z) {
        boolean[] zArr = this.items;
        int i = this.size;
        if (i == zArr.length) {
            zArr = m23685a(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        this.size = i2 + 1;
        zArr[i2] = z;
    }

    public void addAll(BooleanArray booleanArray) {
        addAll(booleanArray.items, 0, booleanArray.size);
    }

    public void clear() {
        this.size = 0;
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.ordered || !(obj instanceof BooleanArray)) {
            return false;
        }
        BooleanArray booleanArray = (BooleanArray) obj;
        if (!booleanArray.ordered || (i = this.size) != booleanArray.size) {
            return false;
        }
        boolean[] zArr = this.items;
        boolean[] zArr2 = booleanArray.items;
        for (int i2 = 0; i2 < i; i2++) {
            if (zArr[i2] != zArr2[i2]) {
                return false;
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

    public boolean peek() {
        return this.items[this.size - 1];
    }

    public boolean pop() {
        boolean[] zArr = this.items;
        int i = this.size - 1;
        this.size = i;
        return zArr[i];
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        boolean[] zArr = this.items;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        stringBuilder.append(zArr[0]);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(", ");
            stringBuilder.append(zArr[i]);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public void truncate(int i) {
        if (this.size > i) {
            this.size = i;
        }
    }

    public BooleanArray(int i) {
        this(true, i);
    }

    /* renamed from: a */
    public boolean[] m23685a(int i) {
        boolean[] zArr = new boolean[i];
        System.arraycopy(this.items, 0, zArr, 0, Math.min(this.size, i));
        this.items = zArr;
        return zArr;
    }

    public void addAll(BooleanArray booleanArray, int i, int i2) {
        if (i + i2 <= booleanArray.size) {
            addAll(booleanArray.items, i, i2);
            return;
        }
        throw new IllegalArgumentException("offset + length must be <= size: " + i + " + " + i2 + " <= " + booleanArray.size);
    }

    public boolean[] ensureCapacity(int i) {
        if (i >= 0) {
            int i2 = this.size + i;
            if (i2 > this.items.length) {
                m23685a(Math.max(Math.max(8, i2), (int) (this.size * 1.75f)));
            }
            return this.items;
        }
        throw new IllegalArgumentException("additionalCapacity must be >= 0: " + i);
    }

    public boolean first() {
        if (this.size != 0) {
            return this.items[0];
        }
        throw new IllegalStateException("Array is empty.");
    }

    public boolean get(int i) {
        if (i < this.size) {
            return this.items[i];
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public int hashCode() {
        int i;
        if (!this.ordered) {
            return super.hashCode();
        }
        boolean[] zArr = this.items;
        int i2 = this.size;
        int i3 = 1;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i3 * 31;
            if (zArr[i4]) {
                i = 1231;
            } else {
                i = 1237;
            }
            i3 = i5 + i;
        }
        return i3;
    }

    public void insert(int i, boolean z) {
        int i2 = this.size;
        if (i <= i2) {
            boolean[] zArr = this.items;
            if (i2 == zArr.length) {
                zArr = m23685a(Math.max(8, (int) (i2 * 1.75f)));
            }
            if (this.ordered) {
                System.arraycopy(zArr, i, zArr, i + 1, this.size - i);
            } else {
                zArr[this.size] = zArr[i];
            }
            this.size++;
            zArr[i] = z;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be > size: " + i + " > " + this.size);
    }

    public void insertRange(int i, int i2) {
        int i3 = this.size;
        if (i <= i3) {
            int i4 = i3 + i2;
            if (i4 > this.items.length) {
                this.items = m23685a(Math.max(Math.max(8, i4), (int) (this.size * 1.75f)));
            }
            boolean[] zArr = this.items;
            System.arraycopy(zArr, i, zArr, i2 + i, this.size - i);
            this.size = i4;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be > size: " + i + " > " + this.size);
    }

    public boolean random() {
        int i = this.size;
        if (i == 0) {
            return false;
        }
        return this.items[MathUtils.random(0, i - 1)];
    }

    public boolean removeAll(BooleanArray booleanArray) {
        int i = this.size;
        boolean[] zArr = this.items;
        int i2 = booleanArray.size;
        int i3 = i;
        for (int i4 = 0; i4 < i2; i4++) {
            boolean z = booleanArray.get(i4);
            int i5 = 0;
            while (true) {
                if (i5 >= i3) {
                    break;
                } else if (z == zArr[i5]) {
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

    public boolean removeIndex(int i) {
        int i2 = this.size;
        if (i < i2) {
            boolean[] zArr = this.items;
            boolean z = zArr[i];
            int i3 = i2 - 1;
            this.size = i3;
            if (this.ordered) {
                System.arraycopy(zArr, i + 1, zArr, i, i3 - i);
            } else {
                zArr[i] = zArr[i3];
            }
            return z;
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
                    boolean[] zArr = this.items;
                    int i6 = i4 + i;
                    System.arraycopy(zArr, i6, zArr, i, i3 - i6);
                } else {
                    int max = Math.max(i5, i2 + 1);
                    boolean[] zArr2 = this.items;
                    System.arraycopy(zArr2, max, zArr2, i, i3 - max);
                }
                this.size = i5;
                return;
            }
            throw new IndexOutOfBoundsException("start can't be > end: " + i + " > " + i2);
        }
        throw new IndexOutOfBoundsException("end can't be >= size: " + i2 + " >= " + this.size);
    }

    public void reverse() {
        boolean[] zArr = this.items;
        int i = this.size;
        int i2 = i - 1;
        int i3 = i / 2;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 - i4;
            boolean z = zArr[i4];
            zArr[i4] = zArr[i5];
            zArr[i5] = z;
        }
    }

    public void set(int i, boolean z) {
        if (i < this.size) {
            this.items[i] = z;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public boolean[] setSize(int i) {
        if (i >= 0) {
            if (i > this.items.length) {
                m23685a(Math.max(8, i));
            }
            this.size = i;
            return this.items;
        }
        throw new IllegalArgumentException("newSize must be >= 0: " + i);
    }

    public boolean[] shrink() {
        int length = this.items.length;
        int i = this.size;
        if (length != i) {
            m23685a(i);
        }
        return this.items;
    }

    public void shuffle() {
        boolean[] zArr = this.items;
        for (int i = this.size - 1; i >= 0; i--) {
            int random = MathUtils.random(i);
            boolean z = zArr[i];
            zArr[i] = zArr[random];
            zArr[random] = z;
        }
    }

    public void swap(int i, int i2) {
        int i3 = this.size;
        if (i < i3) {
            if (i2 < i3) {
                boolean[] zArr = this.items;
                boolean z = zArr[i];
                zArr[i] = zArr[i2];
                zArr[i2] = z;
                return;
            }
            throw new IndexOutOfBoundsException("second can't be >= size: " + i2 + " >= " + this.size);
        }
        throw new IndexOutOfBoundsException("first can't be >= size: " + i + " >= " + this.size);
    }

    public boolean[] toArray() {
        int i = this.size;
        boolean[] zArr = new boolean[i];
        System.arraycopy(this.items, 0, zArr, 0, i);
        return zArr;
    }

    public BooleanArray(boolean z, int i) {
        this.ordered = z;
        this.items = new boolean[i];
    }

    public void add(boolean z, boolean z2) {
        boolean[] zArr = this.items;
        int i = this.size;
        if (i + 1 >= zArr.length) {
            zArr = m23685a(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        zArr[i2] = z;
        zArr[i2 + 1] = z2;
        this.size = i2 + 2;
    }

    public void addAll(boolean... zArr) {
        addAll(zArr, 0, zArr.length);
    }

    public BooleanArray(BooleanArray booleanArray) {
        this.ordered = booleanArray.ordered;
        int i = booleanArray.size;
        this.size = i;
        boolean[] zArr = new boolean[i];
        this.items = zArr;
        System.arraycopy(booleanArray.items, 0, zArr, 0, i);
    }

    public void addAll(boolean[] zArr, int i, int i2) {
        boolean[] zArr2 = this.items;
        int i3 = this.size + i2;
        if (i3 > zArr2.length) {
            zArr2 = m23685a(Math.max(Math.max(8, i3), (int) (this.size * 1.75f)));
        }
        System.arraycopy(zArr, i, zArr2, this.size, i2);
        this.size += i2;
    }

    public void add(boolean z, boolean z2, boolean z3) {
        boolean[] zArr = this.items;
        int i = this.size;
        if (i + 2 >= zArr.length) {
            zArr = m23685a(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        zArr[i2] = z;
        zArr[i2 + 1] = z2;
        zArr[i2 + 2] = z3;
        this.size = i2 + 3;
    }

    public BooleanArray(boolean[] zArr) {
        this(true, zArr, 0, zArr.length);
    }

    public String toString(String str) {
        if (this.size == 0) {
            return "";
        }
        boolean[] zArr = this.items;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append(zArr[0]);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(str);
            stringBuilder.append(zArr[i]);
        }
        return stringBuilder.toString();
    }

    public BooleanArray(boolean z, boolean[] zArr, int i, int i2) {
        this(z, i2);
        this.size = i2;
        System.arraycopy(zArr, i, this.items, 0, i2);
    }

    public void add(boolean z, boolean z2, boolean z3, boolean z4) {
        boolean[] zArr = this.items;
        int i = this.size;
        if (i + 3 >= zArr.length) {
            zArr = m23685a(Math.max(8, (int) (i * 1.8f)));
        }
        int i2 = this.size;
        zArr[i2] = z;
        zArr[i2 + 1] = z2;
        zArr[i2 + 2] = z3;
        zArr[i2 + 3] = z4;
        this.size = i2 + 4;
    }
}
