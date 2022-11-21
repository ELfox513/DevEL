package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class ObjectLongMap<K> implements Iterable<Entry<K>> {

    /* renamed from: a */
    public K[] f6637a;

    /* renamed from: b */
    public long[] f6638b;

    /* renamed from: d */
    public float f6639d;

    /* renamed from: k */
    public int f6640k;

    /* renamed from: p */
    public int f6641p;

    /* renamed from: q */
    public int f6642q;

    /* renamed from: r */
    public transient Entries f6643r;

    /* renamed from: s */
    public transient Entries f6644s;
    public int size;

    /* renamed from: t */
    public transient Values f6645t;

    /* renamed from: u */
    public transient Values f6646u;

    /* renamed from: v */
    public transient Keys f6647v;

    /* renamed from: w */
    public transient Keys f6648w;

    /* loaded from: classes.dex */
    public static class Entries<K> extends MapIterator<K> implements Iterable<Entry<K>>, Iterator<Entry<K>> {

        /* renamed from: p */
        public Entry<K> f6649p;

        @Override // java.lang.Iterable
        public Entries<K> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectLongMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectLongMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6653k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public Entry<K> next() {
            if (this.hasNext) {
                if (this.f6653k) {
                    ObjectLongMap<K> objectLongMap = this.f6650a;
                    K[] kArr = objectLongMap.f6637a;
                    Entry<K> entry = this.f6649p;
                    int i = this.f6651b;
                    entry.key = kArr[i];
                    entry.value = objectLongMap.f6638b[i];
                    this.f6652d = i;
                    m23572e();
                    return this.f6649p;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(ObjectLongMap<K> objectLongMap) {
            super(objectLongMap);
            this.f6649p = new Entry<>();
        }
    }

    /* loaded from: classes.dex */
    public static class Entry<K> {
        public K key;
        public long value;

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys<K> extends MapIterator<K> implements Iterable<K>, Iterator<K> {
        public Keys(ObjectLongMap<K> objectLongMap) {
            super(objectLongMap);
        }

        @Override // java.lang.Iterable
        public Keys<K> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectLongMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectLongMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Array<K> toArray() {
            return toArray(new Array<>(true, this.f6650a.size));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6653k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public K next() {
            if (this.hasNext) {
                if (this.f6653k) {
                    K[] kArr = this.f6650a.f6637a;
                    int i = this.f6651b;
                    K k = kArr[i];
                    this.f6652d = i;
                    m23572e();
                    return k;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Array<K> toArray(Array<K> array) {
            while (this.hasNext) {
                array.add(next());
            }
            return array;
        }
    }

    /* loaded from: classes.dex */
    public static class MapIterator<K> {

        /* renamed from: a */
        public final ObjectLongMap<K> f6650a;

        /* renamed from: b */
        public int f6651b;

        /* renamed from: d */
        public int f6652d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f6653k = true;

        public void reset() {
            this.f6652d = -1;
            this.f6651b = -1;
            m23572e();
        }

        /* renamed from: e */
        void m23572e() {
            int i;
            K[] kArr = this.f6650a.f6637a;
            int length = kArr.length;
            do {
                i = this.f6651b + 1;
                this.f6651b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (kArr[i] == null);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f6652d;
            if (i >= 0) {
                ObjectLongMap<K> objectLongMap = this.f6650a;
                K[] kArr = objectLongMap.f6637a;
                long[] jArr = objectLongMap.f6638b;
                int i2 = objectLongMap.f6642q;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int m23576e = this.f6650a.m23576e(k);
                    if (((i4 - m23576e) & i2) > ((i - m23576e) & i2)) {
                        kArr[i] = k;
                        jArr[i] = jArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                ObjectLongMap<K> objectLongMap2 = this.f6650a;
                objectLongMap2.size--;
                if (i != this.f6652d) {
                    this.f6651b--;
                }
                this.f6652d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(ObjectLongMap<K> objectLongMap) {
            this.f6650a = objectLongMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values extends MapIterator<Object> {
        public Values(ObjectLongMap<?> objectLongMap) {
            super(objectLongMap);
        }

        public Values iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectLongMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectLongMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public LongArray toArray() {
            LongArray longArray = new LongArray(true, this.f6650a.size);
            while (this.hasNext) {
                longArray.add(next());
            }
            return longArray;
        }

        public boolean hasNext() {
            if (this.f6653k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        public long next() {
            if (this.hasNext) {
                if (this.f6653k) {
                    long[] jArr = this.f6650a.f6638b;
                    int i = this.f6651b;
                    long j = jArr[i];
                    this.f6652d = i;
                    m23572e();
                    return j;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public LongArray toArray(LongArray longArray) {
            while (this.hasNext) {
                longArray.add(next());
            }
            return longArray;
        }
    }

    public ObjectLongMap() {
        this(51, 0.8f);
    }

    public void clear(int i) {
        int m23562k = ObjectSet.m23562k(i, this.f6639d);
        if (this.f6637a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        m23574i(m23562k);
    }

    public boolean containsKey(K k) {
        return m23577d(k) >= 0;
    }

    /* renamed from: e */
    public int m23576e(K k) {
        return (int) ((k.hashCode() * (-7046029254386353131L)) >>> this.f6641p);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ObjectLongMap)) {
            return false;
        }
        ObjectLongMap objectLongMap = (ObjectLongMap) obj;
        if (objectLongMap.size != this.size) {
            return false;
        }
        K[] kArr = this.f6637a;
        long[] jArr = this.f6638b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                long j = objectLongMap.get(k, 0L);
                if ((j == 0 && !objectLongMap.containsKey(k)) || j != jArr[i]) {
                    return false;
                }
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

    public void put(K k, long j) {
        int m23577d = m23577d(k);
        if (m23577d >= 0) {
            this.f6638b[m23577d] = j;
            return;
        }
        int i = -(m23577d + 1);
        K[] kArr = this.f6637a;
        kArr[i] = k;
        this.f6638b[i] = j;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f6640k) {
            m23574i(kArr.length << 1);
        }
    }

    public String toString(String str) {
        return m23573k(str, false);
    }

    public ObjectLongMap(int i) {
        this(i, 0.8f);
    }

    public boolean containsValue(long j) {
        K[] kArr = this.f6637a;
        long[] jArr = this.f6638b;
        for (int length = jArr.length - 1; length >= 0; length--) {
            if (kArr[length] != null && jArr[length] == j) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public int m23577d(K k) {
        if (k != null) {
            K[] kArr = this.f6637a;
            int m23576e = m23576e(k);
            while (true) {
                K k2 = kArr[m23576e];
                if (k2 == null) {
                    return -(m23576e + 1);
                }
                if (k2.equals(k)) {
                    return m23576e;
                }
                m23576e = (m23576e + 1) & this.f6642q;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = ObjectSet.m23562k(this.size + i, this.f6639d);
        if (this.f6637a.length < m23562k) {
            m23574i(m23562k);
        }
    }

    public Entries<K> entries() {
        if (Collections.allocateIterators) {
            return new Entries<>(this);
        }
        if (this.f6643r == null) {
            this.f6643r = new Entries(this);
            this.f6644s = new Entries(this);
        }
        Entries entries = this.f6643r;
        if (!entries.f6653k) {
            entries.reset();
            Entries<K> entries2 = this.f6643r;
            entries2.f6653k = true;
            this.f6644s.f6653k = false;
            return entries2;
        }
        this.f6644s.reset();
        Entries<K> entries3 = this.f6644s;
        entries3.f6653k = true;
        this.f6643r.f6653k = false;
        return entries3;
    }

    @Null
    public K findKey(long j) {
        K[] kArr = this.f6637a;
        long[] jArr = this.f6638b;
        for (int length = jArr.length - 1; length >= 0; length--) {
            K k = kArr[length];
            if (k != null && jArr[length] == j) {
                return k;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final void m23575g(K k, long j) {
        K[] kArr = this.f6637a;
        int m23576e = m23576e(k);
        while (kArr[m23576e] != null) {
            m23576e = (m23576e + 1) & this.f6642q;
        }
        kArr[m23576e] = k;
        this.f6638b[m23576e] = j;
    }

    public int hashCode() {
        int i = this.size;
        K[] kArr = this.f6637a;
        long[] jArr = this.f6638b;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            if (k != null) {
                i = (int) (i + k.hashCode() + jArr[i2]);
            }
        }
        return i;
    }

    /* renamed from: i */
    public final void m23574i(int i) {
        int length = this.f6637a.length;
        this.f6640k = (int) (i * this.f6639d);
        int i2 = i - 1;
        this.f6642q = i2;
        this.f6641p = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f6637a;
        long[] jArr = this.f6638b;
        this.f6637a = (K[]) new Object[i];
        this.f6638b = new long[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    m23575g(k, jArr[i3]);
                }
            }
        }
    }

    @Override // java.lang.Iterable
    public Entries<K> iterator() {
        return entries();
    }

    /* renamed from: k */
    public final String m23573k(String str, boolean z) {
        int i;
        if (this.size == 0) {
            if (z) {
                return "{}";
            }
            return "";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(32);
        if (z) {
            sb.append('{');
        }
        K[] kArr = this.f6637a;
        long[] jArr = this.f6638b;
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
                    sb.append(jArr[i]);
                    break;
                }
            } else {
                break;
            }
        }
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                break;
            }
            K k2 = kArr[i2];
            if (k2 != null) {
                sb.append(str);
                sb.append(k2);
                sb.append(SignatureVisitor.INSTANCEOF);
                sb.append(jArr[i2]);
            }
            i = i2;
        }
        if (z) {
            sb.append('}');
        }
        return sb.toString();
    }

    public Keys<K> keys() {
        if (Collections.allocateIterators) {
            return new Keys<>(this);
        }
        if (this.f6647v == null) {
            this.f6647v = new Keys(this);
            this.f6648w = new Keys(this);
        }
        Keys keys = this.f6647v;
        if (!keys.f6653k) {
            keys.reset();
            Keys<K> keys2 = this.f6647v;
            keys2.f6653k = true;
            this.f6648w.f6653k = false;
            return keys2;
        }
        this.f6648w.reset();
        Keys<K> keys3 = this.f6648w;
        keys3.f6653k = true;
        this.f6647v.f6653k = false;
        return keys3;
    }

    public void putAll(ObjectLongMap<? extends K> objectLongMap) {
        ensureCapacity(objectLongMap.size);
        K[] kArr = objectLongMap.f6637a;
        long[] jArr = objectLongMap.f6638b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                put(k, jArr[i]);
            }
        }
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = ObjectSet.m23562k(i, this.f6639d);
            if (this.f6637a.length > m23562k) {
                m23574i(m23562k);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    public String toString() {
        return m23573k(", ", true);
    }

    public Values values() {
        if (Collections.allocateIterators) {
            return new Values(this);
        }
        if (this.f6645t == null) {
            this.f6645t = new Values(this);
            this.f6646u = new Values(this);
        }
        Values values = this.f6645t;
        if (!values.f6653k) {
            values.reset();
            Values values2 = this.f6645t;
            values2.f6653k = true;
            this.f6646u.f6653k = false;
            return values2;
        }
        this.f6646u.reset();
        Values values3 = this.f6646u;
        values3.f6653k = true;
        this.f6645t.f6653k = false;
        return values3;
    }

    public ObjectLongMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6639d = f;
            int m23562k = ObjectSet.m23562k(i, f);
            this.f6640k = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6642q = i2;
            this.f6641p = Long.numberOfLeadingZeros(i2);
            this.f6637a = (K[]) new Object[m23562k];
            this.f6638b = new long[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public long get(K k, long j) {
        int m23577d = m23577d(k);
        if (m23577d >= 0) {
            return this.f6638b[m23577d];
        }
        return j;
    }

    public long getAndIncrement(K k, long j, long j2) {
        int m23577d = m23577d(k);
        if (m23577d >= 0) {
            long[] jArr = this.f6638b;
            long j3 = jArr[m23577d];
            jArr[m23577d] = j2 + j3;
            return j3;
        }
        int i = -(m23577d + 1);
        K[] kArr = this.f6637a;
        kArr[i] = k;
        this.f6638b[i] = j2 + j;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f6640k) {
            m23574i(kArr.length << 1);
        }
        return j;
    }

    public long remove(K k, long j) {
        int m23577d = m23577d(k);
        if (m23577d < 0) {
            return j;
        }
        K[] kArr = this.f6637a;
        long[] jArr = this.f6638b;
        long j2 = jArr[m23577d];
        int i = this.f6642q;
        int i2 = m23577d + 1;
        while (true) {
            int i3 = i2 & i;
            K k2 = kArr[i3];
            if (k2 != null) {
                int m23576e = m23576e(k2);
                if (((i3 - m23576e) & i) > ((m23577d - m23576e) & i)) {
                    kArr[m23577d] = k2;
                    jArr[m23577d] = jArr[i3];
                    m23577d = i3;
                }
                i2 = i3 + 1;
            } else {
                kArr[m23577d] = null;
                this.size--;
                return j2;
            }
        }
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f6637a, (Object) null);
    }

    public long put(K k, long j, long j2) {
        int m23577d = m23577d(k);
        if (m23577d >= 0) {
            long[] jArr = this.f6638b;
            long j3 = jArr[m23577d];
            jArr[m23577d] = j;
            return j3;
        }
        int i = -(m23577d + 1);
        K[] kArr = this.f6637a;
        kArr[i] = k;
        this.f6638b[i] = j;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f6640k) {
            m23574i(kArr.length << 1);
        }
        return j2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ObjectLongMap(com.badlogic.gdx.utils.ObjectLongMap<? extends K> r5) {
        /*
            r4 = this;
            K[] r0 = r5.f6637a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f6639d
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            K[] r0 = r5.f6637a
            K[] r1 = r4.f6637a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            long[] r0 = r5.f6638b
            long[] r1 = r4.f6638b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r5 = r5.size
            r4.size = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.ObjectLongMap.<init>(com.badlogic.gdx.utils.ObjectLongMap):void");
    }
}
