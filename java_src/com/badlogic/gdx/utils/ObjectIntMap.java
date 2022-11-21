package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class ObjectIntMap<K> implements Iterable<Entry<K>> {

    /* renamed from: a */
    public K[] f6620a;

    /* renamed from: b */
    public int[] f6621b;

    /* renamed from: d */
    public float f6622d;

    /* renamed from: k */
    public int f6623k;

    /* renamed from: p */
    public int f6624p;

    /* renamed from: q */
    public int f6625q;

    /* renamed from: r */
    public transient Entries f6626r;

    /* renamed from: s */
    public transient Entries f6627s;
    public int size;

    /* renamed from: t */
    public transient Values f6628t;

    /* renamed from: u */
    public transient Values f6629u;

    /* renamed from: v */
    public transient Keys f6630v;

    /* renamed from: w */
    public transient Keys f6631w;

    /* loaded from: classes.dex */
    public static class Entries<K> extends MapIterator<K> implements Iterable<Entry<K>>, Iterator<Entry<K>> {

        /* renamed from: p */
        public Entry<K> f6632p;

        @Override // java.lang.Iterable
        public Entries<K> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6636k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public Entry<K> next() {
            if (this.hasNext) {
                if (this.f6636k) {
                    ObjectIntMap<K> objectIntMap = this.f6633a;
                    K[] kArr = objectIntMap.f6620a;
                    Entry<K> entry = this.f6632p;
                    int i = this.f6634b;
                    entry.key = kArr[i];
                    entry.value = objectIntMap.f6621b[i];
                    this.f6635d = i;
                    m23578e();
                    return this.f6632p;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(ObjectIntMap<K> objectIntMap) {
            super(objectIntMap);
            this.f6632p = new Entry<>();
        }
    }

    /* loaded from: classes.dex */
    public static class Entry<K> {
        public K key;
        public int value;

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys<K> extends MapIterator<K> implements Iterable<K>, Iterator<K> {
        public Keys(ObjectIntMap<K> objectIntMap) {
            super(objectIntMap);
        }

        @Override // java.lang.Iterable
        public Keys<K> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Array<K> toArray() {
            return toArray(new Array<>(true, this.f6633a.size));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6636k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public K next() {
            if (this.hasNext) {
                if (this.f6636k) {
                    K[] kArr = this.f6633a.f6620a;
                    int i = this.f6634b;
                    K k = kArr[i];
                    this.f6635d = i;
                    m23578e();
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
        public final ObjectIntMap<K> f6633a;

        /* renamed from: b */
        public int f6634b;

        /* renamed from: d */
        public int f6635d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f6636k = true;

        public void reset() {
            this.f6635d = -1;
            this.f6634b = -1;
            m23578e();
        }

        /* renamed from: e */
        void m23578e() {
            int i;
            K[] kArr = this.f6633a.f6620a;
            int length = kArr.length;
            do {
                i = this.f6634b + 1;
                this.f6634b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (kArr[i] == null);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f6635d;
            if (i >= 0) {
                ObjectIntMap<K> objectIntMap = this.f6633a;
                K[] kArr = objectIntMap.f6620a;
                int[] iArr = objectIntMap.f6621b;
                int i2 = objectIntMap.f6625q;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int m23582e = this.f6633a.m23582e(k);
                    if (((i4 - m23582e) & i2) > ((i - m23582e) & i2)) {
                        kArr[i] = k;
                        iArr[i] = iArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                ObjectIntMap<K> objectIntMap2 = this.f6633a;
                objectIntMap2.size--;
                if (i != this.f6635d) {
                    this.f6634b--;
                }
                this.f6635d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(ObjectIntMap<K> objectIntMap) {
            this.f6633a = objectIntMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values extends MapIterator<Object> {
        public Values(ObjectIntMap<?> objectIntMap) {
            super(objectIntMap);
        }

        public Values iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public IntArray toArray() {
            IntArray intArray = new IntArray(true, this.f6633a.size);
            while (this.hasNext) {
                intArray.add(next());
            }
            return intArray;
        }

        public boolean hasNext() {
            if (this.f6636k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        public int next() {
            if (this.hasNext) {
                if (this.f6636k) {
                    int[] iArr = this.f6633a.f6621b;
                    int i = this.f6634b;
                    int i2 = iArr[i];
                    this.f6635d = i;
                    m23578e();
                    return i2;
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

    public ObjectIntMap() {
        this(51, 0.8f);
    }

    public void clear(int i) {
        int m23562k = ObjectSet.m23562k(i, this.f6622d);
        if (this.f6620a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        m23580i(m23562k);
    }

    public boolean containsKey(K k) {
        return m23583d(k) >= 0;
    }

    /* renamed from: e */
    public int m23582e(K k) {
        return (int) ((k.hashCode() * (-7046029254386353131L)) >>> this.f6624p);
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ObjectIntMap)) {
            return false;
        }
        ObjectIntMap objectIntMap = (ObjectIntMap) obj;
        if (objectIntMap.size != this.size) {
            return false;
        }
        K[] kArr = this.f6620a;
        int[] iArr = this.f6621b;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            if (k != null && (((i = objectIntMap.get(k, 0)) == 0 && !objectIntMap.containsKey(k)) || i != iArr[i2])) {
                return false;
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

    public void put(K k, int i) {
        int m23583d = m23583d(k);
        if (m23583d >= 0) {
            this.f6621b[m23583d] = i;
            return;
        }
        int i2 = -(m23583d + 1);
        K[] kArr = this.f6620a;
        kArr[i2] = k;
        this.f6621b[i2] = i;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 >= this.f6623k) {
            m23580i(kArr.length << 1);
        }
    }

    public String toString(String str) {
        return m23579k(str, false);
    }

    public ObjectIntMap(int i) {
        this(i, 0.8f);
    }

    public boolean containsValue(int i) {
        K[] kArr = this.f6620a;
        int[] iArr = this.f6621b;
        for (int length = iArr.length - 1; length >= 0; length--) {
            if (kArr[length] != null && iArr[length] == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public int m23583d(K k) {
        if (k != null) {
            K[] kArr = this.f6620a;
            int m23582e = m23582e(k);
            while (true) {
                K k2 = kArr[m23582e];
                if (k2 == null) {
                    return -(m23582e + 1);
                }
                if (k2.equals(k)) {
                    return m23582e;
                }
                m23582e = (m23582e + 1) & this.f6625q;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = ObjectSet.m23562k(this.size + i, this.f6622d);
        if (this.f6620a.length < m23562k) {
            m23580i(m23562k);
        }
    }

    public Entries<K> entries() {
        if (Collections.allocateIterators) {
            return new Entries<>(this);
        }
        if (this.f6626r == null) {
            this.f6626r = new Entries(this);
            this.f6627s = new Entries(this);
        }
        Entries entries = this.f6626r;
        if (!entries.f6636k) {
            entries.reset();
            Entries<K> entries2 = this.f6626r;
            entries2.f6636k = true;
            this.f6627s.f6636k = false;
            return entries2;
        }
        this.f6627s.reset();
        Entries<K> entries3 = this.f6627s;
        entries3.f6636k = true;
        this.f6626r.f6636k = false;
        return entries3;
    }

    @Null
    public K findKey(int i) {
        K[] kArr = this.f6620a;
        int[] iArr = this.f6621b;
        for (int length = iArr.length - 1; length >= 0; length--) {
            K k = kArr[length];
            if (k != null && iArr[length] == i) {
                return k;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final void m23581g(K k, int i) {
        K[] kArr = this.f6620a;
        int m23582e = m23582e(k);
        while (kArr[m23582e] != null) {
            m23582e = (m23582e + 1) & this.f6625q;
        }
        kArr[m23582e] = k;
        this.f6621b[m23582e] = i;
    }

    public int hashCode() {
        int i = this.size;
        K[] kArr = this.f6620a;
        int[] iArr = this.f6621b;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            if (k != null) {
                i += k.hashCode() + iArr[i2];
            }
        }
        return i;
    }

    /* renamed from: i */
    public final void m23580i(int i) {
        int length = this.f6620a.length;
        this.f6623k = (int) (i * this.f6622d);
        int i2 = i - 1;
        this.f6625q = i2;
        this.f6624p = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f6620a;
        int[] iArr = this.f6621b;
        this.f6620a = (K[]) new Object[i];
        this.f6621b = new int[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    m23581g(k, iArr[i3]);
                }
            }
        }
    }

    @Override // java.lang.Iterable
    public Entries<K> iterator() {
        return entries();
    }

    /* renamed from: k */
    public final String m23579k(String str, boolean z) {
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
        K[] kArr = this.f6620a;
        int[] iArr = this.f6621b;
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
            if (i <= 0) {
                break;
            }
            K k2 = kArr[i2];
            if (k2 != null) {
                sb.append(str);
                sb.append(k2);
                sb.append(SignatureVisitor.INSTANCEOF);
                sb.append(iArr[i2]);
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
        if (this.f6630v == null) {
            this.f6630v = new Keys(this);
            this.f6631w = new Keys(this);
        }
        Keys keys = this.f6630v;
        if (!keys.f6636k) {
            keys.reset();
            Keys<K> keys2 = this.f6630v;
            keys2.f6636k = true;
            this.f6631w.f6636k = false;
            return keys2;
        }
        this.f6631w.reset();
        Keys<K> keys3 = this.f6631w;
        keys3.f6636k = true;
        this.f6630v.f6636k = false;
        return keys3;
    }

    public void putAll(ObjectIntMap<? extends K> objectIntMap) {
        ensureCapacity(objectIntMap.size);
        K[] kArr = objectIntMap.f6620a;
        int[] iArr = objectIntMap.f6621b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                put(k, iArr[i]);
            }
        }
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = ObjectSet.m23562k(i, this.f6622d);
            if (this.f6620a.length > m23562k) {
                m23580i(m23562k);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    public String toString() {
        return m23579k(", ", true);
    }

    public Values values() {
        if (Collections.allocateIterators) {
            return new Values(this);
        }
        if (this.f6628t == null) {
            this.f6628t = new Values(this);
            this.f6629u = new Values(this);
        }
        Values values = this.f6628t;
        if (!values.f6636k) {
            values.reset();
            Values values2 = this.f6628t;
            values2.f6636k = true;
            this.f6629u.f6636k = false;
            return values2;
        }
        this.f6629u.reset();
        Values values3 = this.f6629u;
        values3.f6636k = true;
        this.f6628t.f6636k = false;
        return values3;
    }

    public ObjectIntMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6622d = f;
            int m23562k = ObjectSet.m23562k(i, f);
            this.f6623k = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6625q = i2;
            this.f6624p = Long.numberOfLeadingZeros(i2);
            this.f6620a = (K[]) new Object[m23562k];
            this.f6621b = new int[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public int get(K k, int i) {
        int m23583d = m23583d(k);
        if (m23583d >= 0) {
            return this.f6621b[m23583d];
        }
        return i;
    }

    public int getAndIncrement(K k, int i, int i2) {
        int m23583d = m23583d(k);
        if (m23583d >= 0) {
            int[] iArr = this.f6621b;
            int i3 = iArr[m23583d];
            iArr[m23583d] = i2 + i3;
            return i3;
        }
        int i4 = -(m23583d + 1);
        K[] kArr = this.f6620a;
        kArr[i4] = k;
        this.f6621b[i4] = i2 + i;
        int i5 = this.size + 1;
        this.size = i5;
        if (i5 >= this.f6623k) {
            m23580i(kArr.length << 1);
        }
        return i;
    }

    public int remove(K k, int i) {
        int m23583d = m23583d(k);
        if (m23583d < 0) {
            return i;
        }
        K[] kArr = this.f6620a;
        int[] iArr = this.f6621b;
        int i2 = iArr[m23583d];
        int i3 = this.f6625q;
        int i4 = m23583d + 1;
        while (true) {
            int i5 = i4 & i3;
            K k2 = kArr[i5];
            if (k2 != null) {
                int m23582e = m23582e(k2);
                if (((i5 - m23582e) & i3) > ((m23583d - m23582e) & i3)) {
                    kArr[m23583d] = k2;
                    iArr[m23583d] = iArr[i5];
                    m23583d = i5;
                }
                i4 = i5 + 1;
            } else {
                kArr[m23583d] = null;
                this.size--;
                return i2;
            }
        }
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f6620a, (Object) null);
    }

    public int put(K k, int i, int i2) {
        int m23583d = m23583d(k);
        if (m23583d >= 0) {
            int[] iArr = this.f6621b;
            int i3 = iArr[m23583d];
            iArr[m23583d] = i;
            return i3;
        }
        int i4 = -(m23583d + 1);
        K[] kArr = this.f6620a;
        kArr[i4] = k;
        this.f6621b[i4] = i;
        int i5 = this.size + 1;
        this.size = i5;
        if (i5 >= this.f6623k) {
            m23580i(kArr.length << 1);
        }
        return i2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ObjectIntMap(com.badlogic.gdx.utils.ObjectIntMap<? extends K> r5) {
        /*
            r4 = this;
            K[] r0 = r5.f6620a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f6622d
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            K[] r0 = r5.f6620a
            K[] r1 = r4.f6620a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int[] r0 = r5.f6621b
            int[] r1 = r4.f6621b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r5 = r5.size
            r4.size = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.ObjectIntMap.<init>(com.badlogic.gdx.utils.ObjectIntMap):void");
    }
}
