package com.esotericsoftware.kryo.util;

import java.util.Arrays;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class IntArray {
    public int[] items;
    public boolean ordered;
    public int size;

    public IntArray() {
        this(true, 16);
    }

    public static IntArray with(int... iArr) {
        return new IntArray(iArr);
    }

    public void add(int i) {
        int[] iArr = this.items;
        int i2 = this.size;
        if (i2 == iArr.length) {
            iArr = resize(Math.max(8, (int) (i2 * 1.75f)));
        }
        int i3 = this.size;
        this.size = i3 + 1;
        iArr[i3] = i;
    }

    public void addAll(IntArray intArray) {
        addAll(intArray, 0, intArray.size);
    }

    public void clear() {
        this.size = 0;
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.ordered || !(obj instanceof IntArray)) {
            return false;
        }
        IntArray intArray = (IntArray) obj;
        if (!intArray.ordered || (i = this.size) != intArray.size) {
            return false;
        }
        int[] iArr = this.items;
        int[] iArr2 = intArray.items;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public int peek() {
        return this.items[this.size - 1];
    }

    public int pop() {
        int[] iArr = this.items;
        int i = this.size - 1;
        this.size = i;
        return iArr[i];
    }

    public void sort() {
        Arrays.sort(this.items, 0, this.size);
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        int[] iArr = this.items;
        StringBuilder sb = new StringBuilder(32);
        sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        sb.append(iArr[0]);
        for (int i = 1; i < this.size; i++) {
            sb.append(", ");
            sb.append(iArr[i]);
        }
        sb.append(']');
        return sb.toString();
    }

    public void truncate(int i) {
        if (this.size > i) {
            this.size = i;
        }
    }

    public IntArray(int i) {
        this(true, i);
    }

    public void addAll(IntArray intArray, int i, int i2) {
        if (i + i2 <= intArray.size) {
            addAll(intArray.items, i, i2);
            return;
        }
        throw new IllegalArgumentException("offset + length must be <= size: " + i + " + " + i2 + " <= " + intArray.size);
    }

    public boolean contains(int i) {
        int i2 = this.size - 1;
        int[] iArr = this.items;
        while (i2 >= 0) {
            int i3 = i2 - 1;
            if (iArr[i2] == i) {
                return true;
            }
            i2 = i3;
        }
        return false;
    }

    public int[] ensureCapacity(int i) {
        if (i >= 0) {
            int i2 = this.size + i;
            if (i2 > this.items.length) {
                resize(Math.max(8, i2));
            }
            return this.items;
        }
        throw new IllegalArgumentException("additionalCapacity must be >= 0: " + i);
    }

    public int first() {
        if (this.size != 0) {
            return this.items[0];
        }
        throw new IllegalStateException("Array is empty.");
    }

    public int get(int i) {
        if (i < this.size) {
            return this.items[i];
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public int hashCode() {
        if (!this.ordered) {
            return super.hashCode();
        }
        int[] iArr = this.items;
        int i = this.size;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        return i2;
    }

    public void incr(int i, int i2) {
        if (i < this.size) {
            int[] iArr = this.items;
            iArr[i] = iArr[i] + i2;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public int indexOf(int i) {
        int[] iArr = this.items;
        int i2 = this.size;
        for (int i3 = 0; i3 < i2; i3++) {
            if (iArr[i3] == i) {
                return i3;
            }
        }
        return -1;
    }

    public void insert(int i, int i2) {
        int i3 = this.size;
        if (i <= i3) {
            int[] iArr = this.items;
            if (i3 == iArr.length) {
                iArr = resize(Math.max(8, (int) (i3 * 1.75f)));
            }
            if (this.ordered) {
                System.arraycopy(iArr, i, iArr, i + 1, this.size - i);
            } else {
                iArr[this.size] = iArr[i];
            }
            this.size++;
            iArr[i] = i2;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be > size: " + i + " > " + this.size);
    }

    public int lastIndexOf(int i) {
        int[] iArr = this.items;
        for (int i2 = this.size - 1; i2 >= 0; i2--) {
            if (iArr[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    public void mul(int i, int i2) {
        if (i < this.size) {
            int[] iArr = this.items;
            iArr[i] = iArr[i] * i2;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public boolean removeAll(IntArray intArray) {
        int i = this.size;
        int[] iArr = this.items;
        int i2 = intArray.size;
        int i3 = i;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = intArray.get(i4);
            int i6 = 0;
            while (true) {
                if (i6 >= i3) {
                    break;
                } else if (i5 == iArr[i6]) {
                    removeIndex(i6);
                    i3--;
                    break;
                } else {
                    i6++;
                }
            }
        }
        if (i3 == i) {
            return false;
        }
        return true;
    }

    public int removeIndex(int i) {
        int i2 = this.size;
        if (i < i2) {
            int[] iArr = this.items;
            int i3 = iArr[i];
            int i4 = i2 - 1;
            this.size = i4;
            if (this.ordered) {
                System.arraycopy(iArr, i + 1, iArr, i, i4 - i);
            } else {
                iArr[i] = iArr[i4];
            }
            return i3;
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
                    int[] iArr = this.items;
                    int i6 = i4 + i;
                    System.arraycopy(iArr, i6, iArr, i, i3 - i6);
                } else {
                    int max = Math.max(i5, i2 + 1);
                    int[] iArr2 = this.items;
                    System.arraycopy(iArr2, max, iArr2, i, i3 - max);
                }
                this.size = i5;
                return;
            }
            throw new IndexOutOfBoundsException("start can't be > end: " + i + " > " + i2);
        }
        throw new IndexOutOfBoundsException("end can't be >= size: " + i2 + " >= " + this.size);
    }

    public boolean removeValue(int i) {
        int[] iArr = this.items;
        int i2 = this.size;
        for (int i3 = 0; i3 < i2; i3++) {
            if (iArr[i3] == i) {
                removeIndex(i3);
                return true;
            }
        }
        return false;
    }

    public int[] resize(int i) {
        int[] iArr = new int[i];
        System.arraycopy(this.items, 0, iArr, 0, Math.min(this.size, i));
        this.items = iArr;
        return iArr;
    }

    public void reverse() {
        int[] iArr = this.items;
        int i = this.size;
        int i2 = i - 1;
        int i3 = i / 2;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 - i4;
            int i6 = iArr[i4];
            iArr[i4] = iArr[i5];
            iArr[i5] = i6;
        }
    }

    public void set(int i, int i2) {
        if (i < this.size) {
            this.items[i] = i2;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public int[] setSize(int i) {
        if (i >= 0) {
            if (i > this.items.length) {
                resize(Math.max(8, i));
            }
            this.size = i;
            return this.items;
        }
        throw new IllegalArgumentException("newSize must be >= 0: " + i);
    }

    public int[] shrink() {
        int length = this.items.length;
        int i = this.size;
        if (length != i) {
            resize(i);
        }
        return this.items;
    }

    public void swap(int i, int i2) {
        int i3 = this.size;
        if (i < i3) {
            if (i2 < i3) {
                int[] iArr = this.items;
                int i4 = iArr[i];
                iArr[i] = iArr[i2];
                iArr[i2] = i4;
                return;
            }
            throw new IndexOutOfBoundsException("second can't be >= size: " + i2 + " >= " + this.size);
        }
        throw new IndexOutOfBoundsException("first can't be >= size: " + i + " >= " + this.size);
    }

    public int[] toArray() {
        int i = this.size;
        int[] iArr = new int[i];
        System.arraycopy(this.items, 0, iArr, 0, i);
        return iArr;
    }

    public IntArray(boolean z, int i) {
        this.ordered = z;
        this.items = new int[i];
    }

    public void add(int i, int i2) {
        int[] iArr = this.items;
        int i3 = this.size;
        if (i3 + 1 >= iArr.length) {
            iArr = resize(Math.max(8, (int) (i3 * 1.75f)));
        }
        int i4 = this.size;
        iArr[i4] = i;
        iArr[i4 + 1] = i2;
        this.size = i4 + 2;
    }

    public void addAll(int... iArr) {
        addAll(iArr, 0, iArr.length);
    }

    public IntArray(IntArray intArray) {
        this.ordered = intArray.ordered;
        int i = intArray.size;
        this.size = i;
        int[] iArr = new int[i];
        this.items = iArr;
        System.arraycopy(intArray.items, 0, iArr, 0, i);
    }

    public void addAll(int[] iArr, int i, int i2) {
        int[] iArr2 = this.items;
        int i3 = this.size + i2;
        if (i3 > iArr2.length) {
            iArr2 = resize(Math.max(8, (int) (i3 * 1.75f)));
        }
        System.arraycopy(iArr, i, iArr2, this.size, i2);
        this.size += i2;
    }

    public void add(int i, int i2, int i3) {
        int[] iArr = this.items;
        int i4 = this.size;
        if (i4 + 2 >= iArr.length) {
            iArr = resize(Math.max(8, (int) (i4 * 1.75f)));
        }
        int i5 = this.size;
        iArr[i5] = i;
        iArr[i5 + 1] = i2;
        iArr[i5 + 2] = i3;
        this.size = i5 + 3;
    }

    public IntArray(int[] iArr) {
        this(true, iArr, 0, iArr.length);
    }

    public String toString(String str) {
        if (this.size == 0) {
            return "";
        }
        int[] iArr = this.items;
        StringBuilder sb = new StringBuilder(32);
        sb.append(iArr[0]);
        for (int i = 1; i < this.size; i++) {
            sb.append(str);
            sb.append(iArr[i]);
        }
        return sb.toString();
    }

    public IntArray(boolean z, int[] iArr, int i, int i2) {
        this(z, i2);
        this.size = i2;
        System.arraycopy(iArr, i, this.items, 0, i2);
    }

    public void add(int i, int i2, int i3, int i4) {
        int[] iArr = this.items;
        int i5 = this.size;
        if (i5 + 3 >= iArr.length) {
            iArr = resize(Math.max(8, (int) (i5 * 1.8f)));
        }
        int i6 = this.size;
        iArr[i6] = i;
        iArr[i6 + 1] = i2;
        iArr[i6 + 2] = i3;
        iArr[i6 + 3] = i4;
        this.size = i6 + 4;
    }
}
