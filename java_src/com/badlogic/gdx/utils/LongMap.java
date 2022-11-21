package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class LongMap<V> implements Iterable<Entry<V>> {

    /* renamed from: a */
    public long[] f6581a;

    /* renamed from: b */
    public V[] f6582b;

    /* renamed from: d */
    public V f6583d;

    /* renamed from: k */
    public boolean f6584k;

    /* renamed from: p */
    public final float f6585p;

    /* renamed from: q */
    public int f6586q;

    /* renamed from: r */
    public int f6587r;

    /* renamed from: s */
    public int f6588s;
    public int size;

    /* renamed from: t */
    public transient Entries f6589t;

    /* renamed from: u */
    public transient Entries f6590u;

    /* renamed from: v */
    public transient Values f6591v;

    /* renamed from: w */
    public transient Values f6592w;

    /* renamed from: x */
    public transient Keys f6593x;

    /* renamed from: y */
    public transient Keys f6594y;

    /* loaded from: classes.dex */
    public static class Entries<V> extends MapIterator<V> implements Iterable<Entry<V>>, Iterator<Entry<V>> {

        /* renamed from: p */
        public final Entry<V> f6595p;

        @Override // java.lang.Iterable
        public Iterator<Entry<V>> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6599k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public Entry<V> next() {
            if (this.hasNext) {
                if (this.f6599k) {
                    LongMap<V> longMap = this.f6596a;
                    long[] jArr = longMap.f6581a;
                    int i = this.f6597b;
                    if (i == -1) {
                        Entry<V> entry = this.f6595p;
                        entry.key = 0L;
                        entry.value = longMap.f6583d;
                    } else {
                        Entry<V> entry2 = this.f6595p;
                        entry2.key = jArr[i];
                        entry2.value = longMap.f6582b[i];
                    }
                    this.f6598d = i;
                    m23591e();
                    return this.f6595p;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(LongMap longMap) {
            super(longMap);
            this.f6595p = new Entry<>();
        }
    }

    /* loaded from: classes.dex */
    public static class Entry<V> {
        public long key;
        @Null
        public V value;

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys extends MapIterator {
        public Keys(LongMap longMap) {
            super(longMap);
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public LongArray toArray() {
            LongArray longArray = new LongArray(true, this.f6596a.size);
            while (this.hasNext) {
                longArray.add(next());
            }
            return longArray;
        }

        public long next() {
            long j;
            if (this.hasNext) {
                if (this.f6599k) {
                    int i = this.f6597b;
                    if (i == -1) {
                        j = 0;
                    } else {
                        j = this.f6596a.f6581a[i];
                    }
                    this.f6598d = i;
                    m23591e();
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

    /* loaded from: classes.dex */
    public static class MapIterator<V> {

        /* renamed from: a */
        public final LongMap<V> f6596a;

        /* renamed from: b */
        public int f6597b;

        /* renamed from: d */
        public int f6598d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f6599k = true;

        public void reset() {
            this.f6598d = -2;
            this.f6597b = -1;
            if (this.f6596a.f6584k) {
                this.hasNext = true;
            } else {
                m23591e();
            }
        }

        /* renamed from: e */
        void m23591e() {
            int i;
            long[] jArr = this.f6596a.f6581a;
            int length = jArr.length;
            do {
                i = this.f6597b + 1;
                this.f6597b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (jArr[i] == 0);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f6598d;
            if (i == -1) {
                LongMap<V> longMap = this.f6596a;
                if (longMap.f6584k) {
                    longMap.f6584k = false;
                    longMap.f6583d = null;
                    this.f6598d = -2;
                    LongMap<V> longMap2 = this.f6596a;
                    longMap2.size--;
                    return;
                }
            }
            if (i >= 0) {
                LongMap<V> longMap3 = this.f6596a;
                long[] jArr = longMap3.f6581a;
                V[] vArr = longMap3.f6582b;
                int i2 = longMap3.f6588s;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    long j = jArr[i4];
                    if (j == 0) {
                        break;
                    }
                    int m23594e = this.f6596a.m23594e(j);
                    if (((i4 - m23594e) & i2) > ((i - m23594e) & i2)) {
                        jArr[i] = j;
                        vArr[i] = vArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                jArr[i] = 0;
                vArr[i] = null;
                if (i != this.f6598d) {
                    this.f6597b--;
                }
                this.f6598d = -2;
                LongMap<V> longMap22 = this.f6596a;
                longMap22.size--;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(LongMap<V> longMap) {
            this.f6596a = longMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values<V> extends MapIterator<V> implements Iterable<V>, Iterator<V> {
        public Values(LongMap<V> longMap) {
            super(longMap);
        }

        @Override // java.lang.Iterable
        public Iterator<V> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.LongMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6599k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        @Null
        public V next() {
            V v;
            if (this.hasNext) {
                if (this.f6599k) {
                    int i = this.f6597b;
                    if (i == -1) {
                        v = this.f6596a.f6583d;
                    } else {
                        v = this.f6596a.f6582b[i];
                    }
                    this.f6598d = i;
                    m23591e();
                    return v;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Array<V> toArray() {
            Array<V> array = new Array<>(true, this.f6596a.size);
            while (this.hasNext) {
                array.add(next());
            }
            return array;
        }
    }

    public LongMap() {
        this(51, 0.8f);
    }

    public void clear(int i) {
        int m23562k = ObjectSet.m23562k(i, this.f6585p);
        if (this.f6581a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        this.f6584k = false;
        this.f6583d = null;
        m23592i(m23562k);
    }

    /* renamed from: e */
    public int m23594e(long j) {
        return (int) (((j ^ (j >>> 32)) * (-7046029254386353131L)) >>> this.f6587r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LongMap)) {
            return false;
        }
        LongMap longMap = (LongMap) obj;
        if (longMap.size != this.size) {
            return false;
        }
        boolean z = longMap.f6584k;
        boolean z2 = this.f6584k;
        if (z != z2) {
            return false;
        }
        if (z2) {
            V v = longMap.f6583d;
            if (v == null) {
                if (this.f6583d != null) {
                    return false;
                }
            } else if (!v.equals(this.f6583d)) {
                return false;
            }
        }
        long[] jArr = this.f6581a;
        V[] vArr = this.f6582b;
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            long j = jArr[i];
            if (j != 0) {
                V v2 = vArr[i];
                if (v2 == null) {
                    if (longMap.get(j, ObjectMap.f6654x) != null) {
                        return false;
                    }
                } else if (!v2.equals(longMap.get(j))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equalsIdentity(@Null Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LongMap)) {
            return false;
        }
        LongMap longMap = (LongMap) obj;
        if (longMap.size != this.size) {
            return false;
        }
        boolean z = longMap.f6584k;
        boolean z2 = this.f6584k;
        if (z != z2) {
            return false;
        }
        if (z2 && this.f6583d != longMap.f6583d) {
            return false;
        }
        long[] jArr = this.f6581a;
        V[] vArr = this.f6582b;
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            long j = jArr[i];
            if (j != 0 && vArr[i] != longMap.get(j, ObjectMap.f6654x)) {
                return false;
            }
        }
        return true;
    }

    @Null
    public V get(long j) {
        if (j == 0) {
            if (this.f6584k) {
                return this.f6583d;
            }
            return null;
        }
        int m23595d = m23595d(j);
        if (m23595d >= 0) {
            return this.f6582b[m23595d];
        }
        return null;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<Entry<V>> iterator() {
        return entries();
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    @Null
    public V put(long j, @Null V v) {
        if (j == 0) {
            V v2 = this.f6583d;
            this.f6583d = v;
            if (!this.f6584k) {
                this.f6584k = true;
                this.size++;
            }
            return v2;
        }
        int m23595d = m23595d(j);
        if (m23595d >= 0) {
            V[] vArr = this.f6582b;
            V v3 = vArr[m23595d];
            vArr[m23595d] = v;
            return v3;
        }
        int i = -(m23595d + 1);
        long[] jArr = this.f6581a;
        jArr[i] = j;
        this.f6582b[i] = v;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f6586q) {
            m23592i(jArr.length << 1);
            return null;
        }
        return null;
    }

    public LongMap(int i) {
        this(i, 0.8f);
    }

    public boolean containsKey(long j) {
        if (j == 0) {
            return this.f6584k;
        }
        if (m23595d(j) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(@Null Object obj, boolean z) {
        V[] vArr = this.f6582b;
        if (obj == null) {
            if (this.f6584k && this.f6583d == null) {
                return true;
            }
            long[] jArr = this.f6581a;
            for (int length = vArr.length - 1; length >= 0; length--) {
                if (jArr[length] != 0 && vArr[length] == null) {
                    return true;
                }
            }
            return false;
        } else if (z) {
            if (obj == this.f6583d) {
                return true;
            }
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == obj) {
                    return true;
                }
            }
            return false;
        } else if (this.f6584k && obj.equals(this.f6583d)) {
            return true;
        } else {
            for (int length3 = vArr.length - 1; length3 >= 0; length3--) {
                if (obj.equals(vArr[length3])) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: d */
    public final int m23595d(long j) {
        long[] jArr = this.f6581a;
        int m23594e = m23594e(j);
        while (true) {
            long j2 = jArr[m23594e];
            if (j2 == 0) {
                return -(m23594e + 1);
            }
            if (j2 == j) {
                return m23594e;
            }
            m23594e = (m23594e + 1) & this.f6588s;
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = ObjectSet.m23562k(this.size + i, this.f6585p);
        if (this.f6581a.length < m23562k) {
            m23592i(m23562k);
        }
    }

    public Entries<V> entries() {
        if (Collections.allocateIterators) {
            return new Entries<>(this);
        }
        if (this.f6589t == null) {
            this.f6589t = new Entries(this);
            this.f6590u = new Entries(this);
        }
        Entries entries = this.f6589t;
        if (!entries.f6599k) {
            entries.reset();
            Entries<V> entries2 = this.f6589t;
            entries2.f6599k = true;
            this.f6590u.f6599k = false;
            return entries2;
        }
        this.f6590u.reset();
        Entries<V> entries3 = this.f6590u;
        entries3.f6599k = true;
        this.f6589t.f6599k = false;
        return entries3;
    }

    public long findKey(@Null Object obj, boolean z, long j) {
        V[] vArr = this.f6582b;
        if (obj == null) {
            if (this.f6584k && this.f6583d == null) {
                return 0L;
            }
            long[] jArr = this.f6581a;
            for (int length = vArr.length - 1; length >= 0; length--) {
                long j2 = jArr[length];
                if (j2 != 0 && vArr[length] == null) {
                    return j2;
                }
            }
        } else if (z) {
            if (obj == this.f6583d) {
                return 0L;
            }
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == obj) {
                    return this.f6581a[length2];
                }
            }
        } else if (this.f6584k && obj.equals(this.f6583d)) {
            return 0L;
        } else {
            for (int length3 = vArr.length - 1; length3 >= 0; length3--) {
                if (obj.equals(vArr[length3])) {
                    return this.f6581a[length3];
                }
            }
        }
        return j;
    }

    /* renamed from: g */
    public final void m23593g(long j, @Null V v) {
        long[] jArr = this.f6581a;
        int m23594e = m23594e(j);
        while (jArr[m23594e] != 0) {
            m23594e = (m23594e + 1) & this.f6588s;
        }
        jArr[m23594e] = j;
        this.f6582b[m23594e] = v;
    }

    public int hashCode() {
        V v;
        int i = this.size;
        if (this.f6584k && (v = this.f6583d) != null) {
            i += v.hashCode();
        }
        long[] jArr = this.f6581a;
        V[] vArr = this.f6582b;
        int length = jArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            long j = jArr[i2];
            if (j != 0) {
                i = (int) (i + (j * 31));
                V v2 = vArr[i2];
                if (v2 != null) {
                    i += v2.hashCode();
                }
            }
        }
        return i;
    }

    /* renamed from: i */
    public final void m23592i(int i) {
        int length = this.f6581a.length;
        this.f6586q = (int) (i * this.f6585p);
        int i2 = i - 1;
        this.f6588s = i2;
        this.f6587r = Long.numberOfLeadingZeros(i2);
        long[] jArr = this.f6581a;
        V[] vArr = this.f6582b;
        this.f6581a = new long[i];
        this.f6582b = (V[]) new Object[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                long j = jArr[i3];
                if (j != 0) {
                    m23593g(j, vArr[i3]);
                }
            }
        }
    }

    public Keys keys() {
        if (Collections.allocateIterators) {
            return new Keys(this);
        }
        if (this.f6593x == null) {
            this.f6593x = new Keys(this);
            this.f6594y = new Keys(this);
        }
        Keys keys = this.f6593x;
        if (!keys.f6599k) {
            keys.reset();
            Keys keys2 = this.f6593x;
            keys2.f6599k = true;
            this.f6594y.f6599k = false;
            return keys2;
        }
        this.f6594y.reset();
        Keys keys3 = this.f6594y;
        keys3.f6599k = true;
        this.f6593x.f6599k = false;
        return keys3;
    }

    public void putAll(LongMap<? extends V> longMap) {
        ensureCapacity(longMap.size);
        if (longMap.f6584k) {
            put(0L, longMap.f6583d);
        }
        long[] jArr = longMap.f6581a;
        V[] vArr = longMap.f6582b;
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            long j = jArr[i];
            if (j != 0) {
                put(j, vArr[i]);
            }
        }
    }

    @Null
    public V remove(long j) {
        if (j == 0) {
            if (!this.f6584k) {
                return null;
            }
            this.f6584k = false;
            V v = this.f6583d;
            this.f6583d = null;
            this.size--;
            return v;
        }
        int m23595d = m23595d(j);
        if (m23595d < 0) {
            return null;
        }
        long[] jArr = this.f6581a;
        V[] vArr = this.f6582b;
        V v2 = vArr[m23595d];
        int i = this.f6588s;
        int i2 = m23595d + 1;
        while (true) {
            int i3 = i2 & i;
            long j2 = jArr[i3];
            if (j2 != 0) {
                int m23594e = m23594e(j2);
                if (((i3 - m23594e) & i) > ((m23595d - m23594e) & i)) {
                    jArr[m23595d] = j2;
                    vArr[m23595d] = vArr[i3];
                    m23595d = i3;
                }
                i2 = i3 + 1;
            } else {
                jArr[m23595d] = 0;
                vArr[m23595d] = null;
                this.size--;
                return v2;
            }
        }
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = ObjectSet.m23562k(i, this.f6585p);
            if (this.f6581a.length > m23562k) {
                m23592i(m23562k);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0042 -> B:16:0x0043). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r10 = this;
            int r0 = r10.size
            if (r0 != 0) goto L7
            java.lang.String r0 = "[]"
            return r0
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 32
            r0.<init>(r1)
            r1 = 91
            r0.append(r1)
            long[] r1 = r10.f6581a
            V[] r2 = r10.f6582b
            int r3 = r1.length
            boolean r4 = r10.f6584k
            r5 = 61
            r6 = 0
            if (r4 == 0) goto L2b
            java.lang.String r4 = "0="
            r0.append(r4)
            V r4 = r10.f6583d
            r0.append(r4)
            goto L43
        L2b:
            int r4 = r3 + (-1)
            if (r3 <= 0) goto L42
            r8 = r1[r4]
            int r3 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r3 != 0) goto L37
            r3 = r4
            goto L2b
        L37:
            r0.append(r8)
            r0.append(r5)
            r3 = r2[r4]
            r0.append(r3)
        L42:
            r3 = r4
        L43:
            int r4 = r3 + (-1)
            if (r3 <= 0) goto L5f
            r8 = r1[r4]
            int r3 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r3 != 0) goto L4e
            goto L42
        L4e:
            java.lang.String r3 = ", "
            r0.append(r3)
            r0.append(r8)
            r0.append(r5)
            r3 = r2[r4]
            r0.append(r3)
            goto L42
        L5f:
            r1 = 93
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.LongMap.toString():java.lang.String");
    }

    public Values<V> values() {
        if (Collections.allocateIterators) {
            return new Values<>(this);
        }
        if (this.f6591v == null) {
            this.f6591v = new Values(this);
            this.f6592w = new Values(this);
        }
        Values values = this.f6591v;
        if (!values.f6599k) {
            values.reset();
            Values<V> values2 = this.f6591v;
            values2.f6599k = true;
            this.f6592w.f6599k = false;
            return values2;
        }
        this.f6592w.reset();
        Values<V> values3 = this.f6592w;
        values3.f6599k = true;
        this.f6591v.f6599k = false;
        return values3;
    }

    public LongMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6585p = f;
            int m23562k = ObjectSet.m23562k(i, f);
            this.f6586q = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6588s = i2;
            this.f6587r = Long.numberOfLeadingZeros(i2);
            this.f6581a = new long[m23562k];
            this.f6582b = (V[]) new Object[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public V get(long j, @Null V v) {
        if (j == 0) {
            return this.f6584k ? this.f6583d : v;
        }
        int m23595d = m23595d(j);
        return m23595d >= 0 ? this.f6582b[m23595d] : v;
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f6581a, 0L);
        Arrays.fill(this.f6582b, (Object) null);
        this.f6583d = null;
        this.f6584k = false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LongMap(com.badlogic.gdx.utils.LongMap<? extends V> r5) {
        /*
            r4 = this;
            long[] r0 = r5.f6581a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f6585p
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            long[] r0 = r5.f6581a
            long[] r1 = r4.f6581a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            V[] r0 = r5.f6582b
            V[] r1 = r4.f6582b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r0 = r5.size
            r4.size = r0
            V r0 = r5.f6583d
            r4.f6583d = r0
            boolean r5 = r5.f6584k
            r4.f6584k = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.LongMap.<init>(com.badlogic.gdx.utils.LongMap):void");
    }
}
