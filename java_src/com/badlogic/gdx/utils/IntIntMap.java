package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class IntIntMap implements Iterable<Entry> {

    /* renamed from: a */
    public int[] f6470a;

    /* renamed from: b */
    public int[] f6471b;

    /* renamed from: d */
    public int f6472d;

    /* renamed from: k */
    public boolean f6473k;

    /* renamed from: p */
    public final float f6474p;

    /* renamed from: q */
    public int f6475q;

    /* renamed from: r */
    public int f6476r;

    /* renamed from: s */
    public int f6477s;
    public int size;

    /* renamed from: t */
    public transient Entries f6478t;

    /* renamed from: u */
    public transient Entries f6479u;

    /* renamed from: v */
    public transient Values f6480v;

    /* renamed from: w */
    public transient Values f6481w;

    /* renamed from: x */
    public transient Keys f6482x;

    /* renamed from: y */
    public transient Keys f6483y;

    /* loaded from: classes.dex */
    public static class Entries extends MapIterator implements Iterable<Entry>, Iterator<Entry> {

        /* renamed from: p */
        public final Entry f6484p;

        @Override // java.lang.Iterable
        public Iterator<Entry> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.IntIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6488k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Entry next() {
            if (this.hasNext) {
                if (this.f6488k) {
                    IntIntMap intIntMap = this.f6485a;
                    int[] iArr = intIntMap.f6470a;
                    int i = this.f6486b;
                    if (i == -1) {
                        Entry entry = this.f6484p;
                        entry.key = 0;
                        entry.value = intIntMap.f6472d;
                    } else {
                        Entry entry2 = this.f6484p;
                        entry2.key = iArr[i];
                        entry2.value = intIntMap.f6471b[i];
                    }
                    this.f6487d = i;
                    m23642e();
                    return this.f6484p;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(IntIntMap intIntMap) {
            super(intIntMap);
            this.f6484p = new Entry();
        }
    }

    /* loaded from: classes.dex */
    public static class Entry {
        public int key;
        public int value;

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys extends MapIterator {
        public Keys(IntIntMap intIntMap) {
            super(intIntMap);
        }

        @Override // com.badlogic.gdx.utils.IntIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public IntArray toArray() {
            IntArray intArray = new IntArray(true, this.f6485a.size);
            while (this.hasNext) {
                intArray.add(next());
            }
            return intArray;
        }

        public int next() {
            int i;
            if (this.hasNext) {
                if (this.f6488k) {
                    int i2 = this.f6486b;
                    if (i2 == -1) {
                        i = 0;
                    } else {
                        i = this.f6485a.f6470a[i2];
                    }
                    this.f6487d = i2;
                    m23642e();
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
    public static class MapIterator {

        /* renamed from: a */
        public final IntIntMap f6485a;

        /* renamed from: b */
        public int f6486b;

        /* renamed from: d */
        public int f6487d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f6488k = true;

        public void reset() {
            this.f6487d = -2;
            this.f6486b = -1;
            if (this.f6485a.f6473k) {
                this.hasNext = true;
            } else {
                m23642e();
            }
        }

        /* renamed from: e */
        void m23642e() {
            int i;
            int[] iArr = this.f6485a.f6470a;
            int length = iArr.length;
            do {
                i = this.f6486b + 1;
                this.f6486b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (iArr[i] == 0);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f6487d;
            if (i == -1) {
                IntIntMap intIntMap = this.f6485a;
                if (intIntMap.f6473k) {
                    intIntMap.f6473k = false;
                    this.f6487d = -2;
                    IntIntMap intIntMap2 = this.f6485a;
                    intIntMap2.size--;
                    return;
                }
            }
            if (i >= 0) {
                IntIntMap intIntMap3 = this.f6485a;
                int[] iArr = intIntMap3.f6470a;
                int[] iArr2 = intIntMap3.f6471b;
                int i2 = intIntMap3.f6477s;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    int i5 = iArr[i4];
                    if (i5 == 0) {
                        break;
                    }
                    int m23645e = this.f6485a.m23645e(i5);
                    if (((i4 - m23645e) & i2) > ((i - m23645e) & i2)) {
                        iArr[i] = i5;
                        iArr2[i] = iArr2[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                iArr[i] = 0;
                if (i != this.f6487d) {
                    this.f6486b--;
                }
                this.f6487d = -2;
                IntIntMap intIntMap22 = this.f6485a;
                intIntMap22.size--;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(IntIntMap intIntMap) {
            this.f6485a = intIntMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values extends MapIterator {
        public Values(IntIntMap intIntMap) {
            super(intIntMap);
        }

        public Values iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.IntIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public IntArray toArray() {
            IntArray intArray = new IntArray(true, this.f6485a.size);
            while (this.hasNext) {
                intArray.add(next());
            }
            return intArray;
        }

        public boolean hasNext() {
            if (this.f6488k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        public int next() {
            int i;
            if (this.hasNext) {
                if (this.f6488k) {
                    int i2 = this.f6486b;
                    if (i2 == -1) {
                        i = this.f6485a.f6472d;
                    } else {
                        i = this.f6485a.f6471b[i2];
                    }
                    this.f6487d = i2;
                    m23642e();
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

    public IntIntMap() {
        this(51, 0.8f);
    }

    public void clear(int i) {
        int m23562k = ObjectSet.m23562k(i, this.f6474p);
        if (this.f6470a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        this.f6473k = false;
        m23643i(m23562k);
    }

    /* renamed from: e */
    public int m23645e(int i) {
        return (int) ((i * (-7046029254386353131L)) >>> this.f6476r);
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IntIntMap)) {
            return false;
        }
        IntIntMap intIntMap = (IntIntMap) obj;
        if (intIntMap.size != this.size) {
            return false;
        }
        boolean z = intIntMap.f6473k;
        boolean z2 = this.f6473k;
        if (z != z2) {
            return false;
        }
        if (z2 && intIntMap.f6472d != this.f6472d) {
            return false;
        }
        int[] iArr = this.f6470a;
        int[] iArr2 = this.f6471b;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0 && (((i = intIntMap.get(i3, 0)) == 0 && !intIntMap.containsKey(i3)) || i != iArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    public int getAndIncrement(int i, int i2, int i3) {
        if (i == 0) {
            if (!this.f6473k) {
                this.f6473k = true;
                this.f6472d = i3 + i2;
                this.size++;
                return i2;
            }
            int i4 = this.f6472d;
            this.f6472d = i3 + i4;
            return i4;
        }
        int m23646d = m23646d(i);
        if (m23646d >= 0) {
            int[] iArr = this.f6471b;
            int i5 = iArr[m23646d];
            iArr[m23646d] = i3 + i5;
            return i5;
        }
        int i6 = -(m23646d + 1);
        int[] iArr2 = this.f6470a;
        iArr2[i6] = i;
        this.f6471b[i6] = i3 + i2;
        int i7 = this.size + 1;
        this.size = i7;
        if (i7 >= this.f6475q) {
            m23643i(iArr2.length << 1);
        }
        return i2;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<Entry> iterator() {
        return entries();
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public void put(int i, int i2) {
        if (i == 0) {
            this.f6472d = i2;
            if (this.f6473k) {
                return;
            }
            this.f6473k = true;
            this.size++;
            return;
        }
        int m23646d = m23646d(i);
        if (m23646d >= 0) {
            this.f6471b[m23646d] = i2;
            return;
        }
        int i3 = -(m23646d + 1);
        int[] iArr = this.f6470a;
        iArr[i3] = i;
        this.f6471b[i3] = i2;
        int i4 = this.size + 1;
        this.size = i4;
        if (i4 >= this.f6475q) {
            m23643i(iArr.length << 1);
        }
    }

    public int remove(int i, int i2) {
        if (i == 0) {
            if (!this.f6473k) {
                return i2;
            }
            this.f6473k = false;
            this.size--;
            return this.f6472d;
        }
        int m23646d = m23646d(i);
        if (m23646d < 0) {
            return i2;
        }
        int[] iArr = this.f6470a;
        int[] iArr2 = this.f6471b;
        int i3 = iArr2[m23646d];
        int i4 = this.f6477s;
        int i5 = m23646d + 1;
        while (true) {
            int i6 = i5 & i4;
            int i7 = iArr[i6];
            if (i7 != 0) {
                int m23645e = m23645e(i7);
                if (((i6 - m23645e) & i4) > ((m23646d - m23645e) & i4)) {
                    iArr[m23646d] = i7;
                    iArr2[m23646d] = iArr2[i6];
                    m23646d = i6;
                }
                i5 = i6 + 1;
            } else {
                iArr[m23646d] = 0;
                this.size--;
                return i3;
            }
        }
    }

    public IntIntMap(int i) {
        this(i, 0.8f);
    }

    public boolean containsKey(int i) {
        if (i == 0) {
            return this.f6473k;
        }
        if (m23646d(i) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(int i) {
        if (this.f6473k && this.f6472d == i) {
            return true;
        }
        int[] iArr = this.f6470a;
        int[] iArr2 = this.f6471b;
        for (int length = iArr2.length - 1; length >= 0; length--) {
            if (iArr[length] != 0 && iArr2[length] == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public final int m23646d(int i) {
        int[] iArr = this.f6470a;
        int m23645e = m23645e(i);
        while (true) {
            int i2 = iArr[m23645e];
            if (i2 == 0) {
                return -(m23645e + 1);
            }
            if (i2 == i) {
                return m23645e;
            }
            m23645e = (m23645e + 1) & this.f6477s;
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = ObjectSet.m23562k(this.size + i, this.f6474p);
        if (this.f6470a.length < m23562k) {
            m23643i(m23562k);
        }
    }

    public Entries entries() {
        if (Collections.allocateIterators) {
            return new Entries(this);
        }
        if (this.f6478t == null) {
            this.f6478t = new Entries(this);
            this.f6479u = new Entries(this);
        }
        Entries entries = this.f6478t;
        if (!entries.f6488k) {
            entries.reset();
            Entries entries2 = this.f6478t;
            entries2.f6488k = true;
            this.f6479u.f6488k = false;
            return entries2;
        }
        this.f6479u.reset();
        Entries entries3 = this.f6479u;
        entries3.f6488k = true;
        this.f6478t.f6488k = false;
        return entries3;
    }

    public int findKey(int i, int i2) {
        if (this.f6473k && this.f6472d == i) {
            return 0;
        }
        int[] iArr = this.f6470a;
        int[] iArr2 = this.f6471b;
        for (int length = iArr2.length - 1; length >= 0; length--) {
            int i3 = iArr[length];
            if (i3 != 0 && iArr2[length] == i) {
                return i3;
            }
        }
        return i2;
    }

    /* renamed from: g */
    public final void m23644g(int i, int i2) {
        int[] iArr = this.f6470a;
        int m23645e = m23645e(i);
        while (iArr[m23645e] != 0) {
            m23645e = (m23645e + 1) & this.f6477s;
        }
        iArr[m23645e] = i;
        this.f6471b[m23645e] = i2;
    }

    public int get(int i, int i2) {
        if (i == 0) {
            if (this.f6473k) {
                return this.f6472d;
            }
            return i2;
        }
        int m23646d = m23646d(i);
        if (m23646d >= 0) {
            return this.f6471b[m23646d];
        }
        return i2;
    }

    public int hashCode() {
        int i = this.size;
        if (this.f6473k) {
            i += this.f6472d;
        }
        int[] iArr = this.f6470a;
        int[] iArr2 = this.f6471b;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                i += (i3 * 31) + iArr2[i2];
            }
        }
        return i;
    }

    /* renamed from: i */
    public final void m23643i(int i) {
        int length = this.f6470a.length;
        this.f6475q = (int) (i * this.f6474p);
        int i2 = i - 1;
        this.f6477s = i2;
        this.f6476r = Long.numberOfLeadingZeros(i2);
        int[] iArr = this.f6470a;
        int[] iArr2 = this.f6471b;
        this.f6470a = new int[i];
        this.f6471b = new int[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = iArr[i3];
                if (i4 != 0) {
                    m23644g(i4, iArr2[i3]);
                }
            }
        }
    }

    public Keys keys() {
        if (Collections.allocateIterators) {
            return new Keys(this);
        }
        if (this.f6482x == null) {
            this.f6482x = new Keys(this);
            this.f6483y = new Keys(this);
        }
        Keys keys = this.f6482x;
        if (!keys.f6488k) {
            keys.reset();
            Keys keys2 = this.f6482x;
            keys2.f6488k = true;
            this.f6483y.f6488k = false;
            return keys2;
        }
        this.f6483y.reset();
        Keys keys3 = this.f6483y;
        keys3.f6488k = true;
        this.f6482x.f6488k = false;
        return keys3;
    }

    public void putAll(IntIntMap intIntMap) {
        ensureCapacity(intIntMap.size);
        if (intIntMap.f6473k) {
            put(0, intIntMap.f6472d);
        }
        int[] iArr = intIntMap.f6470a;
        int[] iArr2 = intIntMap.f6471b;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                put(i2, iArr2[i]);
            }
        }
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = ObjectSet.m23562k(i, this.f6474p);
            if (this.f6470a.length > m23562k) {
                m23643i(m23562k);
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
            int[] r1 = r7.f6470a
            int[] r2 = r7.f6471b
            int r3 = r1.length
            boolean r4 = r7.f6473k
            r5 = 61
            if (r4 == 0) goto L29
            java.lang.String r4 = "0="
            r0.append(r4)
            int r4 = r7.f6472d
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
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntIntMap.toString():java.lang.String");
    }

    public Values values() {
        if (Collections.allocateIterators) {
            return new Values(this);
        }
        if (this.f6480v == null) {
            this.f6480v = new Values(this);
            this.f6481w = new Values(this);
        }
        Values values = this.f6480v;
        if (!values.f6488k) {
            values.reset();
            Values values2 = this.f6480v;
            values2.f6488k = true;
            this.f6481w.f6488k = false;
            return values2;
        }
        this.f6481w.reset();
        Values values3 = this.f6481w;
        values3.f6488k = true;
        this.f6480v.f6488k = false;
        return values3;
    }

    public IntIntMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6474p = f;
            int m23562k = ObjectSet.m23562k(i, f);
            this.f6475q = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6477s = i2;
            this.f6476r = Long.numberOfLeadingZeros(i2);
            this.f6470a = new int[m23562k];
            this.f6471b = new int[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        Arrays.fill(this.f6470a, 0);
        this.size = 0;
        this.f6473k = false;
    }

    public int put(int i, int i2, int i3) {
        if (i == 0) {
            int i4 = this.f6472d;
            this.f6472d = i2;
            if (this.f6473k) {
                return i4;
            }
            this.f6473k = true;
            this.size++;
            return i3;
        }
        int m23646d = m23646d(i);
        if (m23646d >= 0) {
            int[] iArr = this.f6471b;
            int i5 = iArr[m23646d];
            iArr[m23646d] = i2;
            return i5;
        }
        int i6 = -(m23646d + 1);
        int[] iArr2 = this.f6470a;
        iArr2[i6] = i;
        this.f6471b[i6] = i2;
        int i7 = this.size + 1;
        this.size = i7;
        if (i7 >= this.f6475q) {
            m23643i(iArr2.length << 1);
        }
        return i3;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public IntIntMap(com.badlogic.gdx.utils.IntIntMap r5) {
        /*
            r4 = this;
            int[] r0 = r5.f6470a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f6474p
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            int[] r0 = r5.f6470a
            int[] r1 = r4.f6470a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int[] r0 = r5.f6471b
            int[] r1 = r4.f6471b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r0 = r5.size
            r4.size = r0
            int r0 = r5.f6472d
            r4.f6472d = r0
            boolean r5 = r5.f6473k
            r4.f6473k = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntIntMap.<init>(com.badlogic.gdx.utils.IntIntMap):void");
    }
}
