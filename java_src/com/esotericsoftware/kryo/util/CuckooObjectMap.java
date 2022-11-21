package com.esotericsoftware.kryo.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Random;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
@Deprecated
/* loaded from: classes.dex */
public class CuckooObjectMap<K, V> {

    /* renamed from: l */
    public static Random f7379l = new Random();

    /* renamed from: a */
    public K[] f7380a;

    /* renamed from: b */
    public V[] f7381b;

    /* renamed from: c */
    public int f7382c;

    /* renamed from: d */
    public int f7383d;

    /* renamed from: e */
    public float f7384e;

    /* renamed from: f */
    public int f7385f;

    /* renamed from: g */
    public int f7386g;

    /* renamed from: h */
    public int f7387h;

    /* renamed from: i */
    public int f7388i;

    /* renamed from: j */
    public int f7389j;

    /* renamed from: k */
    public boolean f7390k;
    public int size;

    /* loaded from: classes.dex */
    public static class Entries<K, V> extends MapIterator<K, V> implements Iterable<Entry<K, V>>, Iterator<Entry<K, V>> {

        /* renamed from: k */
        public Entry<K, V> f7391k;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.lang.Iterable
        public Iterator<Entry<K, V>> iterator() {
            return this;
        }

        @Override // com.esotericsoftware.kryo.util.CuckooObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.CuckooObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public Entry<K, V> next() {
            if (this.hasNext) {
                CuckooObjectMap<K, V> cuckooObjectMap = this.f7392a;
                K[] kArr = cuckooObjectMap.f7380a;
                Entry<K, V> entry = this.f7391k;
                int i = this.f7393b;
                entry.key = kArr[i];
                entry.value = cuckooObjectMap.f7381b[i];
                this.f7394d = i;
                m23177e();
                return this.f7391k;
            }
            throw new NoSuchElementException();
        }

        public Entries(CuckooObjectMap<K, V> cuckooObjectMap) {
            super(cuckooObjectMap);
            this.f7391k = new Entry<>();
        }
    }

    /* loaded from: classes.dex */
    public static class Entry<K, V> {
        public K key;
        public V value;

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys<K> extends MapIterator<K, Object> implements Iterable<K>, Iterator<K> {
        public Keys(CuckooObjectMap<K, ?> cuckooObjectMap) {
            super(cuckooObjectMap);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.lang.Iterable
        public Iterator<K> iterator() {
            return this;
        }

        @Override // com.esotericsoftware.kryo.util.CuckooObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.CuckooObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public K next() {
            if (this.hasNext) {
                K[] kArr = this.f7392a.f7380a;
                int i = this.f7393b;
                K k = kArr[i];
                this.f7394d = i;
                m23177e();
                return k;
            }
            throw new NoSuchElementException();
        }

        public ArrayList<K> toArray() {
            ArrayList<K> arrayList = new ArrayList<>(this.f7392a.size);
            while (this.hasNext) {
                arrayList.add(next());
            }
            return arrayList;
        }
    }

    /* loaded from: classes.dex */
    public static class MapIterator<K, V> {

        /* renamed from: a */
        public final CuckooObjectMap<K, V> f7392a;

        /* renamed from: b */
        public int f7393b;

        /* renamed from: d */
        public int f7394d;
        public boolean hasNext;

        /* renamed from: e */
        public void m23177e() {
            int i;
            this.hasNext = false;
            CuckooObjectMap<K, V> cuckooObjectMap = this.f7392a;
            K[] kArr = cuckooObjectMap.f7380a;
            int i2 = cuckooObjectMap.f7382c + cuckooObjectMap.f7383d;
            do {
                i = this.f7393b + 1;
                this.f7393b = i;
                if (i >= i2) {
                    return;
                }
            } while (kArr[i] == null);
            this.hasNext = true;
        }

        public void reset() {
            this.f7394d = -1;
            this.f7393b = -1;
            m23177e();
        }

        public void remove() {
            int i = this.f7394d;
            if (i >= 0) {
                CuckooObjectMap<K, V> cuckooObjectMap = this.f7392a;
                if (i >= cuckooObjectMap.f7382c) {
                    cuckooObjectMap.m23179l(i);
                    this.f7393b = this.f7394d - 1;
                    m23177e();
                } else {
                    cuckooObjectMap.f7380a[i] = null;
                    cuckooObjectMap.f7381b[i] = null;
                }
                this.f7394d = -1;
                CuckooObjectMap<K, V> cuckooObjectMap2 = this.f7392a;
                cuckooObjectMap2.size--;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(CuckooObjectMap<K, V> cuckooObjectMap) {
            this.f7392a = cuckooObjectMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values<V> extends MapIterator<Object, V> implements Iterable<V>, Iterator<V> {
        public Values(CuckooObjectMap<?, V> cuckooObjectMap) {
            super(cuckooObjectMap);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.lang.Iterable
        public Iterator<V> iterator() {
            return this;
        }

        @Override // com.esotericsoftware.kryo.util.CuckooObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.CuckooObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public ArrayList<V> toArray() {
            ArrayList<V> arrayList = new ArrayList<>(this.f7392a.size);
            while (this.hasNext) {
                arrayList.add(next());
            }
            return arrayList;
        }

        @Override // java.util.Iterator
        public V next() {
            if (this.hasNext) {
                V[] vArr = this.f7392a.f7381b;
                int i = this.f7393b;
                V v = vArr[i];
                this.f7394d = i;
                m23177e();
                return v;
            }
            throw new NoSuchElementException();
        }

        public void toArray(ArrayList<V> arrayList) {
            while (this.hasNext) {
                arrayList.add(next());
            }
        }
    }

    public CuckooObjectMap() {
        this(32, 0.8f);
    }

    public static int nextPowerOfTwo(int i) {
        if (i == 0) {
            return 1;
        }
        int i2 = i - 1;
        int i3 = i2 | (i2 >> 1);
        int i4 = i3 | (i3 >> 2);
        int i5 = i4 | (i4 >> 4);
        int i6 = i5 | (i5 >> 8);
        return (i6 | (i6 >> 16)) + 1;
    }

    public void clear(int i) {
        if (this.f7382c <= i) {
            clear();
            return;
        }
        this.size = 0;
        m23178m(i);
    }

    /* renamed from: d */
    public final int m23187d(int i) {
        int i2 = i * (-1105259343);
        return (i2 ^ (i2 >>> this.f7385f)) & this.f7386g;
    }

    /* renamed from: e */
    public final int m23186e(int i) {
        int i2 = i * (-1262997959);
        return (i2 ^ (i2 >>> this.f7385f)) & this.f7386g;
    }

    public Entries<K, V> entries() {
        return new Entries<>(this);
    }

    /* renamed from: f */
    public final int m23185f(int i) {
        int i2 = i * (-825114047);
        return (i2 ^ (i2 >>> this.f7385f)) & this.f7386g;
    }

    /* renamed from: g */
    public final void m23184g(K k, V v, int i, K k2, int i2, K k3, int i3, K k4, int i4, K k5) {
        K[] kArr = this.f7380a;
        V[] vArr = this.f7381b;
        int i5 = this.f7386g;
        boolean z = this.f7390k;
        int i6 = this.f7389j;
        int i7 = z ? 4 : 3;
        K k6 = k;
        V v2 = v;
        int i8 = i;
        K k7 = k2;
        int i9 = i2;
        K k8 = k3;
        int i10 = i3;
        K k9 = k4;
        int i11 = i4;
        K k10 = k5;
        int i12 = 0;
        while (true) {
            int nextInt = f7379l.nextInt(i7);
            int i13 = i7;
            if (nextInt == 0) {
                V v3 = vArr[i8];
                kArr[i8] = k6;
                vArr[i8] = v2;
                k6 = k7;
                v2 = v3;
            } else if (nextInt == 1) {
                V v4 = vArr[i9];
                kArr[i9] = k6;
                vArr[i9] = v2;
                v2 = v4;
                k6 = k8;
            } else if (nextInt != 2) {
                V v5 = vArr[i11];
                kArr[i11] = k6;
                vArr[i11] = v2;
                v2 = v5;
                k6 = k10;
            } else {
                V v6 = vArr[i10];
                kArr[i10] = k6;
                vArr[i10] = v2;
                v2 = v6;
                k6 = k9;
            }
            int hashCode = k6.hashCode();
            int i14 = hashCode & i5;
            K k11 = kArr[i14];
            if (k11 == null) {
                kArr[i14] = k6;
                vArr[i14] = v2;
                int i15 = this.size;
                this.size = i15 + 1;
                if (i15 >= this.f7387h) {
                    m23178m(this.f7382c << 1);
                    return;
                }
                return;
            }
            int m23187d = m23187d(hashCode);
            K k12 = kArr[m23187d];
            if (k12 == null) {
                kArr[m23187d] = k6;
                vArr[m23187d] = v2;
                int i16 = this.size;
                this.size = i16 + 1;
                if (i16 >= this.f7387h) {
                    m23178m(this.f7382c << 1);
                    return;
                }
                return;
            }
            int m23186e = m23186e(hashCode);
            K k13 = kArr[m23186e];
            if (k13 == null) {
                kArr[m23186e] = k6;
                vArr[m23186e] = v2;
                int i17 = this.size;
                this.size = i17 + 1;
                if (i17 >= this.f7387h) {
                    m23178m(this.f7382c << 1);
                    return;
                }
                return;
            }
            if (z) {
                int m23185f = m23185f(hashCode);
                K k14 = kArr[m23185f];
                if (k14 == null) {
                    kArr[m23185f] = k6;
                    vArr[m23185f] = v2;
                    int i18 = this.size;
                    this.size = i18 + 1;
                    if (i18 >= this.f7387h) {
                        m23178m(this.f7382c << 1);
                        return;
                    }
                    return;
                }
                k10 = k14;
                i11 = m23185f;
            }
            int i19 = i12 + 1;
            if (i19 == i6) {
                m23182i(k6, v2);
                return;
            }
            i12 = i19;
            i8 = i14;
            k7 = k11;
            i9 = m23187d;
            k8 = k12;
            i10 = m23186e;
            i7 = i13;
            k9 = k13;
        }
    }

    public V get(K k) {
        int hashCode = k.hashCode();
        int i = this.f7386g & hashCode;
        if (!k.equals(this.f7380a[i])) {
            i = m23187d(hashCode);
            if (!k.equals(this.f7380a[i])) {
                i = m23186e(hashCode);
                if (!k.equals(this.f7380a[i])) {
                    if (this.f7390k) {
                        i = m23185f(hashCode);
                        if (!k.equals(this.f7380a[i])) {
                            return m23189b(k);
                        }
                    } else {
                        return m23189b(k);
                    }
                }
            }
        }
        return this.f7381b[i];
    }

    public Keys<K> keys() {
        return new Keys<>(this);
    }

    public Values<V> values() {
        return new Values<>(this);
    }

    public CuckooObjectMap(int i) {
        this(i, 0.8f);
    }

    /* renamed from: a */
    public final boolean m23190a(K k) {
        K[] kArr = this.f7380a;
        int i = this.f7382c;
        int i2 = this.f7383d + i;
        while (i < i2) {
            if (k.equals(kArr[i])) {
                return true;
            }
            i++;
        }
        return false;
    }

    /* renamed from: b */
    public final V m23189b(K k) {
        K[] kArr = this.f7380a;
        int i = this.f7382c;
        int i2 = this.f7383d + i;
        while (i < i2) {
            if (k.equals(kArr[i])) {
                return this.f7381b[i];
            }
            i++;
        }
        return null;
    }

    /* renamed from: c */
    public final V m23188c(K k, V v) {
        K[] kArr = this.f7380a;
        int i = this.f7382c;
        int i2 = this.f7383d + i;
        while (i < i2) {
            if (k.equals(kArr[i])) {
                return this.f7381b[i];
            }
            i++;
        }
        return v;
    }

    public boolean containsValue(Object obj, boolean z) {
        V[] vArr = this.f7381b;
        if (obj == null) {
            K[] kArr = this.f7380a;
            int i = this.f7382c + this.f7383d;
            while (true) {
                int i2 = i - 1;
                if (i > 0) {
                    if (kArr[i2] != null && vArr[i2] == null) {
                        return true;
                    }
                    i = i2;
                } else {
                    return false;
                }
            }
        } else if (z) {
            int i3 = this.f7382c + this.f7383d;
            while (true) {
                int i4 = i3 - 1;
                if (i3 > 0) {
                    if (vArr[i4] == obj) {
                        return true;
                    }
                    i3 = i4;
                } else {
                    return false;
                }
            }
        } else {
            int i5 = this.f7382c + this.f7383d;
            while (true) {
                int i6 = i5 - 1;
                if (i5 > 0) {
                    if (obj.equals(vArr[i6])) {
                        return true;
                    }
                    i5 = i6;
                } else {
                    return false;
                }
            }
        }
    }

    public void ensureCapacity(int i) {
        int i2 = this.size + i;
        if (i2 >= this.f7387h) {
            m23178m(nextPowerOfTwo((int) (i2 / this.f7384e)));
        }
    }

    public K findKey(Object obj, boolean z) {
        V[] vArr = this.f7381b;
        if (obj == null) {
            K[] kArr = this.f7380a;
            int i = this.f7382c + this.f7383d;
            while (true) {
                int i2 = i - 1;
                if (i > 0) {
                    K k = kArr[i2];
                    if (k != null && vArr[i2] == null) {
                        return k;
                    }
                    i = i2;
                } else {
                    return null;
                }
            }
        } else if (z) {
            int i3 = this.f7382c + this.f7383d;
            while (true) {
                int i4 = i3 - 1;
                if (i3 > 0) {
                    if (vArr[i4] == obj) {
                        return this.f7380a[i4];
                    }
                    i3 = i4;
                } else {
                    return null;
                }
            }
        } else {
            int i5 = this.f7382c + this.f7383d;
            while (true) {
                int i6 = i5 - 1;
                if (i5 > 0) {
                    if (obj.equals(vArr[i6])) {
                        return this.f7380a[i6];
                    }
                    i5 = i6;
                } else {
                    return null;
                }
            }
        }
    }

    /* renamed from: i */
    public final void m23182i(K k, V v) {
        int i = this.f7383d;
        if (i == this.f7388i) {
            m23178m(this.f7382c << 1);
            m23181j(k, v);
            return;
        }
        int i2 = this.f7382c + i;
        this.f7380a[i2] = k;
        this.f7381b[i2] = v;
        this.f7383d = i + 1;
        this.size++;
    }

    /* renamed from: j */
    public final V m23181j(K k, V v) {
        K k2;
        int i;
        K[] kArr = this.f7380a;
        int i2 = this.f7386g;
        boolean z = this.f7390k;
        int hashCode = k.hashCode();
        int i3 = hashCode & i2;
        K k3 = kArr[i3];
        if (k.equals(k3)) {
            V[] vArr = this.f7381b;
            V v2 = vArr[i3];
            vArr[i3] = v;
            return v2;
        }
        int m23187d = m23187d(hashCode);
        K k4 = kArr[m23187d];
        if (k.equals(k4)) {
            V[] vArr2 = this.f7381b;
            V v3 = vArr2[m23187d];
            vArr2[m23187d] = v;
            return v3;
        }
        int m23186e = m23186e(hashCode);
        K k5 = kArr[m23186e];
        if (k.equals(k5)) {
            V[] vArr3 = this.f7381b;
            V v4 = vArr3[m23186e];
            vArr3[m23186e] = v;
            return v4;
        }
        if (z) {
            int m23185f = m23185f(hashCode);
            K k6 = kArr[m23185f];
            if (k.equals(k6)) {
                V[] vArr4 = this.f7381b;
                V v5 = vArr4[m23185f];
                vArr4[m23185f] = v;
                return v5;
            }
            i = m23185f;
            k2 = k6;
        } else {
            k2 = null;
            i = -1;
        }
        int i4 = this.f7382c;
        int i5 = this.f7383d + i4;
        while (i4 < i5) {
            if (k.equals(kArr[i4])) {
                V[] vArr5 = this.f7381b;
                V v6 = vArr5[i4];
                vArr5[i4] = v;
                return v6;
            }
            i4++;
        }
        if (k3 == null) {
            kArr[i3] = k;
            this.f7381b[i3] = v;
            int i6 = this.size;
            this.size = i6 + 1;
            if (i6 >= this.f7387h) {
                m23178m(this.f7382c << 1);
            }
            return null;
        } else if (k4 == null) {
            kArr[m23187d] = k;
            this.f7381b[m23187d] = v;
            int i7 = this.size;
            this.size = i7 + 1;
            if (i7 >= this.f7387h) {
                m23178m(this.f7382c << 1);
            }
            return null;
        } else if (k5 == null) {
            kArr[m23186e] = k;
            this.f7381b[m23186e] = v;
            int i8 = this.size;
            this.size = i8 + 1;
            if (i8 >= this.f7387h) {
                m23178m(this.f7382c << 1);
            }
            return null;
        } else if (z && k2 == null) {
            kArr[i] = k;
            this.f7381b[i] = v;
            int i9 = this.size;
            this.size = i9 + 1;
            if (i9 >= this.f7387h) {
                m23178m(this.f7382c << 1);
            }
            return null;
        } else {
            m23184g(k, v, i3, k3, m23187d, k4, m23186e, k5, i, k2);
            return null;
        }
    }

    /* renamed from: k */
    public V m23180k(K k) {
        K[] kArr = this.f7380a;
        int i = this.f7382c;
        int i2 = this.f7383d + i;
        while (i < i2) {
            if (k.equals(kArr[i])) {
                V v = this.f7381b[i];
                m23179l(i);
                this.size--;
                return v;
            }
            i++;
        }
        return null;
    }

    /* renamed from: l */
    public void m23179l(int i) {
        int i2 = this.f7383d - 1;
        this.f7383d = i2;
        int i3 = this.f7382c + i2;
        if (i < i3) {
            K[] kArr = this.f7380a;
            kArr[i] = kArr[i3];
            V[] vArr = this.f7381b;
            vArr[i] = vArr[i3];
            vArr[i3] = null;
            return;
        }
        this.f7381b[i] = null;
    }

    /* renamed from: m */
    public final void m23178m(int i) {
        boolean z;
        int i2 = this.f7382c + this.f7383d;
        this.f7382c = i;
        this.f7387h = (int) (i * this.f7384e);
        this.f7386g = i - 1;
        this.f7385f = 31 - Integer.numberOfTrailingZeros(i);
        double d = i;
        this.f7388i = Math.max(3, ((int) Math.ceil(Math.log(d))) * 2);
        this.f7389j = Math.max(Math.min(i, 8), ((int) Math.sqrt(d)) / 8);
        if ((this.f7382c >>> 16) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.f7390k = z;
        K[] kArr = this.f7380a;
        V[] vArr = this.f7381b;
        int i3 = this.f7388i;
        this.f7380a = (K[]) new Object[i + i3];
        this.f7381b = (V[]) new Object[i + i3];
        int i4 = this.size;
        this.size = 0;
        this.f7383d = 0;
        if (i4 > 0) {
            for (int i5 = 0; i5 < i2; i5++) {
                K k = kArr[i5];
                if (k != null) {
                    m23183h(k, vArr[i5]);
                }
            }
        }
    }

    public V put(K k, V v) {
        if (k != null) {
            return m23181j(k, v);
        }
        throw new IllegalArgumentException("key cannot be null.");
    }

    public void putAll(CuckooObjectMap<K, V> cuckooObjectMap) {
        ensureCapacity(cuckooObjectMap.size);
        Iterator<Entry<K, V>> it = cuckooObjectMap.entries().iterator();
        while (it.hasNext()) {
            Entry<K, V> next = it.next();
            put(next.key, next.value);
        }
    }

    public void shrink(int i) {
        if (i >= 0) {
            int i2 = this.size;
            if (i2 > i) {
                i = i2;
            }
            if (this.f7382c <= i) {
                return;
            }
            m23178m(nextPowerOfTwo(i));
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
        K[] kArr = this.f7380a;
        V[] vArr = this.f7381b;
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
                    sb.append(vArr[i]);
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
                    sb.append(vArr[i2]);
                }
                i = i2;
            } else {
                sb.append('}');
                return sb.toString();
            }
        }
    }

    public CuckooObjectMap(int i, float f) {
        if (i < 0) {
            throw new IllegalArgumentException("initialCapacity must be >= 0: " + i);
        } else if (i <= 1073741824) {
            int nextPowerOfTwo = nextPowerOfTwo(i);
            this.f7382c = nextPowerOfTwo;
            if (f > 0.0f) {
                this.f7384e = f;
                this.f7390k = (nextPowerOfTwo >>> 16) != 0;
                this.f7387h = (int) (nextPowerOfTwo * f);
                this.f7386g = nextPowerOfTwo - 1;
                this.f7385f = 31 - Integer.numberOfTrailingZeros(nextPowerOfTwo);
                this.f7388i = Math.max(3, ((int) Math.ceil(Math.log(this.f7382c))) * 2);
                this.f7389j = Math.max(Math.min(this.f7382c, 8), ((int) Math.sqrt(this.f7382c)) / 8);
                K[] kArr = (K[]) new Object[this.f7382c + this.f7388i];
                this.f7380a = kArr;
                this.f7381b = (V[]) new Object[kArr.length];
                return;
            }
            throw new IllegalArgumentException("loadFactor must be > 0: " + f);
        } else {
            throw new IllegalArgumentException("initialCapacity is too large: " + i);
        }
    }

    public boolean containsKey(K k) {
        int hashCode = k.hashCode();
        if (!k.equals(this.f7380a[this.f7386g & hashCode])) {
            if (!k.equals(this.f7380a[m23187d(hashCode)])) {
                if (!k.equals(this.f7380a[m23186e(hashCode)])) {
                    if (this.f7390k) {
                        if (!k.equals(this.f7380a[m23185f(hashCode)])) {
                            return m23190a(k);
                        }
                        return true;
                    }
                    return m23190a(k);
                }
                return true;
            }
            return true;
        }
        return true;
    }

    /* renamed from: h */
    public final void m23183h(K k, V v) {
        K k2;
        int i;
        int hashCode = k.hashCode();
        int i2 = hashCode & this.f7386g;
        K[] kArr = this.f7380a;
        K k3 = kArr[i2];
        if (k3 == null) {
            kArr[i2] = k;
            this.f7381b[i2] = v;
            int i3 = this.size;
            this.size = i3 + 1;
            if (i3 >= this.f7387h) {
                m23178m(this.f7382c << 1);
                return;
            }
            return;
        }
        int m23187d = m23187d(hashCode);
        K[] kArr2 = this.f7380a;
        K k4 = kArr2[m23187d];
        if (k4 == null) {
            kArr2[m23187d] = k;
            this.f7381b[m23187d] = v;
            int i4 = this.size;
            this.size = i4 + 1;
            if (i4 >= this.f7387h) {
                m23178m(this.f7382c << 1);
                return;
            }
            return;
        }
        int m23186e = m23186e(hashCode);
        K[] kArr3 = this.f7380a;
        K k5 = kArr3[m23186e];
        if (k5 == null) {
            kArr3[m23186e] = k;
            this.f7381b[m23186e] = v;
            int i5 = this.size;
            this.size = i5 + 1;
            if (i5 >= this.f7387h) {
                m23178m(this.f7382c << 1);
                return;
            }
            return;
        }
        if (this.f7390k) {
            int m23185f = m23185f(hashCode);
            K[] kArr4 = this.f7380a;
            K k6 = kArr4[m23185f];
            if (k6 == null) {
                kArr4[m23185f] = k;
                this.f7381b[m23185f] = v;
                int i6 = this.size;
                this.size = i6 + 1;
                if (i6 >= this.f7387h) {
                    m23178m(this.f7382c << 1);
                    return;
                }
                return;
            }
            i = m23185f;
            k2 = k6;
        } else {
            k2 = null;
            i = -1;
        }
        m23184g(k, v, i2, k3, m23187d, k4, m23186e, k5, i, k2);
    }

    public V remove(K k) {
        int hashCode = k.hashCode();
        int i = this.f7386g & hashCode;
        if (k.equals(this.f7380a[i])) {
            this.f7380a[i] = null;
            V[] vArr = this.f7381b;
            V v = vArr[i];
            vArr[i] = null;
            this.size--;
            return v;
        }
        int m23187d = m23187d(hashCode);
        if (k.equals(this.f7380a[m23187d])) {
            this.f7380a[m23187d] = null;
            V[] vArr2 = this.f7381b;
            V v2 = vArr2[m23187d];
            vArr2[m23187d] = null;
            this.size--;
            return v2;
        }
        int m23186e = m23186e(hashCode);
        if (k.equals(this.f7380a[m23186e])) {
            this.f7380a[m23186e] = null;
            V[] vArr3 = this.f7381b;
            V v3 = vArr3[m23186e];
            vArr3[m23186e] = null;
            this.size--;
            return v3;
        }
        if (this.f7390k) {
            int m23185f = m23185f(hashCode);
            if (k.equals(this.f7380a[m23185f])) {
                this.f7380a[m23185f] = null;
                V[] vArr4 = this.f7381b;
                V v4 = vArr4[m23185f];
                vArr4[m23185f] = null;
                this.size--;
                return v4;
            }
        }
        return m23180k(k);
    }

    public void clear() {
        K[] kArr = this.f7380a;
        V[] vArr = this.f7381b;
        int i = this.f7382c + this.f7383d;
        while (true) {
            int i2 = i - 1;
            if (i > 0) {
                kArr[i2] = null;
                vArr[i2] = null;
                i = i2;
            } else {
                this.size = 0;
                this.f7383d = 0;
                return;
            }
        }
    }

    public V get(K k, V v) {
        int hashCode = k.hashCode();
        int i = this.f7386g & hashCode;
        if (!k.equals(this.f7380a[i])) {
            i = m23187d(hashCode);
            if (!k.equals(this.f7380a[i])) {
                i = m23186e(hashCode);
                if (!k.equals(this.f7380a[i])) {
                    if (this.f7390k) {
                        i = m23185f(hashCode);
                        if (!k.equals(this.f7380a[i])) {
                            return m23188c(k, v);
                        }
                    } else {
                        return m23188c(k, v);
                    }
                }
            }
        }
        return this.f7381b[i];
    }

    public CuckooObjectMap(CuckooObjectMap<? extends K, ? extends V> cuckooObjectMap) {
        this(cuckooObjectMap.f7382c, cuckooObjectMap.f7384e);
        this.f7383d = cuckooObjectMap.f7383d;
        Object[] objArr = cuckooObjectMap.f7380a;
        System.arraycopy(objArr, 0, this.f7380a, 0, objArr.length);
        Object[] objArr2 = cuckooObjectMap.f7381b;
        System.arraycopy(objArr2, 0, this.f7381b, 0, objArr2.length);
        this.size = cuckooObjectMap.size;
    }
}
