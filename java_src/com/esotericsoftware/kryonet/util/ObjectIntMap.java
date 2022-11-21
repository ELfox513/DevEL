package com.esotericsoftware.kryonet.util;

import com.esotericsoftware.kryo.util.ObjectMap;
import java.util.Random;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class ObjectIntMap<K> {

    /* renamed from: k */
    public static Random f7587k = new Random();

    /* renamed from: a */
    public K[] f7588a;

    /* renamed from: b */
    public int[] f7589b;

    /* renamed from: c */
    public int f7590c;

    /* renamed from: d */
    public int f7591d;

    /* renamed from: e */
    public float f7592e;

    /* renamed from: f */
    public int f7593f;

    /* renamed from: g */
    public int f7594g;

    /* renamed from: h */
    public int f7595h;

    /* renamed from: i */
    public int f7596i;

    /* renamed from: j */
    public int f7597j;
    public int size;

    public ObjectIntMap() {
        this(32, 0.8f);
    }

    public void clear(int i) {
        if (this.f7590c <= i) {
            clear();
            return;
        }
        this.size = 0;
        m23125k(i);
    }

    /* renamed from: d */
    public final int m23132d(int i) {
        int i2 = i * (-1262997959);
        return (i2 ^ (i2 >>> this.f7593f)) & this.f7594g;
    }

    /* renamed from: e */
    public final int m23131e(int i) {
        int i2 = i * (-825114047);
        return (i2 ^ (i2 >>> this.f7593f)) & this.f7594g;
    }

    public ObjectIntMap(int i) {
        this(i, 0.8f);
    }

    /* renamed from: a */
    public final boolean m23135a(K k) {
        K[] kArr = this.f7588a;
        int i = this.f7590c;
        int i2 = this.f7591d + i;
        while (i < i2) {
            if (k.equals(kArr[i])) {
                return true;
            }
            i++;
        }
        return false;
    }

    /* renamed from: b */
    public final int m23134b(K k, int i, int i2) {
        K[] kArr = this.f7588a;
        int i3 = this.f7590c;
        int i4 = this.f7591d + i3;
        while (i3 < i4) {
            if (k.equals(kArr[i3])) {
                int[] iArr = this.f7589b;
                int i5 = iArr[i3];
                iArr[i3] = i2 + i5;
                return i5;
            }
            i3++;
        }
        put(k, i2 + i);
        return i;
    }

    /* renamed from: c */
    public final int m23133c(K k, int i) {
        K[] kArr = this.f7588a;
        int i2 = this.f7590c;
        int i3 = this.f7591d + i2;
        while (i2 < i3) {
            if (k.equals(kArr[i2])) {
                return this.f7589b[i2];
            }
            i2++;
        }
        return i;
    }

    public boolean containsValue(int i) {
        int[] iArr = this.f7589b;
        int i2 = this.f7590c + this.f7591d;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                if (iArr[i3] == i) {
                    return true;
                }
                i2 = i3;
            } else {
                return false;
            }
        }
    }

    public void ensureCapacity(int i) {
        int i2 = this.size + i;
        if (i2 >= this.f7595h) {
            m23125k(ObjectMap.nextPowerOfTwo((int) (i2 / this.f7592e)));
        }
    }

    /* renamed from: f */
    public final void m23130f(K k, int i, int i2, K k2, int i3, K k3, int i4, K k4) {
        K[] kArr = this.f7588a;
        int[] iArr = this.f7589b;
        int i5 = this.f7594g;
        int i6 = this.f7597j;
        K k5 = k;
        int i7 = i;
        int i8 = i2;
        K k6 = k2;
        int i9 = i3;
        K k7 = k3;
        int i10 = i4;
        K k8 = k4;
        int i11 = 0;
        while (true) {
            int nextInt = f7587k.nextInt(3);
            if (nextInt != 0) {
                if (nextInt != 1) {
                    int i12 = iArr[i10];
                    kArr[i10] = k5;
                    iArr[i10] = i7;
                    i7 = i12;
                    k5 = k8;
                } else {
                    int i13 = iArr[i9];
                    kArr[i9] = k5;
                    iArr[i9] = i7;
                    i7 = i13;
                    k5 = k7;
                }
            } else {
                int i14 = iArr[i8];
                kArr[i8] = k5;
                iArr[i8] = i7;
                k5 = k6;
                i7 = i14;
            }
            int hashCode = k5.hashCode();
            int i15 = hashCode & i5;
            K k9 = kArr[i15];
            if (k9 == null) {
                kArr[i15] = k5;
                iArr[i15] = i7;
                int i16 = this.size;
                this.size = i16 + 1;
                if (i16 >= this.f7595h) {
                    m23125k(this.f7590c << 1);
                    return;
                }
                return;
            }
            int m23132d = m23132d(hashCode);
            K k10 = kArr[m23132d];
            if (k10 == null) {
                kArr[m23132d] = k5;
                iArr[m23132d] = i7;
                int i17 = this.size;
                this.size = i17 + 1;
                if (i17 >= this.f7595h) {
                    m23125k(this.f7590c << 1);
                    return;
                }
                return;
            }
            int m23131e = m23131e(hashCode);
            k8 = kArr[m23131e];
            if (k8 == null) {
                kArr[m23131e] = k5;
                iArr[m23131e] = i7;
                int i18 = this.size;
                this.size = i18 + 1;
                if (i18 >= this.f7595h) {
                    m23125k(this.f7590c << 1);
                    return;
                }
                return;
            }
            i11++;
            if (i11 == i6) {
                m23128h(k5, i7);
                return;
            }
            i10 = m23131e;
            i8 = i15;
            k6 = k9;
            i9 = m23132d;
            k7 = k10;
        }
    }

    public K findKey(int i) {
        int[] iArr = this.f7589b;
        int i2 = this.f7590c + this.f7591d;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                if (iArr[i3] == i) {
                    return this.f7588a[i3];
                }
                i2 = i3;
            } else {
                return null;
            }
        }
    }

    /* renamed from: h */
    public final void m23128h(K k, int i) {
        int i2 = this.f7591d;
        if (i2 == this.f7596i) {
            m23125k(this.f7590c << 1);
            put(k, i);
            return;
        }
        int i3 = this.f7590c + i2;
        this.f7588a[i3] = k;
        this.f7589b[i3] = i;
        this.f7591d = i2 + 1;
        this.size++;
    }

    /* renamed from: i */
    public int m23127i(K k, int i) {
        K[] kArr = this.f7588a;
        int i2 = this.f7590c;
        int i3 = this.f7591d + i2;
        while (i2 < i3) {
            if (k.equals(kArr[i2])) {
                int i4 = this.f7589b[i2];
                m23126j(i2);
                this.size--;
                return i4;
            }
            i2++;
        }
        return i;
    }

    /* renamed from: j */
    public void m23126j(int i) {
        int i2 = this.f7591d - 1;
        this.f7591d = i2;
        int i3 = this.f7590c + i2;
        if (i < i3) {
            K[] kArr = this.f7588a;
            kArr[i] = kArr[i3];
            int[] iArr = this.f7589b;
            iArr[i] = iArr[i3];
        }
    }

    /* renamed from: k */
    public final void m23125k(int i) {
        int i2 = this.f7590c + this.f7591d;
        this.f7590c = i;
        this.f7595h = (int) (i * this.f7592e);
        this.f7594g = i - 1;
        this.f7593f = 31 - Integer.numberOfTrailingZeros(i);
        double d = i;
        this.f7596i = Math.max(3, ((int) Math.ceil(Math.log(d))) * 2);
        this.f7597j = Math.max(Math.min(i, 8), ((int) Math.sqrt(d)) / 8);
        K[] kArr = this.f7588a;
        int[] iArr = this.f7589b;
        int i3 = this.f7596i;
        this.f7588a = (K[]) new Object[i + i3];
        this.f7589b = new int[i + i3];
        int i4 = this.size;
        this.size = 0;
        this.f7591d = 0;
        if (i4 > 0) {
            for (int i5 = 0; i5 < i2; i5++) {
                K k = kArr[i5];
                if (k != null) {
                    m23129g(k, iArr[i5]);
                }
            }
        }
    }

    public void put(K k, int i) {
        if (k != null) {
            K[] kArr = this.f7588a;
            int hashCode = k.hashCode();
            int i2 = hashCode & this.f7594g;
            K k2 = kArr[i2];
            if (k.equals(k2)) {
                this.f7589b[i2] = i;
                return;
            }
            int m23132d = m23132d(hashCode);
            K k3 = kArr[m23132d];
            if (k.equals(k3)) {
                this.f7589b[m23132d] = i;
                return;
            }
            int m23131e = m23131e(hashCode);
            K k4 = kArr[m23131e];
            if (k.equals(k4)) {
                this.f7589b[m23131e] = i;
                return;
            }
            int i3 = this.f7590c;
            int i4 = this.f7591d + i3;
            while (i3 < i4) {
                if (k.equals(kArr[i3])) {
                    this.f7589b[i3] = i;
                    return;
                }
                i3++;
            }
            if (k2 == null) {
                kArr[i2] = k;
                this.f7589b[i2] = i;
                int i5 = this.size;
                this.size = i5 + 1;
                if (i5 >= this.f7595h) {
                    m23125k(this.f7590c << 1);
                    return;
                }
                return;
            } else if (k3 == null) {
                kArr[m23132d] = k;
                this.f7589b[m23132d] = i;
                int i6 = this.size;
                this.size = i6 + 1;
                if (i6 >= this.f7595h) {
                    m23125k(this.f7590c << 1);
                    return;
                }
                return;
            } else if (k4 == null) {
                kArr[m23131e] = k;
                this.f7589b[m23131e] = i;
                int i7 = this.size;
                this.size = i7 + 1;
                if (i7 >= this.f7595h) {
                    m23125k(this.f7590c << 1);
                    return;
                }
                return;
            } else {
                m23130f(k, i, i2, k2, m23132d, k3, m23131e, k4);
                return;
            }
        }
        throw new IllegalArgumentException("key cannot be null.");
    }

    public void shrink(int i) {
        if (i >= 0) {
            int i2 = this.size;
            if (i2 > i) {
                i = i2;
            }
            if (this.f7590c <= i) {
                return;
            }
            m23125k(ObjectMap.nextPowerOfTwo(i));
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    public String toString() {
        int i;
        if (this.size == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append('{');
        K[] kArr = this.f7588a;
        int[] iArr = this.f7589b;
        int length = kArr.length;
        while (true) {
            i = length - 1;
            if (length > 0) {
                K k = kArr[i];
                if (k == null) {
                    length = i;
                } else {
                    sb.append(k);
                    sb.append(SignatureVisitor.INSTANCEOF);
                    sb.append(iArr[i]);
                    break;
                }
            } else {
                break;
            }
        }
        while (true) {
            int i2 = i - 1;
            if (i > 0) {
                K k2 = kArr[i2];
                if (k2 != null) {
                    sb.append(", ");
                    sb.append(k2);
                    sb.append(SignatureVisitor.INSTANCEOF);
                    sb.append(iArr[i2]);
                }
                i = i2;
            } else {
                sb.append('}');
                return sb.toString();
            }
        }
    }

    public ObjectIntMap(int i, float f) {
        if (i < 0) {
            throw new IllegalArgumentException("initialCapacity must be >= 0: " + i);
        } else if (i <= 1073741824) {
            int nextPowerOfTwo = ObjectMap.nextPowerOfTwo(i);
            this.f7590c = nextPowerOfTwo;
            if (f > 0.0f) {
                this.f7592e = f;
                this.f7595h = (int) (nextPowerOfTwo * f);
                this.f7594g = nextPowerOfTwo - 1;
                this.f7593f = 31 - Integer.numberOfTrailingZeros(nextPowerOfTwo);
                this.f7596i = Math.max(3, ((int) Math.ceil(Math.log(this.f7590c))) * 2);
                this.f7597j = Math.max(Math.min(this.f7590c, 8), ((int) Math.sqrt(this.f7590c)) / 8);
                K[] kArr = (K[]) new Object[this.f7590c + this.f7596i];
                this.f7588a = kArr;
                this.f7589b = new int[kArr.length];
                return;
            }
            throw new IllegalArgumentException("loadFactor must be > 0: " + f);
        } else {
            throw new IllegalArgumentException("initialCapacity is too large: " + i);
        }
    }

    public boolean containsKey(K k) {
        int hashCode = k.hashCode();
        if (!k.equals(this.f7588a[this.f7594g & hashCode])) {
            if (!k.equals(this.f7588a[m23132d(hashCode)])) {
                if (!k.equals(this.f7588a[m23131e(hashCode)])) {
                    return m23135a(k);
                }
                return true;
            }
            return true;
        }
        return true;
    }

    /* renamed from: g */
    public final void m23129g(K k, int i) {
        int hashCode = k.hashCode();
        int i2 = hashCode & this.f7594g;
        K[] kArr = this.f7588a;
        K k2 = kArr[i2];
        if (k2 == null) {
            kArr[i2] = k;
            this.f7589b[i2] = i;
            int i3 = this.size;
            this.size = i3 + 1;
            if (i3 >= this.f7595h) {
                m23125k(this.f7590c << 1);
                return;
            }
            return;
        }
        int m23132d = m23132d(hashCode);
        K[] kArr2 = this.f7588a;
        K k3 = kArr2[m23132d];
        if (k3 == null) {
            kArr2[m23132d] = k;
            this.f7589b[m23132d] = i;
            int i4 = this.size;
            this.size = i4 + 1;
            if (i4 >= this.f7595h) {
                m23125k(this.f7590c << 1);
                return;
            }
            return;
        }
        int m23131e = m23131e(hashCode);
        K[] kArr3 = this.f7588a;
        K k4 = kArr3[m23131e];
        if (k4 == null) {
            kArr3[m23131e] = k;
            this.f7589b[m23131e] = i;
            int i5 = this.size;
            this.size = i5 + 1;
            if (i5 >= this.f7595h) {
                m23125k(this.f7590c << 1);
                return;
            }
            return;
        }
        m23130f(k, i, i2, k2, m23132d, k3, m23131e, k4);
    }

    public int get(K k, int i) {
        int hashCode = k.hashCode();
        int i2 = this.f7594g & hashCode;
        if (!k.equals(this.f7588a[i2])) {
            i2 = m23132d(hashCode);
            if (!k.equals(this.f7588a[i2])) {
                i2 = m23131e(hashCode);
                if (!k.equals(this.f7588a[i2])) {
                    return m23133c(k, i);
                }
            }
        }
        return this.f7589b[i2];
    }

    public int getAndIncrement(K k, int i, int i2) {
        int hashCode = k.hashCode();
        int i3 = this.f7594g & hashCode;
        if (!k.equals(this.f7588a[i3])) {
            i3 = m23132d(hashCode);
            if (!k.equals(this.f7588a[i3])) {
                i3 = m23131e(hashCode);
                if (!k.equals(this.f7588a[i3])) {
                    return m23134b(k, i, i2);
                }
            }
        }
        int[] iArr = this.f7589b;
        int i4 = iArr[i3];
        iArr[i3] = i2 + i4;
        return i4;
    }

    public int remove(K k, int i) {
        int hashCode = k.hashCode();
        int i2 = this.f7594g & hashCode;
        if (k.equals(this.f7588a[i2])) {
            this.f7588a[i2] = null;
            this.size--;
            return this.f7589b[i2];
        }
        int m23132d = m23132d(hashCode);
        if (k.equals(this.f7588a[m23132d])) {
            this.f7588a[m23132d] = null;
            this.size--;
            return this.f7589b[m23132d];
        }
        int m23131e = m23131e(hashCode);
        if (k.equals(this.f7588a[m23131e])) {
            this.f7588a[m23131e] = null;
            this.size--;
            return this.f7589b[m23131e];
        }
        return m23127i(k, i);
    }

    public void clear() {
        K[] kArr = this.f7588a;
        int i = this.f7590c + this.f7591d;
        while (true) {
            int i2 = i - 1;
            if (i > 0) {
                kArr[i2] = null;
                i = i2;
            } else {
                this.size = 0;
                this.f7591d = 0;
                return;
            }
        }
    }

    public ObjectIntMap(ObjectIntMap<? extends K> objectIntMap) {
        this(objectIntMap.f7590c, objectIntMap.f7592e);
        this.f7591d = objectIntMap.f7591d;
        Object[] objArr = objectIntMap.f7588a;
        System.arraycopy(objArr, 0, this.f7588a, 0, objArr.length);
        int[] iArr = objectIntMap.f7589b;
        System.arraycopy(iArr, 0, this.f7589b, 0, iArr.length);
        this.size = objectIntMap.size;
    }
}
