package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class IntMap<V> implements Iterable<Entry<V>> {

    /* renamed from: a */
    public int[] f6489a;

    /* renamed from: b */
    public V[] f6490b;

    /* renamed from: d */
    public V f6491d;

    /* renamed from: k */
    public boolean f6492k;

    /* renamed from: p */
    public final float f6493p;

    /* renamed from: q */
    public int f6494q;

    /* renamed from: r */
    public int f6495r;

    /* renamed from: s */
    public int f6496s;
    public int size;

    /* renamed from: t */
    public transient Entries f6497t;

    /* renamed from: u */
    public transient Entries f6498u;

    /* renamed from: v */
    public transient Values f6499v;

    /* renamed from: w */
    public transient Values f6500w;

    /* renamed from: x */
    public transient Keys f6501x;

    /* renamed from: y */
    public transient Keys f6502y;

    /* loaded from: classes.dex */
    public static class Entries<V> extends MapIterator<V> implements Iterable<Entry<V>>, Iterator<Entry<V>> {

        /* renamed from: p */
        public final Entry<V> f6503p;

        @Override // java.lang.Iterable
        public Iterator<Entry<V>> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.IntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6507k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public Entry<V> next() {
            if (this.hasNext) {
                if (this.f6507k) {
                    IntMap<V> intMap = this.f6504a;
                    int[] iArr = intMap.f6489a;
                    int i = this.f6505b;
                    if (i == -1) {
                        Entry<V> entry = this.f6503p;
                        entry.key = 0;
                        entry.value = intMap.f6491d;
                    } else {
                        Entry<V> entry2 = this.f6503p;
                        entry2.key = iArr[i];
                        entry2.value = intMap.f6490b[i];
                    }
                    this.f6506d = i;
                    m23637e();
                    return this.f6503p;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(IntMap intMap) {
            super(intMap);
            this.f6503p = new Entry<>();
        }
    }

    /* loaded from: classes.dex */
    public static class Entry<V> {
        public int key;
        @Null
        public V value;

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys extends MapIterator {
        public Keys(IntMap intMap) {
            super(intMap);
        }

        @Override // com.badlogic.gdx.utils.IntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public IntArray toArray() {
            IntArray intArray = new IntArray(true, this.f6504a.size);
            while (this.hasNext) {
                intArray.add(next());
            }
            return intArray;
        }

        public int next() {
            int i;
            if (this.hasNext) {
                if (this.f6507k) {
                    int i2 = this.f6505b;
                    if (i2 == -1) {
                        i = 0;
                    } else {
                        i = this.f6504a.f6489a[i2];
                    }
                    this.f6506d = i2;
                    m23637e();
                    return i;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public IntArray toArray(IntArray intArray) {
            while (this.hasNext) {
                intArray.add(next());
            }
            return intArray;
        }
    }

    /* loaded from: classes.dex */
    public static class MapIterator<V> {

        /* renamed from: a */
        public final IntMap<V> f6504a;

        /* renamed from: b */
        public int f6505b;

        /* renamed from: d */
        public int f6506d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f6507k = true;

        public void reset() {
            this.f6506d = -2;
            this.f6505b = -1;
            if (this.f6504a.f6492k) {
                this.hasNext = true;
            } else {
                m23637e();
            }
        }

        /* renamed from: e */
        void m23637e() {
            int i;
            int[] iArr = this.f6504a.f6489a;
            int length = iArr.length;
            do {
                i = this.f6505b + 1;
                this.f6505b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (iArr[i] == 0);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f6506d;
            if (i == -1) {
                IntMap<V> intMap = this.f6504a;
                if (intMap.f6492k) {
                    intMap.f6492k = false;
                    intMap.f6491d = null;
                    this.f6506d = -2;
                    IntMap<V> intMap2 = this.f6504a;
                    intMap2.size--;
                    return;
                }
            }
            if (i >= 0) {
                IntMap<V> intMap3 = this.f6504a;
                int[] iArr = intMap3.f6489a;
                V[] vArr = intMap3.f6490b;
                int i2 = intMap3.f6496s;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    int i5 = iArr[i4];
                    if (i5 == 0) {
                        break;
                    }
                    int m23640e = this.f6504a.m23640e(i5);
                    if (((i4 - m23640e) & i2) > ((i - m23640e) & i2)) {
                        iArr[i] = i5;
                        vArr[i] = vArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                iArr[i] = 0;
                vArr[i] = null;
                if (i != this.f6506d) {
                    this.f6505b--;
                }
                this.f6506d = -2;
                IntMap<V> intMap22 = this.f6504a;
                intMap22.size--;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(IntMap<V> intMap) {
            this.f6504a = intMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values<V> extends MapIterator<V> implements Iterable<V>, Iterator<V> {
        public Values(IntMap<V> intMap) {
            super(intMap);
        }

        @Override // java.lang.Iterable
        public Iterator<V> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.IntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6507k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        @Null
        public V next() {
            V v;
            if (this.hasNext) {
                if (this.f6507k) {
                    int i = this.f6505b;
                    if (i == -1) {
                        v = this.f6504a.f6491d;
                    } else {
                        v = this.f6504a.f6490b[i];
                    }
                    this.f6506d = i;
                    m23637e();
                    return v;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Array<V> toArray() {
            Array<V> array = new Array<>(true, this.f6504a.size);
            while (this.hasNext) {
                array.add(next());
            }
            return array;
        }
    }

    public IntMap() {
        this(51, 0.8f);
    }

    public void clear(int i) {
        int m23562k = ObjectSet.m23562k(i, this.f6493p);
        if (this.f6489a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        this.f6492k = false;
        this.f6491d = null;
        m23638i(m23562k);
    }

    /* renamed from: e */
    public int m23640e(int i) {
        return (int) ((i * (-7046029254386353131L)) >>> this.f6495r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IntMap)) {
            return false;
        }
        IntMap intMap = (IntMap) obj;
        if (intMap.size != this.size) {
            return false;
        }
        boolean z = intMap.f6492k;
        boolean z2 = this.f6492k;
        if (z != z2) {
            return false;
        }
        if (z2) {
            V v = intMap.f6491d;
            if (v == null) {
                if (this.f6491d != null) {
                    return false;
                }
            } else if (!v.equals(this.f6491d)) {
                return false;
            }
        }
        int[] iArr = this.f6489a;
        V[] vArr = this.f6490b;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                V v2 = vArr[i];
                if (v2 == null) {
                    if (intMap.get(i2, ObjectMap.f6654x) != null) {
                        return false;
                    }
                } else if (!v2.equals(intMap.get(i2))) {
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
        if (!(obj instanceof IntMap)) {
            return false;
        }
        IntMap intMap = (IntMap) obj;
        if (intMap.size != this.size) {
            return false;
        }
        boolean z = intMap.f6492k;
        boolean z2 = this.f6492k;
        if (z != z2) {
            return false;
        }
        if (z2 && this.f6491d != intMap.f6491d) {
            return false;
        }
        int[] iArr = this.f6489a;
        V[] vArr = this.f6490b;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0 && vArr[i] != intMap.get(i2, ObjectMap.f6654x)) {
                return false;
            }
        }
        return true;
    }

    public V get(int i) {
        if (i == 0) {
            if (this.f6492k) {
                return this.f6491d;
            }
            return null;
        }
        int m23641d = m23641d(i);
        if (m23641d >= 0) {
            return this.f6490b[m23641d];
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
    public V put(int i, @Null V v) {
        if (i == 0) {
            V v2 = this.f6491d;
            this.f6491d = v;
            if (!this.f6492k) {
                this.f6492k = true;
                this.size++;
            }
            return v2;
        }
        int m23641d = m23641d(i);
        if (m23641d >= 0) {
            V[] vArr = this.f6490b;
            V v3 = vArr[m23641d];
            vArr[m23641d] = v;
            return v3;
        }
        int i2 = -(m23641d + 1);
        int[] iArr = this.f6489a;
        iArr[i2] = i;
        this.f6490b[i2] = v;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 >= this.f6494q) {
            m23638i(iArr.length << 1);
            return null;
        }
        return null;
    }

    @Null
    public V remove(int i) {
        if (i == 0) {
            if (!this.f6492k) {
                return null;
            }
            this.f6492k = false;
            V v = this.f6491d;
            this.f6491d = null;
            this.size--;
            return v;
        }
        int m23641d = m23641d(i);
        if (m23641d < 0) {
            return null;
        }
        int[] iArr = this.f6489a;
        V[] vArr = this.f6490b;
        V v2 = vArr[m23641d];
        int i2 = this.f6496s;
        int i3 = m23641d + 1;
        while (true) {
            int i4 = i3 & i2;
            int i5 = iArr[i4];
            if (i5 != 0) {
                int m23640e = m23640e(i5);
                if (((i4 - m23640e) & i2) > ((m23641d - m23640e) & i2)) {
                    iArr[m23641d] = i5;
                    vArr[m23641d] = vArr[i4];
                    m23641d = i4;
                }
                i3 = i4 + 1;
            } else {
                iArr[m23641d] = 0;
                vArr[m23641d] = null;
                this.size--;
                return v2;
            }
        }
    }

    public IntMap(int i) {
        this(i, 0.8f);
    }

    public boolean containsKey(int i) {
        if (i == 0) {
            return this.f6492k;
        }
        if (m23641d(i) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(@Null Object obj, boolean z) {
        V[] vArr = this.f6490b;
        if (obj == null) {
            if (this.f6492k && this.f6491d == null) {
                return true;
            }
            int[] iArr = this.f6489a;
            for (int length = vArr.length - 1; length >= 0; length--) {
                if (iArr[length] != 0 && vArr[length] == null) {
                    return true;
                }
            }
            return false;
        } else if (z) {
            if (obj == this.f6491d) {
                return true;
            }
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == obj) {
                    return true;
                }
            }
            return false;
        } else if (this.f6492k && obj.equals(this.f6491d)) {
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
    public final int m23641d(int i) {
        int[] iArr = this.f6489a;
        int m23640e = m23640e(i);
        while (true) {
            int i2 = iArr[m23640e];
            if (i2 == 0) {
                return -(m23640e + 1);
            }
            if (i2 == i) {
                return m23640e;
            }
            m23640e = (m23640e + 1) & this.f6496s;
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = ObjectSet.m23562k(this.size + i, this.f6493p);
        if (this.f6489a.length < m23562k) {
            m23638i(m23562k);
        }
    }

    public Entries<V> entries() {
        if (Collections.allocateIterators) {
            return new Entries<>(this);
        }
        if (this.f6497t == null) {
            this.f6497t = new Entries(this);
            this.f6498u = new Entries(this);
        }
        Entries entries = this.f6497t;
        if (!entries.f6507k) {
            entries.reset();
            Entries<V> entries2 = this.f6497t;
            entries2.f6507k = true;
            this.f6498u.f6507k = false;
            return entries2;
        }
        this.f6498u.reset();
        Entries<V> entries3 = this.f6498u;
        entries3.f6507k = true;
        this.f6497t.f6507k = false;
        return entries3;
    }

    public int findKey(@Null Object obj, boolean z, int i) {
        V[] vArr = this.f6490b;
        if (obj == null) {
            if (this.f6492k && this.f6491d == null) {
                return 0;
            }
            int[] iArr = this.f6489a;
            for (int length = vArr.length - 1; length >= 0; length--) {
                int i2 = iArr[length];
                if (i2 != 0 && vArr[length] == null) {
                    return i2;
                }
            }
        } else if (z) {
            if (obj == this.f6491d) {
                return 0;
            }
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == obj) {
                    return this.f6489a[length2];
                }
            }
        } else if (this.f6492k && obj.equals(this.f6491d)) {
            return 0;
        } else {
            for (int length3 = vArr.length - 1; length3 >= 0; length3--) {
                if (obj.equals(vArr[length3])) {
                    return this.f6489a[length3];
                }
            }
        }
        return i;
    }

    /* renamed from: g */
    public final void m23639g(int i, @Null V v) {
        int[] iArr = this.f6489a;
        int m23640e = m23640e(i);
        while (iArr[m23640e] != 0) {
            m23640e = (m23640e + 1) & this.f6496s;
        }
        iArr[m23640e] = i;
        this.f6490b[m23640e] = v;
    }

    public int hashCode() {
        V v;
        int i = this.size;
        if (this.f6492k && (v = this.f6491d) != null) {
            i += v.hashCode();
        }
        int[] iArr = this.f6489a;
        V[] vArr = this.f6490b;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                i += i3 * 31;
                V v2 = vArr[i2];
                if (v2 != null) {
                    i += v2.hashCode();
                }
            }
        }
        return i;
    }

    /* renamed from: i */
    public final void m23638i(int i) {
        int length = this.f6489a.length;
        this.f6494q = (int) (i * this.f6493p);
        int i2 = i - 1;
        this.f6496s = i2;
        this.f6495r = Long.numberOfLeadingZeros(i2);
        int[] iArr = this.f6489a;
        V[] vArr = this.f6490b;
        this.f6489a = new int[i];
        this.f6490b = (V[]) new Object[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = iArr[i3];
                if (i4 != 0) {
                    m23639g(i4, vArr[i3]);
                }
            }
        }
    }

    public Keys keys() {
        if (Collections.allocateIterators) {
            return new Keys(this);
        }
        if (this.f6501x == null) {
            this.f6501x = new Keys(this);
            this.f6502y = new Keys(this);
        }
        Keys keys = this.f6501x;
        if (!keys.f6507k) {
            keys.reset();
            Keys keys2 = this.f6501x;
            keys2.f6507k = true;
            this.f6502y.f6507k = false;
            return keys2;
        }
        this.f6502y.reset();
        Keys keys3 = this.f6502y;
        keys3.f6507k = true;
        this.f6501x.f6507k = false;
        return keys3;
    }

    public void putAll(IntMap<? extends V> intMap) {
        ensureCapacity(intMap.size);
        if (intMap.f6492k) {
            put(0, intMap.f6491d);
        }
        int[] iArr = intMap.f6489a;
        V[] vArr = intMap.f6490b;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                put(i2, vArr[i]);
            }
        }
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = ObjectSet.m23562k(i, this.f6493p);
            if (this.f6489a.length > m23562k) {
                m23638i(m23562k);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x003e -> B:16:0x003f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r7 = this;
            int r0 = r7.size
            if (r0 != 0) goto L7
            java.lang.String r0 = "[]"
            return r0
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = 32
            r0.<init>(r1)
            r1 = 91
            r0.append(r1)
            int[] r1 = r7.f6489a
            V[] r2 = r7.f6490b
            int r3 = r1.length
            boolean r4 = r7.f6492k
            r5 = 61
            if (r4 == 0) goto L29
            java.lang.String r4 = "0="
            r0.append(r4)
            V r4 = r7.f6491d
            r0.append(r4)
            goto L3f
        L29:
            int r4 = r3 + (-1)
            if (r3 <= 0) goto L3e
            r3 = r1[r4]
            if (r3 != 0) goto L33
            r3 = r4
            goto L29
        L33:
            r0.append(r3)
            r0.append(r5)
            r3 = r2[r4]
            r0.append(r3)
        L3e:
            r3 = r4
        L3f:
            int r4 = r3 + (-1)
            if (r3 <= 0) goto L59
            r3 = r1[r4]
            if (r3 != 0) goto L48
            goto L3e
        L48:
            java.lang.String r6 = ", "
            r0.append(r6)
            r0.append(r3)
            r0.append(r5)
            r3 = r2[r4]
            r0.append(r3)
            goto L3e
        L59:
            r1 = 93
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntMap.toString():java.lang.String");
    }

    public Values<V> values() {
        if (Collections.allocateIterators) {
            return new Values<>(this);
        }
        if (this.f6499v == null) {
            this.f6499v = new Values(this);
            this.f6500w = new Values(this);
        }
        Values values = this.f6499v;
        if (!values.f6507k) {
            values.reset();
            Values<V> values2 = this.f6499v;
            values2.f6507k = true;
            this.f6500w.f6507k = false;
            return values2;
        }
        this.f6500w.reset();
        Values<V> values3 = this.f6500w;
        values3.f6507k = true;
        this.f6499v.f6507k = false;
        return values3;
    }

    public IntMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6493p = f;
            int m23562k = ObjectSet.m23562k(i, f);
            this.f6494q = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6496s = i2;
            this.f6495r = Long.numberOfLeadingZeros(i2);
            this.f6489a = new int[m23562k];
            this.f6490b = (V[]) new Object[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public V get(int i, @Null V v) {
        if (i == 0) {
            return this.f6492k ? this.f6491d : v;
        }
        int m23641d = m23641d(i);
        return m23641d >= 0 ? this.f6490b[m23641d] : v;
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f6489a, 0);
        Arrays.fill(this.f6490b, (Object) null);
        this.f6491d = null;
        this.f6492k = false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public IntMap(com.badlogic.gdx.utils.IntMap<? extends V> r5) {
        /*
            r4 = this;
            int[] r0 = r5.f6489a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f6493p
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            int[] r0 = r5.f6489a
            int[] r1 = r4.f6489a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            V[] r0 = r5.f6490b
            V[] r1 = r4.f6490b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r0 = r5.size
            r4.size = r0
            V r0 = r5.f6491d
            r4.f6491d = r0
            boolean r5 = r5.f6492k
            r4.f6492k = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntMap.<init>(com.badlogic.gdx.utils.IntMap):void");
    }
}
