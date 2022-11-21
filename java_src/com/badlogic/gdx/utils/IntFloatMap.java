package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class IntFloatMap implements Iterable<Entry> {

    /* renamed from: a */
    public int[] f6451a;

    /* renamed from: b */
    public float[] f6452b;

    /* renamed from: d */
    public float f6453d;

    /* renamed from: k */
    public boolean f6454k;

    /* renamed from: p */
    public final float f6455p;

    /* renamed from: q */
    public int f6456q;

    /* renamed from: r */
    public int f6457r;

    /* renamed from: s */
    public int f6458s;
    public int size;

    /* renamed from: t */
    public transient Entries f6459t;

    /* renamed from: u */
    public transient Entries f6460u;

    /* renamed from: v */
    public transient Values f6461v;

    /* renamed from: w */
    public transient Values f6462w;

    /* renamed from: x */
    public transient Keys f6463x;

    /* renamed from: y */
    public transient Keys f6464y;

    /* loaded from: classes.dex */
    public static class Entries extends MapIterator implements Iterable<Entry>, Iterator<Entry> {

        /* renamed from: p */
        public final Entry f6465p;

        @Override // java.lang.Iterable
        public Iterator<Entry> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.IntFloatMap.MapIterator, java.util.Iterator
        public void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntFloatMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6469k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public Entry next() {
            if (this.hasNext) {
                if (this.f6469k) {
                    IntFloatMap intFloatMap = this.f6466a;
                    int[] iArr = intFloatMap.f6451a;
                    int i = this.f6467b;
                    if (i == -1) {
                        Entry entry = this.f6465p;
                        entry.key = 0;
                        entry.value = intFloatMap.f6453d;
                    } else {
                        Entry entry2 = this.f6465p;
                        entry2.key = iArr[i];
                        entry2.value = intFloatMap.f6452b[i];
                    }
                    this.f6468d = i;
                    m23647e();
                    return this.f6465p;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(IntFloatMap intFloatMap) {
            super(intFloatMap);
            this.f6465p = new Entry();
        }
    }

    /* loaded from: classes.dex */
    public static class Entry {
        public int key;
        public float value;

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys extends MapIterator {
        public Keys(IntFloatMap intFloatMap) {
            super(intFloatMap);
        }

        @Override // com.badlogic.gdx.utils.IntFloatMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntFloatMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public IntArray toArray() {
            IntArray intArray = new IntArray(true, this.f6466a.size);
            while (this.hasNext) {
                intArray.add(next());
            }
            return intArray;
        }

        public int next() {
            int i;
            if (this.hasNext) {
                if (this.f6469k) {
                    int i2 = this.f6467b;
                    if (i2 == -1) {
                        i = 0;
                    } else {
                        i = this.f6466a.f6451a[i2];
                    }
                    this.f6468d = i2;
                    m23647e();
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
        public final IntFloatMap f6466a;

        /* renamed from: b */
        public int f6467b;

        /* renamed from: d */
        public int f6468d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f6469k = true;

        public void reset() {
            this.f6468d = -2;
            this.f6467b = -1;
            if (this.f6466a.f6454k) {
                this.hasNext = true;
            } else {
                m23647e();
            }
        }

        /* renamed from: e */
        void m23647e() {
            int i;
            int[] iArr = this.f6466a.f6451a;
            int length = iArr.length;
            do {
                i = this.f6467b + 1;
                this.f6467b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (iArr[i] == 0);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f6468d;
            if (i == -1) {
                IntFloatMap intFloatMap = this.f6466a;
                if (intFloatMap.f6454k) {
                    intFloatMap.f6454k = false;
                    this.f6468d = -2;
                    IntFloatMap intFloatMap2 = this.f6466a;
                    intFloatMap2.size--;
                    return;
                }
            }
            if (i >= 0) {
                IntFloatMap intFloatMap3 = this.f6466a;
                int[] iArr = intFloatMap3.f6451a;
                float[] fArr = intFloatMap3.f6452b;
                int i2 = intFloatMap3.f6458s;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    int i5 = iArr[i4];
                    if (i5 == 0) {
                        break;
                    }
                    int m23650e = this.f6466a.m23650e(i5);
                    if (((i4 - m23650e) & i2) > ((i - m23650e) & i2)) {
                        iArr[i] = i5;
                        fArr[i] = fArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                iArr[i] = 0;
                if (i != this.f6468d) {
                    this.f6467b--;
                }
                this.f6468d = -2;
                IntFloatMap intFloatMap22 = this.f6466a;
                intFloatMap22.size--;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(IntFloatMap intFloatMap) {
            this.f6466a = intFloatMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values extends MapIterator {
        public Values(IntFloatMap intFloatMap) {
            super(intFloatMap);
        }

        public Values iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.IntFloatMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.IntFloatMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public FloatArray toArray() {
            FloatArray floatArray = new FloatArray(true, this.f6466a.size);
            while (this.hasNext) {
                floatArray.add(next());
            }
            return floatArray;
        }

        public boolean hasNext() {
            if (this.f6469k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        public float next() {
            float f;
            if (this.hasNext) {
                if (this.f6469k) {
                    int i = this.f6467b;
                    if (i == -1) {
                        f = this.f6466a.f6453d;
                    } else {
                        f = this.f6466a.f6452b[i];
                    }
                    this.f6468d = i;
                    m23647e();
                    return f;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public FloatArray toArray(FloatArray floatArray) {
            while (this.hasNext) {
                floatArray.add(next());
            }
            return floatArray;
        }
    }

    public IntFloatMap() {
        this(51, 0.8f);
    }

    public void clear(int i) {
        int m23562k = ObjectSet.m23562k(i, this.f6455p);
        if (this.f6451a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        this.f6454k = false;
        m23648i(m23562k);
    }

    public boolean containsValue(float f) {
        if (this.f6454k && this.f6453d == f) {
            return true;
        }
        int[] iArr = this.f6451a;
        float[] fArr = this.f6452b;
        for (int length = fArr.length - 1; length >= 0; length--) {
            if (iArr[length] != 0 && fArr[length] == f) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public int m23650e(int i) {
        return (int) ((i * (-7046029254386353131L)) >>> this.f6457r);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof IntFloatMap)) {
            return false;
        }
        IntFloatMap intFloatMap = (IntFloatMap) obj;
        if (intFloatMap.size != this.size) {
            return false;
        }
        boolean z = intFloatMap.f6454k;
        boolean z2 = this.f6454k;
        if (z != z2) {
            return false;
        }
        if (z2 && intFloatMap.f6453d != this.f6453d) {
            return false;
        }
        int[] iArr = this.f6451a;
        float[] fArr = this.f6452b;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                float f = intFloatMap.get(i2, 0.0f);
                if ((f == 0.0f && !intFloatMap.containsKey(i2)) || f != fArr[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    public int findKey(float f, int i) {
        if (this.f6454k && this.f6453d == f) {
            return 0;
        }
        int[] iArr = this.f6451a;
        float[] fArr = this.f6452b;
        for (int length = fArr.length - 1; length >= 0; length--) {
            int i2 = iArr[length];
            if (i2 != 0 && fArr[length] == f) {
                return i2;
            }
        }
        return i;
    }

    public float getAndIncrement(int i, float f, float f2) {
        if (i == 0) {
            if (!this.f6454k) {
                this.f6454k = true;
                this.f6453d = f2 + f;
                this.size++;
                return f;
            }
            float f3 = this.f6453d;
            this.f6453d = f2 + f3;
            return f3;
        }
        int m23651d = m23651d(i);
        if (m23651d >= 0) {
            float[] fArr = this.f6452b;
            float f4 = fArr[m23651d];
            fArr[m23651d] = f2 + f4;
            return f4;
        }
        int i2 = -(m23651d + 1);
        int[] iArr = this.f6451a;
        iArr[i2] = i;
        this.f6452b[i2] = f2 + f;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 >= this.f6456q) {
            m23648i(iArr.length << 1);
        }
        return f;
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

    public void put(int i, float f) {
        if (i == 0) {
            this.f6453d = f;
            if (this.f6454k) {
                return;
            }
            this.f6454k = true;
            this.size++;
            return;
        }
        int m23651d = m23651d(i);
        if (m23651d >= 0) {
            this.f6452b[m23651d] = f;
            return;
        }
        int i2 = -(m23651d + 1);
        int[] iArr = this.f6451a;
        iArr[i2] = i;
        this.f6452b[i2] = f;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 >= this.f6456q) {
            m23648i(iArr.length << 1);
        }
    }

    public float remove(int i, float f) {
        if (i == 0) {
            if (!this.f6454k) {
                return f;
            }
            this.f6454k = false;
            this.size--;
            return this.f6453d;
        }
        int m23651d = m23651d(i);
        if (m23651d < 0) {
            return f;
        }
        int[] iArr = this.f6451a;
        float[] fArr = this.f6452b;
        float f2 = fArr[m23651d];
        int i2 = this.f6458s;
        int i3 = m23651d + 1;
        while (true) {
            int i4 = i3 & i2;
            int i5 = iArr[i4];
            if (i5 != 0) {
                int m23650e = m23650e(i5);
                if (((i4 - m23650e) & i2) > ((m23651d - m23650e) & i2)) {
                    iArr[m23651d] = i5;
                    fArr[m23651d] = fArr[i4];
                    m23651d = i4;
                }
                i3 = i4 + 1;
            } else {
                iArr[m23651d] = 0;
                this.size--;
                return f2;
            }
        }
    }

    public IntFloatMap(int i) {
        this(i, 0.8f);
    }

    public boolean containsKey(int i) {
        if (i == 0) {
            return this.f6454k;
        }
        if (m23651d(i) >= 0) {
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public final int m23651d(int i) {
        int[] iArr = this.f6451a;
        int m23650e = m23650e(i);
        while (true) {
            int i2 = iArr[m23650e];
            if (i2 == 0) {
                return -(m23650e + 1);
            }
            if (i2 == i) {
                return m23650e;
            }
            m23650e = (m23650e + 1) & this.f6458s;
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = ObjectSet.m23562k(this.size + i, this.f6455p);
        if (this.f6451a.length < m23562k) {
            m23648i(m23562k);
        }
    }

    public Entries entries() {
        if (Collections.allocateIterators) {
            return new Entries(this);
        }
        if (this.f6459t == null) {
            this.f6459t = new Entries(this);
            this.f6460u = new Entries(this);
        }
        Entries entries = this.f6459t;
        if (!entries.f6469k) {
            entries.reset();
            Entries entries2 = this.f6459t;
            entries2.f6469k = true;
            this.f6460u.f6469k = false;
            return entries2;
        }
        this.f6460u.reset();
        Entries entries3 = this.f6460u;
        entries3.f6469k = true;
        this.f6459t.f6469k = false;
        return entries3;
    }

    /* renamed from: g */
    public final void m23649g(int i, float f) {
        int[] iArr = this.f6451a;
        int m23650e = m23650e(i);
        while (iArr[m23650e] != 0) {
            m23650e = (m23650e + 1) & this.f6458s;
        }
        iArr[m23650e] = i;
        this.f6452b[m23650e] = f;
    }

    public float get(int i, float f) {
        if (i == 0) {
            if (this.f6454k) {
                return this.f6453d;
            }
            return f;
        }
        int m23651d = m23651d(i);
        if (m23651d >= 0) {
            return this.f6452b[m23651d];
        }
        return f;
    }

    public int hashCode() {
        int i = this.size;
        if (this.f6454k) {
            i += NumberUtils.floatToRawIntBits(this.f6453d);
        }
        int[] iArr = this.f6451a;
        float[] fArr = this.f6452b;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                i += (i3 * 31) + NumberUtils.floatToRawIntBits(fArr[i2]);
            }
        }
        return i;
    }

    /* renamed from: i */
    public final void m23648i(int i) {
        int length = this.f6451a.length;
        this.f6456q = (int) (i * this.f6455p);
        int i2 = i - 1;
        this.f6458s = i2;
        this.f6457r = Long.numberOfLeadingZeros(i2);
        int[] iArr = this.f6451a;
        float[] fArr = this.f6452b;
        this.f6451a = new int[i];
        this.f6452b = new float[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = iArr[i3];
                if (i4 != 0) {
                    m23649g(i4, fArr[i3]);
                }
            }
        }
    }

    public Keys keys() {
        if (Collections.allocateIterators) {
            return new Keys(this);
        }
        if (this.f6463x == null) {
            this.f6463x = new Keys(this);
            this.f6464y = new Keys(this);
        }
        Keys keys = this.f6463x;
        if (!keys.f6469k) {
            keys.reset();
            Keys keys2 = this.f6463x;
            keys2.f6469k = true;
            this.f6464y.f6469k = false;
            return keys2;
        }
        this.f6464y.reset();
        Keys keys3 = this.f6464y;
        keys3.f6469k = true;
        this.f6463x.f6469k = false;
        return keys3;
    }

    public void putAll(IntFloatMap intFloatMap) {
        ensureCapacity(intFloatMap.size);
        if (intFloatMap.f6454k) {
            put(0, intFloatMap.f6453d);
        }
        int[] iArr = intFloatMap.f6451a;
        float[] fArr = intFloatMap.f6452b;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                put(i2, fArr[i]);
            }
        }
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = ObjectSet.m23562k(i, this.f6455p);
            if (this.f6451a.length > m23562k) {
                m23648i(m23562k);
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
            int[] r1 = r7.f6451a
            float[] r2 = r7.f6452b
            int r3 = r1.length
            boolean r4 = r7.f6454k
            r5 = 61
            if (r4 == 0) goto L29
            java.lang.String r4 = "0="
            r0.append(r4)
            float r4 = r7.f6453d
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
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntFloatMap.toString():java.lang.String");
    }

    public Values values() {
        if (Collections.allocateIterators) {
            return new Values(this);
        }
        if (this.f6461v == null) {
            this.f6461v = new Values(this);
            this.f6462w = new Values(this);
        }
        Values values = this.f6461v;
        if (!values.f6469k) {
            values.reset();
            Values values2 = this.f6461v;
            values2.f6469k = true;
            this.f6462w.f6469k = false;
            return values2;
        }
        this.f6462w.reset();
        Values values3 = this.f6462w;
        values3.f6469k = true;
        this.f6461v.f6469k = false;
        return values3;
    }

    public IntFloatMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6455p = f;
            int m23562k = ObjectSet.m23562k(i, f);
            this.f6456q = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6458s = i2;
            this.f6457r = Long.numberOfLeadingZeros(i2);
            this.f6451a = new int[m23562k];
            this.f6452b = new float[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public boolean containsValue(float f, float f2) {
        if (!this.f6454k || Math.abs(this.f6453d - f) > f2) {
            int[] iArr = this.f6451a;
            float[] fArr = this.f6452b;
            for (int length = fArr.length - 1; length >= 0; length--) {
                if (iArr[length] != 0 && Math.abs(fArr[length] - f) <= f2) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int findKey(float f, float f2, int i) {
        if (!this.f6454k || Math.abs(this.f6453d - f) > f2) {
            int[] iArr = this.f6451a;
            float[] fArr = this.f6452b;
            for (int length = fArr.length - 1; length >= 0; length--) {
                if (iArr[length] != 0 && Math.abs(fArr[length] - f) <= f2) {
                    return iArr[length];
                }
            }
            return i;
        }
        return 0;
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        Arrays.fill(this.f6451a, 0);
        this.size = 0;
        this.f6454k = false;
    }

    public float put(int i, float f, float f2) {
        if (i == 0) {
            float f3 = this.f6453d;
            this.f6453d = f;
            if (this.f6454k) {
                return f3;
            }
            this.f6454k = true;
            this.size++;
            return f2;
        }
        int m23651d = m23651d(i);
        if (m23651d >= 0) {
            float[] fArr = this.f6452b;
            float f4 = fArr[m23651d];
            fArr[m23651d] = f;
            return f4;
        }
        int i2 = -(m23651d + 1);
        int[] iArr = this.f6451a;
        iArr[i2] = i;
        this.f6452b[i2] = f;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 >= this.f6456q) {
            m23648i(iArr.length << 1);
        }
        return f2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public IntFloatMap(com.badlogic.gdx.utils.IntFloatMap r5) {
        /*
            r4 = this;
            int[] r0 = r5.f6451a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f6455p
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            int[] r0 = r5.f6451a
            int[] r1 = r4.f6451a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            float[] r0 = r5.f6452b
            float[] r1 = r4.f6452b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r0 = r5.size
            r4.size = r0
            float r0 = r5.f6453d
            r4.f6453d = r0
            boolean r5 = r5.f6454k
            r4.f6454k = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.IntFloatMap.<init>(com.badlogic.gdx.utils.IntFloatMap):void");
    }
}
