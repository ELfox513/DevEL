package com.prineside.tdi2.utils;

import com.esotericsoftware.kryo.Kryo;
import com.esotericsoftware.kryo.KryoSerializable;
import com.esotericsoftware.kryo.p035io.Input;
import com.esotericsoftware.kryo.p035io.Output;
import java.util.Arrays;
@REGS
/* loaded from: classes2.dex */
public final class BitVector implements KryoSerializable {

    /* renamed from: a */
    public long[] f15062a;

    public BitVector() {
        this.f15062a = new long[]{0};
    }

    public int cardinality() {
        int i = 0;
        int i2 = 0;
        while (true) {
            long[] jArr = this.f15062a;
            if (i < jArr.length) {
                i2 += Long.bitCount(jArr[i]);
                i++;
            } else {
                return i2;
            }
        }
    }

    public void clear(int i) {
        int i2 = i >>> 6;
        long[] jArr = this.f15062a;
        if (i2 >= jArr.length) {
            return;
        }
        jArr[i2] = jArr[i2] & ((1 << i) ^ (-1));
    }

    public void ensureCapacity(int i) {
        m19857a(i >>> 6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || BitVector.class != obj.getClass()) {
            return false;
        }
        BitVector bitVector = (BitVector) obj;
        long[] jArr = bitVector.f15062a;
        int min = Math.min(this.f15062a.length, jArr.length);
        for (int i = 0; min > i; i++) {
            if (this.f15062a[i] != jArr[i]) {
                return false;
            }
        }
        return this.f15062a.length == jArr.length || length() == bitVector.length();
    }

    public boolean get(int i) {
        int i2 = i >>> 6;
        long[] jArr = this.f15062a;
        return i2 < jArr.length && (jArr[i2] & (1 << i)) != 0;
    }

    public int getCapacity() {
        return this.f15062a.length << 6;
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void read(Kryo kryo, Input input) {
        this.f15062a = (long[]) kryo.readObject(input, long[].class);
    }

    public void set(int i) {
        int i2 = i >>> 6;
        m19857a(i2);
        long[] jArr = this.f15062a;
        jArr[i2] = jArr[i2] | (1 << i);
    }

    public void unsafeClear(int i) {
        long[] jArr = this.f15062a;
        int i2 = i >>> 6;
        jArr[i2] = jArr[i2] & ((1 << i) ^ (-1));
    }

    public boolean unsafeGet(int i) {
        return (this.f15062a[i >>> 6] & (1 << i)) != 0;
    }

    public void unsafeSet(int i) {
        long[] jArr = this.f15062a;
        int i2 = i >>> 6;
        jArr[i2] = jArr[i2] | (1 << i);
    }

    @Override // com.esotericsoftware.kryo.KryoSerializable
    public void write(Kryo kryo, Output output) {
        kryo.writeObject(output, this.f15062a);
    }

    /* renamed from: a */
    public final void m19857a(int i) {
        long[] jArr = this.f15062a;
        if (i >= jArr.length) {
            long[] jArr2 = new long[i + 1];
            System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
            this.f15062a = jArr2;
        }
    }

    public void and(BitVector bitVector) {
        int min = Math.min(this.f15062a.length, bitVector.f15062a.length);
        for (int i = 0; min > i; i++) {
            long[] jArr = this.f15062a;
            jArr[i] = jArr[i] & bitVector.f15062a[i];
        }
        long[] jArr2 = this.f15062a;
        if (jArr2.length > min) {
            int length = jArr2.length;
            while (length > min) {
                this.f15062a[min] = 0;
                min++;
            }
        }
    }

    public void andNot(BitVector bitVector) {
        int min = Math.min(this.f15062a.length, bitVector.f15062a.length);
        for (int i = 0; min > i; i++) {
            long[] jArr = this.f15062a;
            jArr[i] = jArr[i] & (bitVector.f15062a[i] ^ (-1));
        }
    }

    public boolean containsAll(BitVector bitVector) {
        long[] jArr = this.f15062a;
        long[] jArr2 = bitVector.f15062a;
        int length = jArr2.length;
        int length2 = jArr.length;
        for (int i = length2; i < length; i++) {
            if (jArr2[i] != 0) {
                return false;
            }
        }
        int min = Math.min(length2, length);
        for (int i2 = 0; min > i2; i2++) {
            long j = jArr[i2];
            long j2 = jArr2[i2];
            if ((j & j2) != j2) {
                return false;
            }
        }
        return true;
    }

    public void flip(int i) {
        int i2 = i >>> 6;
        m19857a(i2);
        long[] jArr = this.f15062a;
        jArr[i2] = jArr[i2] ^ (1 << i);
    }

    public boolean intersects(BitVector bitVector) {
        long[] jArr = this.f15062a;
        long[] jArr2 = bitVector.f15062a;
        int min = Math.min(jArr.length, jArr2.length);
        for (int i = 0; min > i; i++) {
            if ((jArr[i] & jArr2[i]) != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isEmpty() {
        long[] jArr = this.f15062a;
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public int length() {
        long[] jArr = this.f15062a;
        for (int length = jArr.length - 1; length >= 0; length--) {
            long j = jArr[length];
            if (j != 0) {
                return ((length << 6) + 64) - Long.numberOfLeadingZeros(j);
            }
        }
        return 0;
    }

    public int nextClearBit(int i) {
        long j;
        int i2 = i >>> 6;
        long[] jArr = this.f15062a;
        if (i2 >= jArr.length) {
            return Math.min(i, jArr.length << 6);
        }
        long j2 = (jArr[i2] >>> i) ^ (-1);
        if (j2 != 0) {
            return i + Long.numberOfTrailingZeros(j2);
        }
        do {
            i2++;
            long[] jArr2 = this.f15062a;
            if (i2 < jArr2.length) {
                j = jArr2[i2] ^ (-1);
            } else {
                return Math.min(i, jArr2.length << 6);
            }
        } while (j == 0);
        return (i2 * 64) + Long.numberOfTrailingZeros(j);
    }

    public int nextSetBit(int i) {
        long j;
        int i2 = i >>> 6;
        long[] jArr = this.f15062a;
        if (i2 >= jArr.length) {
            return -1;
        }
        long j2 = jArr[i2] >>> i;
        if (j2 != 0) {
            return i + Long.numberOfTrailingZeros(j2);
        }
        do {
            i2++;
            long[] jArr2 = this.f15062a;
            if (i2 >= jArr2.length) {
                return -1;
            }
            j = jArr2[i2];
        } while (j == 0);
        return (i2 * 64) + Long.numberOfTrailingZeros(j);
    }

    /* renamed from: or */
    public void m19856or(BitVector bitVector) {
        int min = Math.min(this.f15062a.length, bitVector.f15062a.length);
        for (int i = 0; min > i; i++) {
            long[] jArr = this.f15062a;
            jArr[i] = jArr[i] | bitVector.f15062a[i];
        }
        long[] jArr2 = bitVector.f15062a;
        if (min < jArr2.length) {
            m19857a(jArr2.length);
            int length = bitVector.f15062a.length;
            while (length > min) {
                this.f15062a[min] = bitVector.f15062a[min];
                min++;
            }
        }
    }

    public void unsafeSet(int i, boolean z) {
        if (z) {
            unsafeSet(i);
        } else {
            unsafeClear(i);
        }
    }

    public void xor(BitVector bitVector) {
        int min = Math.min(this.f15062a.length, bitVector.f15062a.length);
        for (int i = 0; min > i; i++) {
            long[] jArr = this.f15062a;
            jArr[i] = jArr[i] ^ bitVector.f15062a[i];
        }
        long[] jArr2 = bitVector.f15062a;
        if (min < jArr2.length) {
            m19857a(jArr2.length);
            int length = bitVector.f15062a.length;
            while (length > min) {
                this.f15062a[min] = bitVector.f15062a[min];
                min++;
            }
        }
    }

    public BitVector(int i) {
        this.f15062a = new long[]{0};
        m19857a(i >>> 6);
    }

    public void clear() {
        Arrays.fill(this.f15062a, 0L);
    }

    public int hashCode() {
        int length = length() >>> 6;
        int i = 0;
        for (int i2 = 0; length >= i2; i2++) {
            long j = this.f15062a[i2];
            i = (i * 127) + ((int) (j ^ (j >>> 32)));
        }
        return i;
    }

    public void set(int i, boolean z) {
        if (z) {
            set(i);
        } else {
            clear(i);
        }
    }

    public String toString() {
        int cardinality = cardinality();
        int min = Math.min(128, cardinality);
        StringBuilder sb = new StringBuilder();
        sb.append("BitVector[");
        sb.append(cardinality);
        if (cardinality > 0) {
            sb.append(": {");
            int i = 0;
            int nextSetBit = nextSetBit(0);
            while (min > i && nextSetBit != -1) {
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(nextSetBit);
                i++;
                nextSetBit = nextSetBit(nextSetBit + 1);
            }
            if (cardinality > min) {
                sb.append(" ...");
            }
            sb.append("}");
        }
        sb.append("]");
        return sb.toString();
    }

    public BitVector(BitVector bitVector) {
        this.f15062a = new long[]{0};
        long[] jArr = bitVector.f15062a;
        this.f15062a = Arrays.copyOf(jArr, jArr.length);
    }
}
