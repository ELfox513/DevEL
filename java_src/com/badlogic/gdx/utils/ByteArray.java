package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Arrays;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class ByteArray {
    public byte[] items;
    public boolean ordered;
    public int size;

    public ByteArray() {
        this(true, 16);
    }

    public static ByteArray with(byte... bArr) {
        return new ByteArray(bArr);
    }

    public void add(byte b) {
        byte[] bArr = this.items;
        int i = this.size;
        if (i == bArr.length) {
            bArr = m23681a(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        this.size = i2 + 1;
        bArr[i2] = b;
    }

    public void addAll(ByteArray byteArray) {
        addAll(byteArray.items, 0, byteArray.size);
    }

    public void clear() {
        this.size = 0;
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.ordered || !(obj instanceof ByteArray)) {
            return false;
        }
        ByteArray byteArray = (ByteArray) obj;
        if (!byteArray.ordered || (i = this.size) != byteArray.size) {
            return false;
        }
        byte[] bArr = this.items;
        byte[] bArr2 = byteArray.items;
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public void incr(int i, byte b) {
        if (i < this.size) {
            byte[] bArr = this.items;
            bArr[i] = (byte) (bArr[i] + b);
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public void mul(int i, byte b) {
        if (i < this.size) {
            byte[] bArr = this.items;
            bArr[i] = (byte) (bArr[i] * b);
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public byte peek() {
        return this.items[this.size - 1];
    }

    public byte pop() {
        byte[] bArr = this.items;
        int i = this.size - 1;
        this.size = i;
        return bArr[i];
    }

    public void sort() {
        Arrays.sort(this.items, 0, this.size);
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        byte[] bArr = this.items;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        stringBuilder.append((int) bArr[0]);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(", ");
            stringBuilder.append((int) bArr[i]);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public void truncate(int i) {
        if (this.size > i) {
            this.size = i;
        }
    }

    public ByteArray(int i) {
        this(true, i);
    }

    /* renamed from: a */
    public byte[] m23681a(int i) {
        byte[] bArr = new byte[i];
        System.arraycopy(this.items, 0, bArr, 0, Math.min(this.size, i));
        this.items = bArr;
        return bArr;
    }

    public void addAll(ByteArray byteArray, int i, int i2) {
        if (i + i2 <= byteArray.size) {
            addAll(byteArray.items, i, i2);
            return;
        }
        throw new IllegalArgumentException("offset + length must be <= size: " + i + " + " + i2 + " <= " + byteArray.size);
    }

    public boolean contains(byte b) {
        int i = this.size - 1;
        byte[] bArr = this.items;
        while (i >= 0) {
            int i2 = i - 1;
            if (bArr[i] == b) {
                return true;
            }
            i = i2;
        }
        return false;
    }

    public byte[] ensureCapacity(int i) {
        if (i >= 0) {
            int i2 = this.size + i;
            if (i2 > this.items.length) {
                m23681a(Math.max(Math.max(8, i2), (int) (this.size * 1.75f)));
            }
            return this.items;
        }
        throw new IllegalArgumentException("additionalCapacity must be >= 0: " + i);
    }

    public byte first() {
        if (this.size != 0) {
            return this.items[0];
        }
        throw new IllegalStateException("Array is empty.");
    }

    public byte get(int i) {
        if (i < this.size) {
            return this.items[i];
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public int hashCode() {
        if (!this.ordered) {
            return super.hashCode();
        }
        byte[] bArr = this.items;
        int i = this.size;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + bArr[i3];
        }
        return i2;
    }

    public int indexOf(byte b) {
        byte[] bArr = this.items;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] == b) {
                return i2;
            }
        }
        return -1;
    }

    public void insert(int i, byte b) {
        int i2 = this.size;
        if (i <= i2) {
            byte[] bArr = this.items;
            if (i2 == bArr.length) {
                bArr = m23681a(Math.max(8, (int) (i2 * 1.75f)));
            }
            if (this.ordered) {
                System.arraycopy(bArr, i, bArr, i + 1, this.size - i);
            } else {
                bArr[this.size] = bArr[i];
            }
            this.size++;
            bArr[i] = b;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be > size: " + i + " > " + this.size);
    }

    public void insertRange(int i, int i2) {
        int i3 = this.size;
        if (i <= i3) {
            int i4 = i3 + i2;
            if (i4 > this.items.length) {
                this.items = m23681a(Math.max(Math.max(8, i4), (int) (this.size * 1.75f)));
            }
            byte[] bArr = this.items;
            System.arraycopy(bArr, i, bArr, i2 + i, this.size - i);
            this.size = i4;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be > size: " + i + " > " + this.size);
    }

    public int lastIndexOf(byte b) {
        byte[] bArr = this.items;
        for (int i = this.size - 1; i >= 0; i--) {
            if (bArr[i] == b) {
                return i;
            }
        }
        return -1;
    }

    public byte random() {
        int i = this.size;
        if (i == 0) {
            return (byte) 0;
        }
        return this.items[MathUtils.random(0, i - 1)];
    }

    public boolean removeAll(ByteArray byteArray) {
        int i = this.size;
        byte[] bArr = this.items;
        int i2 = byteArray.size;
        int i3 = i;
        for (int i4 = 0; i4 < i2; i4++) {
            byte b = byteArray.get(i4);
            int i5 = 0;
            while (true) {
                if (i5 >= i3) {
                    break;
                } else if (b == bArr[i5]) {
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

    public int removeIndex(int i) {
        int i2 = this.size;
        if (i < i2) {
            byte[] bArr = this.items;
            byte b = bArr[i];
            int i3 = i2 - 1;
            this.size = i3;
            if (this.ordered) {
                System.arraycopy(bArr, i + 1, bArr, i, i3 - i);
            } else {
                bArr[i] = bArr[i3];
            }
            return b;
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
                    byte[] bArr = this.items;
                    int i6 = i4 + i;
                    System.arraycopy(bArr, i6, bArr, i, i3 - i6);
                } else {
                    int max = Math.max(i5, i2 + 1);
                    byte[] bArr2 = this.items;
                    System.arraycopy(bArr2, max, bArr2, i, i3 - max);
                }
                this.size = i5;
                return;
            }
            throw new IndexOutOfBoundsException("start can't be > end: " + i + " > " + i2);
        }
        throw new IndexOutOfBoundsException("end can't be >= size: " + i2 + " >= " + this.size);
    }

    public boolean removeValue(byte b) {
        byte[] bArr = this.items;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] == b) {
                removeIndex(i2);
                return true;
            }
        }
        return false;
    }

    public void reverse() {
        byte[] bArr = this.items;
        int i = this.size;
        int i2 = i - 1;
        int i3 = i / 2;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 - i4;
            byte b = bArr[i4];
            bArr[i4] = bArr[i5];
            bArr[i5] = b;
        }
    }

    public void set(int i, byte b) {
        if (i < this.size) {
            this.items[i] = b;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public byte[] setSize(int i) {
        if (i >= 0) {
            if (i > this.items.length) {
                m23681a(Math.max(8, i));
            }
            this.size = i;
            return this.items;
        }
        throw new IllegalArgumentException("newSize must be >= 0: " + i);
    }

    public byte[] shrink() {
        int length = this.items.length;
        int i = this.size;
        if (length != i) {
            m23681a(i);
        }
        return this.items;
    }

    public void shuffle() {
        byte[] bArr = this.items;
        for (int i = this.size - 1; i >= 0; i--) {
            int random = MathUtils.random(i);
            byte b = bArr[i];
            bArr[i] = bArr[random];
            bArr[random] = b;
        }
    }

    public void swap(int i, int i2) {
        int i3 = this.size;
        if (i < i3) {
            if (i2 < i3) {
                byte[] bArr = this.items;
                byte b = bArr[i];
                bArr[i] = bArr[i2];
                bArr[i2] = b;
                return;
            }
            throw new IndexOutOfBoundsException("second can't be >= size: " + i2 + " >= " + this.size);
        }
        throw new IndexOutOfBoundsException("first can't be >= size: " + i + " >= " + this.size);
    }

    public byte[] toArray() {
        int i = this.size;
        byte[] bArr = new byte[i];
        System.arraycopy(this.items, 0, bArr, 0, i);
        return bArr;
    }

    public ByteArray(boolean z, int i) {
        this.ordered = z;
        this.items = new byte[i];
    }

    public void add(byte b, byte b2) {
        byte[] bArr = this.items;
        int i = this.size;
        if (i + 1 >= bArr.length) {
            bArr = m23681a(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        bArr[i2] = b;
        bArr[i2 + 1] = b2;
        this.size = i2 + 2;
    }

    public void incr(byte b) {
        byte[] bArr = this.items;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (bArr[i2] + b);
        }
    }

    public void mul(byte b) {
        byte[] bArr = this.items;
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (bArr[i2] * b);
        }
    }

    public void addAll(byte... bArr) {
        addAll(bArr, 0, bArr.length);
    }

    public ByteArray(ByteArray byteArray) {
        this.ordered = byteArray.ordered;
        int i = byteArray.size;
        this.size = i;
        byte[] bArr = new byte[i];
        this.items = bArr;
        System.arraycopy(byteArray.items, 0, bArr, 0, i);
    }

    public void addAll(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.items;
        int i3 = this.size + i2;
        if (i3 > bArr2.length) {
            bArr2 = m23681a(Math.max(Math.max(8, i3), (int) (this.size * 1.75f)));
        }
        System.arraycopy(bArr, i, bArr2, this.size, i2);
        this.size += i2;
    }

    public void add(byte b, byte b2, byte b3) {
        byte[] bArr = this.items;
        int i = this.size;
        if (i + 2 >= bArr.length) {
            bArr = m23681a(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        bArr[i2] = b;
        bArr[i2 + 1] = b2;
        bArr[i2 + 2] = b3;
        this.size = i2 + 3;
    }

    public ByteArray(byte[] bArr) {
        this(true, bArr, 0, bArr.length);
    }

    public String toString(String str) {
        if (this.size == 0) {
            return "";
        }
        byte[] bArr = this.items;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append((int) bArr[0]);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(str);
            stringBuilder.append((int) bArr[i]);
        }
        return stringBuilder.toString();
    }

    public ByteArray(boolean z, byte[] bArr, int i, int i2) {
        this(z, i2);
        this.size = i2;
        System.arraycopy(bArr, i, this.items, 0, i2);
    }

    public void add(byte b, byte b2, byte b3, byte b4) {
        byte[] bArr = this.items;
        int i = this.size;
        if (i + 3 >= bArr.length) {
            bArr = m23681a(Math.max(8, (int) (i * 1.8f)));
        }
        int i2 = this.size;
        bArr[i2] = b;
        bArr[i2 + 1] = b2;
        bArr[i2 + 2] = b3;
        bArr[i2 + 3] = b4;
        this.size = i2 + 4;
    }
}
