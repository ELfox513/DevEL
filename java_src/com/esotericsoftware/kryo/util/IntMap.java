package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.KryoException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class IntMap<V> implements Iterable<Entry<V>> {

    /* renamed from: a */
    public int[] f7418a;

    /* renamed from: b */
    public V[] f7419b;

    /* renamed from: d */
    public V f7420d;

    /* renamed from: k */
    public boolean f7421k;
    public int mask;

    /* renamed from: p */
    public final float f7422p;

    /* renamed from: q */
    public int f7423q;
    public int shift;
    public int size;

    /* loaded from: classes.dex */
    public static class Entries<V> extends MapIterator<V> implements Iterable<Entry<V>>, Iterator<Entry<V>> {

        /* renamed from: p */
        public final Entry<V> f7424p;

        @Override // java.lang.Iterable
        public Iterator<Entry<V>> iterator() {
            return this;
        }

        @Override // com.esotericsoftware.kryo.util.IntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.IntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f7428k) {
                return this.hasNext;
            }
            throw new KryoException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public Entry<V> next() {
            if (this.hasNext) {
                if (this.f7428k) {
                    IntMap<V> intMap = this.f7425a;
                    int[] iArr = intMap.f7418a;
                    int i = this.f7426b;
                    if (i == -1) {
                        Entry<V> entry = this.f7424p;
                        entry.key = 0;
                        entry.value = intMap.f7420d;
                    } else {
                        Entry<V> entry2 = this.f7424p;
                        entry2.key = iArr[i];
                        entry2.value = intMap.f7419b[i];
                    }
                    this.f7427d = i;
                    m23171e();
                    return this.f7424p;
                }
                throw new KryoException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(IntMap intMap) {
            super(intMap);
            this.f7424p = new Entry<>();
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

        @Override // com.esotericsoftware.kryo.util.IntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.IntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public IntArray toArray() {
            IntArray intArray = new IntArray(true, this.f7425a.size);
            while (this.hasNext) {
                intArray.add(next());
            }
            return intArray;
        }

        public int next() {
            int i;
            if (this.hasNext) {
                int i2 = this.f7426b;
                if (i2 == -1) {
                    i = 0;
                } else {
                    i = this.f7425a.f7418a[i2];
                }
                this.f7427d = i2;
                m23171e();
                return i;
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
        public final IntMap<V> f7425a;

        /* renamed from: b */
        public int f7426b;

        /* renamed from: d */
        public int f7427d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f7428k = true;

        public void reset() {
            this.f7427d = -2;
            this.f7426b = -1;
            if (this.f7425a.f7421k) {
                this.hasNext = true;
            } else {
                m23171e();
            }
        }

        /* renamed from: e */
        void m23171e() {
            int i;
            int[] iArr = this.f7425a.f7418a;
            int length = iArr.length;
            do {
                i = this.f7426b + 1;
                this.f7426b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (iArr[i] == 0);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f7427d;
            if (i == -1) {
                IntMap<V> intMap = this.f7425a;
                if (intMap.f7421k) {
                    intMap.f7421k = false;
                    this.f7427d = -2;
                    IntMap<V> intMap2 = this.f7425a;
                    intMap2.size--;
                    return;
                }
            }
            if (i >= 0) {
                IntMap<V> intMap3 = this.f7425a;
                int[] iArr = intMap3.f7418a;
                V[] vArr = intMap3.f7419b;
                int i2 = intMap3.mask;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    int i5 = iArr[i4];
                    if (i5 == 0) {
                        break;
                    }
                    int place = this.f7425a.place(i5);
                    if (((i4 - place) & i2) > ((i - place) & i2)) {
                        iArr[i] = i5;
                        vArr[i] = vArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                iArr[i] = 0;
                if (i != this.f7427d) {
                    this.f7426b--;
                }
                this.f7427d = -2;
                IntMap<V> intMap22 = this.f7425a;
                intMap22.size--;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(IntMap<V> intMap) {
            this.f7425a = intMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values<V> extends MapIterator<V> implements Iterable<V>, Iterator<V> {
        public Values(IntMap<V> intMap) {
            super(intMap);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.lang.Iterable
        public Iterator<V> iterator() {
            return this;
        }

        @Override // com.esotericsoftware.kryo.util.IntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.IntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        @Null
        public V next() {
            V v;
            if (this.hasNext) {
                int i = this.f7426b;
                if (i == -1) {
                    v = this.f7425a.f7420d;
                } else {
                    v = this.f7425a.f7419b[i];
                }
                this.f7427d = i;
                m23171e();
                return v;
            }
            throw new NoSuchElementException();
        }

        public ArrayList<V> toList() {
            ArrayList<V> arrayList = new ArrayList<>(this.f7425a.size);
            while (this.hasNext) {
                arrayList.add(next());
            }
            return arrayList;
        }
    }

    public IntMap() {
        this(51, 0.8f);
    }

    public void clear(int i) {
        int tableSize = ObjectMap.tableSize(i, this.f7422p);
        if (this.f7418a.length <= tableSize) {
            clear();
            return;
        }
        this.size = 0;
        this.f7421k = false;
        this.f7420d = null;
        m23172g(tableSize);
    }

    public Entries<V> entries() {
        return new Entries<>(this);
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
        boolean z = intMap.f7421k;
        boolean z2 = this.f7421k;
        if (z != z2) {
            return false;
        }
        if (z2) {
            V v = intMap.f7420d;
            if (v == null) {
                if (this.f7420d != null) {
                    return false;
                }
            } else if (!v.equals(this.f7420d)) {
                return false;
            }
        }
        int[] iArr = this.f7418a;
        V[] vArr = this.f7419b;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                V v2 = vArr[i];
                if (v2 == null) {
                    if (intMap.get(i2, ObjectMap.f7439p) != null) {
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
        boolean z = intMap.f7421k;
        boolean z2 = this.f7421k;
        if (z != z2) {
            return false;
        }
        if (z2 && this.f7420d != intMap.f7420d) {
            return false;
        }
        int[] iArr = this.f7418a;
        V[] vArr = this.f7419b;
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 != 0 && vArr[i] != intMap.get(i2, ObjectMap.f7439p)) {
                return false;
            }
        }
        return true;
    }

    public V get(int i) {
        if (i == 0) {
            if (this.f7421k) {
                return this.f7420d;
            }
            return null;
        }
        int place = place(i);
        while (true) {
            int i2 = this.f7418a[place];
            if (i2 == 0) {
                return null;
            }
            if (i2 == i) {
                return this.f7419b[place];
            }
            place = (place + 1) & this.mask;
        }
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<Entry<V>> iterator() {
        return entries();
    }

    public Keys keys() {
        return new Keys(this);
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public int place(int i) {
        return (int) ((i * (-7046029254386353131L)) >>> this.shift);
    }

    @Null
    public V put(int i, @Null V v) {
        if (i == 0) {
            V v2 = this.f7420d;
            this.f7420d = v;
            if (!this.f7421k) {
                this.f7421k = true;
                this.size++;
            }
            return v2;
        }
        int m23174d = m23174d(i);
        if (m23174d >= 0) {
            V[] vArr = this.f7419b;
            V v3 = vArr[m23174d];
            vArr[m23174d] = v;
            return v3;
        }
        int i2 = -(m23174d + 1);
        int[] iArr = this.f7418a;
        iArr[i2] = i;
        this.f7419b[i2] = v;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 >= this.f7423q) {
            m23172g(iArr.length << 1);
            return null;
        }
        return null;
    }

    @Null
    public V remove(int i) {
        if (i == 0) {
            if (!this.f7421k) {
                return null;
            }
            this.f7421k = false;
            V v = this.f7420d;
            this.f7420d = null;
            this.size--;
            return v;
        }
        int m23174d = m23174d(i);
        if (m23174d < 0) {
            return null;
        }
        int[] iArr = this.f7418a;
        V[] vArr = this.f7419b;
        V v2 = vArr[m23174d];
        int i2 = this.mask;
        int i3 = m23174d + 1;
        while (true) {
            int i4 = i3 & i2;
            int i5 = iArr[i4];
            if (i5 != 0) {
                int place = place(i5);
                if (((i4 - place) & i2) > ((m23174d - place) & i2)) {
                    iArr[m23174d] = i5;
                    vArr[m23174d] = vArr[i4];
                    m23174d = i4;
                }
                i3 = i4 + 1;
            } else {
                iArr[m23174d] = 0;
                this.size--;
                return v2;
            }
        }
    }

    public Values<V> values() {
        return new Values<>(this);
    }

    public IntMap(int i) {
        this(i, 0.8f);
    }

    public boolean containsKey(int i) {
        if (i == 0) {
            return this.f7421k;
        }
        if (m23174d(i) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(@Null Object obj, boolean z) {
        V[] vArr = this.f7419b;
        if (obj == null) {
            if (this.f7421k && this.f7420d == null) {
                return true;
            }
            int[] iArr = this.f7418a;
            for (int length = vArr.length - 1; length >= 0; length--) {
                if (iArr[length] != 0 && vArr[length] == null) {
                    return true;
                }
            }
            return false;
        } else if (z) {
            if (obj == this.f7420d) {
                return true;
            }
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == obj) {
                    return true;
                }
            }
            return false;
        } else if (this.f7421k && obj.equals(this.f7420d)) {
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
    public final int m23174d(int i) {
        int[] iArr = this.f7418a;
        int place = place(i);
        while (true) {
            int i2 = iArr[place];
            if (i2 == 0) {
                return -(place + 1);
            }
            if (i2 == i) {
                return place;
            }
            place = (place + 1) & this.mask;
        }
    }

    /* renamed from: e */
    public final void m23173e(int i, @Null V v) {
        int[] iArr = this.f7418a;
        int place = place(i);
        while (iArr[place] != 0) {
            place = (place + 1) & this.mask;
        }
        iArr[place] = i;
        this.f7419b[place] = v;
    }

    public void ensureCapacity(int i) {
        int tableSize = ObjectMap.tableSize(this.size + i, this.f7422p);
        if (this.f7418a.length < tableSize) {
            m23172g(tableSize);
        }
    }

    public int findKey(@Null Object obj, boolean z, int i) {
        V[] vArr = this.f7419b;
        if (obj == null) {
            if (this.f7421k && this.f7420d == null) {
                return 0;
            }
            int[] iArr = this.f7418a;
            for (int length = vArr.length - 1; length >= 0; length--) {
                int i2 = iArr[length];
                if (i2 != 0 && vArr[length] == null) {
                    return i2;
                }
            }
        } else if (z) {
            if (obj == this.f7420d) {
                return 0;
            }
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == obj) {
                    return this.f7418a[length2];
                }
            }
        } else if (this.f7421k && obj.equals(this.f7420d)) {
            return 0;
        } else {
            for (int length3 = vArr.length - 1; length3 >= 0; length3--) {
                if (obj.equals(vArr[length3])) {
                    return this.f7418a[length3];
                }
            }
        }
        return i;
    }

    /* renamed from: g */
    public final void m23172g(int i) {
        int length = this.f7418a.length;
        this.f7423q = (int) (i * this.f7422p);
        int i2 = i - 1;
        this.mask = i2;
        this.shift = Long.numberOfLeadingZeros(i2);
        int[] iArr = this.f7418a;
        V[] vArr = this.f7419b;
        this.f7418a = new int[i];
        this.f7419b = (V[]) new Object[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                int i4 = iArr[i3];
                if (i4 != 0) {
                    m23173e(i4, vArr[i3]);
                }
            }
        }
    }

    public int hashCode() {
        V v;
        int i = this.size;
        if (this.f7421k && (v = this.f7420d) != null) {
            i += v.hashCode();
        }
        int[] iArr = this.f7418a;
        V[] vArr = this.f7419b;
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

    public void putAll(IntMap<? extends V> intMap) {
        ensureCapacity(intMap.size);
        if (intMap.f7421k) {
            put(0, intMap.f7420d);
        }
        int[] iArr = intMap.f7418a;
        V[] vArr = intMap.f7419b;
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
            int tableSize = ObjectMap.tableSize(i, this.f7422p);
            if (this.f7418a.length > tableSize) {
                m23172g(tableSize);
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
            int[] r1 = r7.f7418a
            V[] r2 = r7.f7419b
            int r3 = r1.length
            boolean r4 = r7.f7421k
            r5 = 61
            if (r4 == 0) goto L29
            java.lang.String r4 = "0="
            r0.append(r4)
            V r4 = r7.f7420d
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
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.util.IntMap.toString():java.lang.String");
    }

    public IntMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f7422p = f;
            int tableSize = ObjectMap.tableSize(i, f);
            this.f7423q = (int) (tableSize * f);
            int i2 = tableSize - 1;
            this.mask = i2;
            this.shift = Long.numberOfLeadingZeros(i2);
            this.f7418a = new int[tableSize];
            this.f7419b = (V[]) new Object[tableSize];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public V get(int i, @Null V v) {
        if (i == 0) {
            if (this.f7421k) {
                return this.f7420d;
            }
            return null;
        }
        int place = place(i);
        while (true) {
            int i2 = this.f7418a[place];
            if (i2 == 0) {
                return v;
            }
            if (i2 == i) {
                return this.f7419b[place];
            }
            place = (place + 1) & this.mask;
        }
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f7418a, 0);
        Arrays.fill(this.f7419b, (Object) null);
        this.f7420d = null;
        this.f7421k = false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public IntMap(com.esotericsoftware.kryo.util.IntMap<? extends V> r5) {
        /*
            r4 = this;
            int[] r0 = r5.f7418a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f7422p
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            int[] r0 = r5.f7418a
            int[] r1 = r4.f7418a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            V[] r0 = r5.f7419b
            V[] r1 = r4.f7419b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r0 = r5.size
            r4.size = r0
            V r0 = r5.f7420d
            r4.f7420d = r0
            boolean r5 = r5.f7421k
            r4.f7421k = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.util.IntMap.<init>(com.esotericsoftware.kryo.util.IntMap):void");
    }
}
