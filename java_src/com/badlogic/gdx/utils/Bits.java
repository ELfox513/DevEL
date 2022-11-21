package com.badlogic.gdx.utils;

import java.util.Arrays;
/* loaded from: classes.dex */
public class Bits {

    /* renamed from: a */
    public long[] f6427a;

    public Bits() {
        this.f6427a = new long[]{0};
    }

    public void clear(int i) {
        int i2 = i >>> 6;
        long[] jArr = this.f6427a;
        if (i2 >= jArr.length) {
            return;
        }
        jArr[i2] = jArr[i2] & ((1 << (i & 63)) ^ (-1));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Bits bits = (Bits) obj;
        long[] jArr = bits.f6427a;
        int min = Math.min(this.f6427a.length, jArr.length);
        for (int i = 0; min > i; i++) {
            if (this.f6427a[i] != jArr[i]) {
                return false;
            }
        }
        return this.f6427a.length == jArr.length || length() == bits.length();
    }

    public boolean notEmpty() {
        return !isEmpty();
    }

    public int numBits() {
        return this.f6427a.length << 6;
    }

    /* renamed from: a */
    public final void m23687a(int i) {
        long[] jArr = this.f6427a;
        if (i >= jArr.length) {
            long[] jArr2 = new long[i + 1];
            System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
            this.f6427a = jArr2;
        }
    }

    public void and(Bits bits) {
        int min = Math.min(this.f6427a.length, bits.f6427a.length);
        for (int i = 0; min > i; i++) {
            long[] jArr = this.f6427a;
            jArr[i] = jArr[i] & bits.f6427a[i];
        }
        long[] jArr2 = this.f6427a;
        if (jArr2.length > min) {
            int length = jArr2.length;
            while (length > min) {
                this.f6427a[min] = 0;
                min++;
            }
        }
    }

    public void andNot(Bits bits) {
        int length = this.f6427a.length;
        int length2 = bits.f6427a.length;
        for (int i = 0; i < length && i < length2; i++) {
            long[] jArr = this.f6427a;
            jArr[i] = jArr[i] & (bits.f6427a[i] ^ (-1));
        }
    }

    public boolean containsAll(Bits bits) {
        long[] jArr = this.f6427a;
        long[] jArr2 = bits.f6427a;
        int length = jArr2.length;
        int length2 = jArr.length;
        for (int i = length2; i < length; i++) {
            if (jArr2[i] != 0) {
                return false;
            }
        }
        for (int min = Math.min(length2, length) - 1; min >= 0; min--) {
            long j = jArr[min];
            long j2 = jArr2[min];
            if ((j & j2) != j2) {
                return false;
            }
        }
        return true;
    }

    public void flip(int i) {
        int i2 = i >>> 6;
        m23687a(i2);
        long[] jArr = this.f6427a;
        jArr[i2] = jArr[i2] ^ (1 << (i & 63));
    }

    public boolean get(int i) {
        int i2 = i >>> 6;
        long[] jArr = this.f6427a;
        if (i2 >= jArr.length || (jArr[i2] & (1 << (i & 63))) == 0) {
            return false;
        }
        return true;
    }

    public boolean getAndClear(int i) {
        int i2 = i >>> 6;
        long[] jArr = this.f6427a;
        if (i2 >= jArr.length) {
            return false;
        }
        long j = jArr[i2];
        long j2 = ((1 << (i & 63)) ^ (-1)) & j;
        jArr[i2] = j2;
        if (j2 == j) {
            return false;
        }
        return true;
    }

    public boolean getAndSet(int i) {
        int i2 = i >>> 6;
        m23687a(i2);
        long[] jArr = this.f6427a;
        long j = jArr[i2];
        long j2 = (1 << (i & 63)) | j;
        jArr[i2] = j2;
        if (j2 == j) {
            return true;
        }
        return false;
    }

    public boolean intersects(Bits bits) {
        long[] jArr = this.f6427a;
        long[] jArr2 = bits.f6427a;
        for (int min = Math.min(jArr.length, jArr2.length) - 1; min >= 0; min--) {
            if ((jArr[min] & jArr2[min]) != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean isEmpty() {
        long[] jArr = this.f6427a;
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (jArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public int length() {
        long[] jArr = this.f6427a;
        for (int length = jArr.length - 1; length >= 0; length--) {
            long j = jArr[length];
            if (j != 0) {
                for (int i = 63; i >= 0; i--) {
                    if (((1 << (i & 63)) & j) != 0) {
                        return (length << 6) + i + 1;
                    }
                }
                continue;
            }
        }
        return 0;
    }

    public int nextClearBit(int i) {
        int length;
        long[] jArr = this.f6427a;
        int i2 = i >>> 6;
        int length2 = jArr.length;
        if (i2 >= length2) {
            length = jArr.length;
        } else {
            long j = jArr[i2];
            int i3 = i & 63;
            while (true) {
                if (i3 >= 64) {
                    loop1: while (true) {
                        i2++;
                        if (i2 < length2) {
                            if (i2 == 0) {
                                return i2 << 6;
                            }
                            long j2 = jArr[i2];
                            i3 = 0;
                            while (i3 < 64) {
                                if (((1 << (i3 & 63)) & j2) == 0) {
                                    break loop1;
                                }
                                i3++;
                            }
                        } else {
                            length = jArr.length;
                            break;
                        }
                    }
                } else if (((1 << (i3 & 63)) & j) == 0) {
                    break;
                } else {
                    i3++;
                }
            }
            return (i2 << 6) + i3;
        }
        return length << 6;
    }

    public int nextSetBit(int i) {
        int i2;
        long[] jArr = this.f6427a;
        int i3 = i >>> 6;
        int length = jArr.length;
        if (i3 >= length) {
            return -1;
        }
        long j = jArr[i3];
        if (j != 0) {
            i2 = i & 63;
            while (i2 < 64) {
                if (((1 << (i2 & 63)) & j) != 0) {
                    break;
                }
                i2++;
            }
        }
        loop1: while (true) {
            i3++;
            if (i3 >= length) {
                return -1;
            }
            if (i3 != 0) {
                long j2 = jArr[i3];
                if (j2 != 0) {
                    i2 = 0;
                    while (i2 < 64) {
                        if (((1 << (i2 & 63)) & j2) != 0) {
                            break loop1;
                        }
                        i2++;
                    }
                    continue;
                } else {
                    continue;
                }
            }
        }
        return (i3 << 6) + i2;
    }

    /* renamed from: or */
    public void m23686or(Bits bits) {
        int min = Math.min(this.f6427a.length, bits.f6427a.length);
        for (int i = 0; min > i; i++) {
            long[] jArr = this.f6427a;
            jArr[i] = jArr[i] | bits.f6427a[i];
        }
        long[] jArr2 = bits.f6427a;
        if (min < jArr2.length) {
            m23687a(jArr2.length);
            int length = bits.f6427a.length;
            while (length > min) {
                this.f6427a[min] = bits.f6427a[min];
                min++;
            }
        }
    }

    public void set(int i) {
        int i2 = i >>> 6;
        m23687a(i2);
        long[] jArr = this.f6427a;
        jArr[i2] = jArr[i2] | (1 << (i & 63));
    }

    public void xor(Bits bits) {
        int min = Math.min(this.f6427a.length, bits.f6427a.length);
        for (int i = 0; min > i; i++) {
            long[] jArr = this.f6427a;
            jArr[i] = jArr[i] ^ bits.f6427a[i];
        }
        long[] jArr2 = bits.f6427a;
        if (min < jArr2.length) {
            m23687a(jArr2.length);
            int length = bits.f6427a.length;
            while (length > min) {
                this.f6427a[min] = bits.f6427a[min];
                min++;
            }
        }
    }

    public Bits(int i) {
        this.f6427a = new long[]{0};
        m23687a(i >>> 6);
    }

    public void clear() {
        Arrays.fill(this.f6427a, 0L);
    }

    public int hashCode() {
        int length = length() >>> 6;
        int i = 0;
        for (int i2 = 0; length >= i2; i2++) {
            long j = this.f6427a[i2];
            i = (i * 127) + ((int) (j ^ (j >>> 32)));
        }
        return i;
    }

    public Bits(Bits bits) {
        this.f6427a = new long[]{0};
        long[] jArr = new long[bits.f6427a.length];
        this.f6427a = jArr;
        long[] jArr2 = bits.f6427a;
        System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
    }
}
