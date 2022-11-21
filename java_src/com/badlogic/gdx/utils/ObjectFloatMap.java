package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class ObjectFloatMap<K> implements Iterable<Entry<K>> {

    /* renamed from: a */
    public K[] f6603a;

    /* renamed from: b */
    public float[] f6604b;

    /* renamed from: d */
    public float f6605d;

    /* renamed from: k */
    public int f6606k;

    /* renamed from: p */
    public int f6607p;

    /* renamed from: q */
    public int f6608q;

    /* renamed from: r */
    public transient Entries f6609r;

    /* renamed from: s */
    public transient Entries f6610s;
    public int size;

    /* renamed from: t */
    public transient Values f6611t;

    /* renamed from: u */
    public transient Values f6612u;

    /* renamed from: v */
    public transient Keys f6613v;

    /* renamed from: w */
    public transient Keys f6614w;

    /* loaded from: classes.dex */
    public static class Entries<K> extends MapIterator<K> implements Iterable<Entry<K>>, Iterator<Entry<K>> {

        /* renamed from: p */
        public Entry<K> f6615p;

        @Override // java.lang.Iterable
        public Entries<K> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectFloatMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectFloatMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6619k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public Entry<K> next() {
            if (this.hasNext) {
                if (this.f6619k) {
                    ObjectFloatMap<K> objectFloatMap = this.f6616a;
                    K[] kArr = objectFloatMap.f6603a;
                    Entry<K> entry = this.f6615p;
                    int i = this.f6617b;
                    entry.key = kArr[i];
                    entry.value = objectFloatMap.f6604b[i];
                    this.f6618d = i;
                    m23584e();
                    return this.f6615p;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(ObjectFloatMap<K> objectFloatMap) {
            super(objectFloatMap);
            this.f6615p = new Entry<>();
        }
    }

    /* loaded from: classes.dex */
    public static class Entry<K> {
        public K key;
        public float value;

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys<K> extends MapIterator<K> implements Iterable<K>, Iterator<K> {
        public Keys(ObjectFloatMap<K> objectFloatMap) {
            super(objectFloatMap);
        }

        @Override // java.lang.Iterable
        public Keys<K> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectFloatMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectFloatMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Array<K> toArray() {
            return toArray(new Array<>(true, this.f6616a.size));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6619k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public K next() {
            if (this.hasNext) {
                if (this.f6619k) {
                    K[] kArr = this.f6616a.f6603a;
                    int i = this.f6617b;
                    K k = kArr[i];
                    this.f6618d = i;
                    m23584e();
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
        public final ObjectFloatMap<K> f6616a;

        /* renamed from: b */
        public int f6617b;

        /* renamed from: d */
        public int f6618d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f6619k = true;

        public void reset() {
            this.f6618d = -1;
            this.f6617b = -1;
            m23584e();
        }

        /* renamed from: e */
        void m23584e() {
            int i;
            K[] kArr = this.f6616a.f6603a;
            int length = kArr.length;
            do {
                i = this.f6617b + 1;
                this.f6617b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (kArr[i] == null);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f6618d;
            if (i >= 0) {
                ObjectFloatMap<K> objectFloatMap = this.f6616a;
                K[] kArr = objectFloatMap.f6603a;
                float[] fArr = objectFloatMap.f6604b;
                int i2 = objectFloatMap.f6608q;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int m23588e = this.f6616a.m23588e(k);
                    if (((i4 - m23588e) & i2) > ((i - m23588e) & i2)) {
                        kArr[i] = k;
                        fArr[i] = fArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                ObjectFloatMap<K> objectFloatMap2 = this.f6616a;
                objectFloatMap2.size--;
                if (i != this.f6618d) {
                    this.f6617b--;
                }
                this.f6618d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(ObjectFloatMap<K> objectFloatMap) {
            this.f6616a = objectFloatMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values extends MapIterator<Object> {
        public Values(ObjectFloatMap<?> objectFloatMap) {
            super(objectFloatMap);
        }

        public Values iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectFloatMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectFloatMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public FloatArray toArray() {
            FloatArray floatArray = new FloatArray(true, this.f6616a.size);
            while (this.hasNext) {
                floatArray.add(next());
            }
            return floatArray;
        }

        public boolean hasNext() {
            if (this.f6619k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        public float next() {
            if (this.hasNext) {
                if (this.f6619k) {
                    float[] fArr = this.f6616a.f6604b;
                    int i = this.f6617b;
                    float f = fArr[i];
                    this.f6618d = i;
                    m23584e();
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

    public ObjectFloatMap() {
        this(51, 0.8f);
    }

    public void clear(int i) {
        int m23562k = ObjectSet.m23562k(i, this.f6605d);
        if (this.f6603a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        m23586i(m23562k);
    }

    public boolean containsKey(K k) {
        return m23589d(k) >= 0;
    }

    public boolean containsValue(float f) {
        K[] kArr = this.f6603a;
        float[] fArr = this.f6604b;
        for (int length = fArr.length - 1; length >= 0; length--) {
            if (kArr[length] != null && fArr[length] == f) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public int m23588e(K k) {
        return (int) ((k.hashCode() * (-7046029254386353131L)) >>> this.f6607p);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ObjectFloatMap)) {
            return false;
        }
        ObjectFloatMap objectFloatMap = (ObjectFloatMap) obj;
        if (objectFloatMap.size != this.size) {
            return false;
        }
        K[] kArr = this.f6603a;
        float[] fArr = this.f6604b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                float f = objectFloatMap.get(k, 0.0f);
                if ((f == 0.0f && !objectFloatMap.containsKey(k)) || f != fArr[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    @Null
    public K findKey(float f) {
        K[] kArr = this.f6603a;
        float[] fArr = this.f6604b;
        for (int length = fArr.length - 1; length >= 0; length--) {
            K k = kArr[length];
            if (k != null && fArr[length] == f) {
                return k;
            }
        }
        return null;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public void put(K k, float f) {
        int m23589d = m23589d(k);
        if (m23589d >= 0) {
            this.f6604b[m23589d] = f;
            return;
        }
        int i = -(m23589d + 1);
        K[] kArr = this.f6603a;
        kArr[i] = k;
        this.f6604b[i] = f;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f6606k) {
            m23586i(kArr.length << 1);
        }
    }

    public String toString(String str) {
        return m23585k(str, false);
    }

    public ObjectFloatMap(int i) {
        this(i, 0.8f);
    }

    /* renamed from: d */
    public int m23589d(K k) {
        if (k != null) {
            K[] kArr = this.f6603a;
            int m23588e = m23588e(k);
            while (true) {
                K k2 = kArr[m23588e];
                if (k2 == null) {
                    return -(m23588e + 1);
                }
                if (k2.equals(k)) {
                    return m23588e;
                }
                m23588e = (m23588e + 1) & this.f6608q;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = ObjectSet.m23562k(this.size + i, this.f6605d);
        if (this.f6603a.length < m23562k) {
            m23586i(m23562k);
        }
    }

    public Entries<K> entries() {
        if (Collections.allocateIterators) {
            return new Entries<>(this);
        }
        if (this.f6609r == null) {
            this.f6609r = new Entries(this);
            this.f6610s = new Entries(this);
        }
        Entries entries = this.f6609r;
        if (!entries.f6619k) {
            entries.reset();
            Entries<K> entries2 = this.f6609r;
            entries2.f6619k = true;
            this.f6610s.f6619k = false;
            return entries2;
        }
        this.f6610s.reset();
        Entries<K> entries3 = this.f6610s;
        entries3.f6619k = true;
        this.f6609r.f6619k = false;
        return entries3;
    }

    /* renamed from: g */
    public final void m23587g(K k, float f) {
        K[] kArr = this.f6603a;
        int m23588e = m23588e(k);
        while (kArr[m23588e] != null) {
            m23588e = (m23588e + 1) & this.f6608q;
        }
        kArr[m23588e] = k;
        this.f6604b[m23588e] = f;
    }

    public int hashCode() {
        int i = this.size;
        K[] kArr = this.f6603a;
        float[] fArr = this.f6604b;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            if (k != null) {
                i += k.hashCode() + NumberUtils.floatToRawIntBits(fArr[i2]);
            }
        }
        return i;
    }

    /* renamed from: i */
    public final void m23586i(int i) {
        int length = this.f6603a.length;
        this.f6606k = (int) (i * this.f6605d);
        int i2 = i - 1;
        this.f6608q = i2;
        this.f6607p = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f6603a;
        float[] fArr = this.f6604b;
        this.f6603a = (K[]) new Object[i];
        this.f6604b = new float[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    m23587g(k, fArr[i3]);
                }
            }
        }
    }

    @Override // java.lang.Iterable
    public Entries<K> iterator() {
        return entries();
    }

    /* renamed from: k */
    public final String m23585k(String str, boolean z) {
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
        K[] kArr = this.f6603a;
        float[] fArr = this.f6604b;
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
                    sb.append(fArr[i]);
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
                sb.append(fArr[i2]);
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
        if (this.f6613v == null) {
            this.f6613v = new Keys(this);
            this.f6614w = new Keys(this);
        }
        Keys keys = this.f6613v;
        if (!keys.f6619k) {
            keys.reset();
            Keys<K> keys2 = this.f6613v;
            keys2.f6619k = true;
            this.f6614w.f6619k = false;
            return keys2;
        }
        this.f6614w.reset();
        Keys<K> keys3 = this.f6614w;
        keys3.f6619k = true;
        this.f6613v.f6619k = false;
        return keys3;
    }

    public void putAll(ObjectFloatMap<? extends K> objectFloatMap) {
        ensureCapacity(objectFloatMap.size);
        K[] kArr = objectFloatMap.f6603a;
        float[] fArr = objectFloatMap.f6604b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                put(k, fArr[i]);
            }
        }
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = ObjectSet.m23562k(i, this.f6605d);
            if (this.f6603a.length > m23562k) {
                m23586i(m23562k);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    public String toString() {
        return m23585k(", ", true);
    }

    public Values values() {
        if (Collections.allocateIterators) {
            return new Values(this);
        }
        if (this.f6611t == null) {
            this.f6611t = new Values(this);
            this.f6612u = new Values(this);
        }
        Values values = this.f6611t;
        if (!values.f6619k) {
            values.reset();
            Values values2 = this.f6611t;
            values2.f6619k = true;
            this.f6612u.f6619k = false;
            return values2;
        }
        this.f6612u.reset();
        Values values3 = this.f6612u;
        values3.f6619k = true;
        this.f6611t.f6619k = false;
        return values3;
    }

    public ObjectFloatMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6605d = f;
            int m23562k = ObjectSet.m23562k(i, f);
            this.f6606k = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6608q = i2;
            this.f6607p = Long.numberOfLeadingZeros(i2);
            this.f6603a = (K[]) new Object[m23562k];
            this.f6604b = new float[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public float get(K k, float f) {
        int m23589d = m23589d(k);
        if (m23589d >= 0) {
            return this.f6604b[m23589d];
        }
        return f;
    }

    public float getAndIncrement(K k, float f, float f2) {
        int m23589d = m23589d(k);
        if (m23589d >= 0) {
            float[] fArr = this.f6604b;
            float f3 = fArr[m23589d];
            fArr[m23589d] = f2 + f3;
            return f3;
        }
        int i = -(m23589d + 1);
        K[] kArr = this.f6603a;
        kArr[i] = k;
        this.f6604b[i] = f2 + f;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f6606k) {
            m23586i(kArr.length << 1);
        }
        return f;
    }

    public float remove(K k, float f) {
        int m23589d = m23589d(k);
        if (m23589d < 0) {
            return f;
        }
        K[] kArr = this.f6603a;
        float[] fArr = this.f6604b;
        float f2 = fArr[m23589d];
        int i = this.f6608q;
        int i2 = m23589d + 1;
        while (true) {
            int i3 = i2 & i;
            K k2 = kArr[i3];
            if (k2 != null) {
                int m23588e = m23588e(k2);
                if (((i3 - m23588e) & i) > ((m23589d - m23588e) & i)) {
                    kArr[m23589d] = k2;
                    fArr[m23589d] = fArr[i3];
                    m23589d = i3;
                }
                i2 = i3 + 1;
            } else {
                kArr[m23589d] = null;
                this.size--;
                return f2;
            }
        }
    }

    public boolean containsValue(float f, float f2) {
        K[] kArr = this.f6603a;
        float[] fArr = this.f6604b;
        for (int length = fArr.length - 1; length >= 0; length--) {
            if (kArr[length] != null && Math.abs(fArr[length] - f) <= f2) {
                return true;
            }
        }
        return false;
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f6603a, (Object) null);
    }

    @Null
    public K findKey(float f, float f2) {
        K[] kArr = this.f6603a;
        float[] fArr = this.f6604b;
        for (int length = fArr.length - 1; length >= 0; length--) {
            K k = kArr[length];
            if (k != null && Math.abs(fArr[length] - f) <= f2) {
                return k;
            }
        }
        return null;
    }

    public float put(K k, float f, float f2) {
        int m23589d = m23589d(k);
        if (m23589d >= 0) {
            float[] fArr = this.f6604b;
            float f3 = fArr[m23589d];
            fArr[m23589d] = f;
            return f3;
        }
        int i = -(m23589d + 1);
        K[] kArr = this.f6603a;
        kArr[i] = k;
        this.f6604b[i] = f;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f6606k) {
            m23586i(kArr.length << 1);
        }
        return f2;
    }

    public ObjectFloatMap(ObjectFloatMap<? extends K> objectFloatMap) {
        this((int) Math.floor(objectFloatMap.f6603a.length * objectFloatMap.f6605d), objectFloatMap.f6605d);
        Object[] objArr = objectFloatMap.f6603a;
        System.arraycopy(objArr, 0, this.f6603a, 0, objArr.length);
        float[] fArr = objectFloatMap.f6604b;
        System.arraycopy(fArr, 0, this.f6604b, 0, fArr.length);
        this.size = objectFloatMap.size;
    }
}
