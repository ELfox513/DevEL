package com.badlogic.gdx.utils;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class ObjectMap<K, V> implements Iterable<Entry<K, V>> {

    /* renamed from: x */
    public static final Object f6654x = new Object();

    /* renamed from: a */
    public K[] f6655a;

    /* renamed from: b */
    public V[] f6656b;

    /* renamed from: d */
    public float f6657d;

    /* renamed from: k */
    public int f6658k;

    /* renamed from: p */
    public int f6659p;

    /* renamed from: q */
    public int f6660q;

    /* renamed from: r */
    public transient Entries f6661r;

    /* renamed from: s */
    public transient Entries f6662s;
    public int size;

    /* renamed from: t */
    public transient Values f6663t;

    /* renamed from: u */
    public transient Values f6664u;

    /* renamed from: v */
    public transient Keys f6665v;

    /* renamed from: w */
    public transient Keys f6666w;

    /* loaded from: classes.dex */
    public static class Entries<K, V> extends MapIterator<K, V, Entry<K, V>> {

        /* renamed from: p */
        public Entry<K, V> f6667p;

        @Override // java.lang.Iterable
        public Entries<K, V> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6671k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public Entry<K, V> next() {
            if (this.hasNext) {
                if (this.f6671k) {
                    ObjectMap<K, V> objectMap = this.f6668a;
                    K[] kArr = objectMap.f6655a;
                    Entry<K, V> entry = this.f6667p;
                    int i = this.f6669b;
                    entry.key = kArr[i];
                    entry.value = objectMap.f6656b[i];
                    this.f6670d = i;
                    m23567e();
                    return this.f6667p;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(ObjectMap<K, V> objectMap) {
            super(objectMap);
            this.f6667p = new Entry<>();
        }
    }

    /* loaded from: classes.dex */
    public static class Entry<K, V> {
        public K key;
        @Null
        public V value;

        public String toString() {
            return this.key + "=" + this.value;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys<K> extends MapIterator<K, Object, K> {
        public Keys(ObjectMap<K, ?> objectMap) {
            super(objectMap);
        }

        @Override // java.lang.Iterable
        public Keys<K> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Array<K> toArray() {
            return toArray(new Array<>(true, this.f6668a.size));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6671k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public K next() {
            if (this.hasNext) {
                if (this.f6671k) {
                    K[] kArr = this.f6668a.f6655a;
                    int i = this.f6669b;
                    K k = kArr[i];
                    this.f6670d = i;
                    m23567e();
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
    public static abstract class MapIterator<K, V, I> implements Iterable<I>, Iterator<I> {

        /* renamed from: a */
        public final ObjectMap<K, V> f6668a;

        /* renamed from: b */
        public int f6669b;

        /* renamed from: d */
        public int f6670d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f6671k = true;

        public void reset() {
            this.f6670d = -1;
            this.f6669b = -1;
            m23567e();
        }

        /* renamed from: e */
        public void m23567e() {
            int i;
            K[] kArr = this.f6668a.f6655a;
            int length = kArr.length;
            do {
                i = this.f6669b + 1;
                this.f6669b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (kArr[i] == null);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f6670d;
            if (i >= 0) {
                ObjectMap<K, V> objectMap = this.f6668a;
                K[] kArr = objectMap.f6655a;
                V[] vArr = objectMap.f6656b;
                int i2 = objectMap.f6660q;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int mo23570e = this.f6668a.mo23570e(k);
                    if (((i4 - mo23570e) & i2) > ((i - mo23570e) & i2)) {
                        kArr[i] = k;
                        vArr[i] = vArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                vArr[i] = null;
                ObjectMap<K, V> objectMap2 = this.f6668a;
                objectMap2.size--;
                if (i != this.f6670d) {
                    this.f6669b--;
                }
                this.f6670d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(ObjectMap<K, V> objectMap) {
            this.f6668a = objectMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values<V> extends MapIterator<Object, V, V> {
        public Values(ObjectMap<?, V> objectMap) {
            super(objectMap);
        }

        @Override // java.lang.Iterable
        public Values<V> iterator() {
            return this;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public Array<V> toArray() {
            return toArray(new Array<>(true, this.f6668a.size));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6671k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        @Null
        public V next() {
            if (this.hasNext) {
                if (this.f6671k) {
                    V[] vArr = this.f6668a.f6656b;
                    int i = this.f6669b;
                    V v = vArr[i];
                    this.f6670d = i;
                    m23567e();
                    return v;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Array<V> toArray(Array<V> array) {
            while (this.hasNext) {
                array.add(next());
            }
            return array;
        }
    }

    public ObjectMap() {
        this(51, 0.8f);
    }

    public void clear(int i) {
        int m23562k = ObjectSet.m23562k(i, this.f6657d);
        if (this.f6655a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        m23568i(m23562k);
    }

    public boolean containsKey(K k) {
        return mo23571d(k) >= 0;
    }

    /* renamed from: e */
    public int mo23570e(K k) {
        return (int) ((k.hashCode() * (-7046029254386353131L)) >>> this.f6659p);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ObjectMap)) {
            return false;
        }
        ObjectMap objectMap = (ObjectMap) obj;
        if (objectMap.size != this.size) {
            return false;
        }
        K[] kArr = this.f6655a;
        V[] vArr = this.f6656b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                V v = vArr[i];
                if (v == null) {
                    if (objectMap.get(k, f6654x) != null) {
                        return false;
                    }
                } else if (!v.equals(objectMap.get(k))) {
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
        if (!(obj instanceof ObjectMap)) {
            return false;
        }
        ObjectMap objectMap = (ObjectMap) obj;
        if (objectMap.size != this.size) {
            return false;
        }
        K[] kArr = this.f6655a;
        V[] vArr = this.f6656b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null && vArr[i] != objectMap.get(k, f6654x)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Null
    public <T extends K> V get(T t) {
        int mo23571d = mo23571d(t);
        if (mo23571d < 0) {
            return null;
        }
        return this.f6656b[mo23571d];
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public String toString(String str) {
        return mo23560k(str, false);
    }

    public ObjectMap(int i) {
        this(i, 0.8f);
    }

    public boolean containsValue(@Null Object obj, boolean z) {
        V[] vArr = this.f6656b;
        if (obj == null) {
            K[] kArr = this.f6655a;
            for (int length = vArr.length - 1; length >= 0; length--) {
                if (kArr[length] != null && vArr[length] == null) {
                    return true;
                }
            }
            return false;
        } else if (z) {
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == obj) {
                    return true;
                }
            }
            return false;
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
    public int mo23571d(K k) {
        if (k != null) {
            K[] kArr = this.f6655a;
            int mo23570e = mo23570e(k);
            while (true) {
                K k2 = kArr[mo23570e];
                if (k2 == null) {
                    return -(mo23570e + 1);
                }
                if (k2.equals(k)) {
                    return mo23570e;
                }
                mo23570e = (mo23570e + 1) & this.f6660q;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = ObjectSet.m23562k(this.size + i, this.f6657d);
        if (this.f6655a.length < m23562k) {
            m23568i(m23562k);
        }
    }

    public Entries<K, V> entries() {
        if (Collections.allocateIterators) {
            return new Entries<>(this);
        }
        if (this.f6661r == null) {
            this.f6661r = new Entries(this);
            this.f6662s = new Entries(this);
        }
        Entries entries = this.f6661r;
        if (!entries.f6671k) {
            entries.reset();
            Entries<K, V> entries2 = this.f6661r;
            entries2.f6671k = true;
            this.f6662s.f6671k = false;
            return entries2;
        }
        this.f6662s.reset();
        Entries<K, V> entries3 = this.f6662s;
        entries3.f6671k = true;
        this.f6661r.f6671k = false;
        return entries3;
    }

    @Null
    public K findKey(@Null Object obj, boolean z) {
        V[] vArr = this.f6656b;
        if (obj == null) {
            K[] kArr = this.f6655a;
            for (int length = vArr.length - 1; length >= 0; length--) {
                K k = kArr[length];
                if (k != null && vArr[length] == null) {
                    return k;
                }
            }
            return null;
        } else if (z) {
            for (int length2 = vArr.length - 1; length2 >= 0; length2--) {
                if (vArr[length2] == obj) {
                    return this.f6655a[length2];
                }
            }
            return null;
        } else {
            for (int length3 = vArr.length - 1; length3 >= 0; length3--) {
                if (obj.equals(vArr[length3])) {
                    return this.f6655a[length3];
                }
            }
            return null;
        }
    }

    /* renamed from: g */
    public final void m23569g(K k, @Null V v) {
        K[] kArr = this.f6655a;
        int mo23570e = mo23570e(k);
        while (kArr[mo23570e] != null) {
            mo23570e = (mo23570e + 1) & this.f6660q;
        }
        kArr[mo23570e] = k;
        this.f6656b[mo23570e] = v;
    }

    public int hashCode() {
        int i = this.size;
        K[] kArr = this.f6655a;
        V[] vArr = this.f6656b;
        int length = kArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            K k = kArr[i2];
            if (k != null) {
                i += k.hashCode();
                V v = vArr[i2];
                if (v != null) {
                    i += v.hashCode();
                }
            }
        }
        return i;
    }

    /* renamed from: i */
    public final void m23568i(int i) {
        int length = this.f6655a.length;
        this.f6658k = (int) (i * this.f6657d);
        int i2 = i - 1;
        this.f6660q = i2;
        this.f6659p = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f6655a;
        V[] vArr = this.f6656b;
        this.f6655a = (K[]) new Object[i];
        this.f6656b = (V[]) new Object[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    m23569g(k, vArr[i3]);
                }
            }
        }
    }

    @Override // java.lang.Iterable
    public Entries<K, V> iterator() {
        return entries();
    }

    /* renamed from: k */
    public String mo23560k(String str, boolean z) {
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
        K[] kArr = this.f6655a;
        Object[] objArr = this.f6656b;
        int length = kArr.length;
        while (true) {
            i = length - 1;
            if (length <= 0) {
                break;
            }
            K k = kArr[i];
            if (k == null) {
                length = i;
            } else {
                if (k == this) {
                    k = "(this)";
                }
                sb.append(k);
                sb.append(SignatureVisitor.INSTANCEOF);
                Object obj = objArr[i];
                if (obj == this) {
                    obj = "(this)";
                }
                sb.append(obj);
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
                if (k2 == this) {
                    k2 = "(this)";
                }
                sb.append(k2);
                sb.append(SignatureVisitor.INSTANCEOF);
                Object obj2 = objArr[i2];
                if (obj2 == this) {
                    obj2 = "(this)";
                }
                sb.append(obj2);
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
        if (this.f6665v == null) {
            this.f6665v = new Keys(this);
            this.f6666w = new Keys(this);
        }
        Keys keys = this.f6665v;
        if (!keys.f6671k) {
            keys.reset();
            Keys<K> keys2 = this.f6665v;
            keys2.f6671k = true;
            this.f6666w.f6671k = false;
            return keys2;
        }
        this.f6666w.reset();
        Keys<K> keys3 = this.f6666w;
        keys3.f6671k = true;
        this.f6665v.f6671k = false;
        return keys3;
    }

    public void putAll(ObjectMap<? extends K, ? extends V> objectMap) {
        ensureCapacity(objectMap.size);
        K[] kArr = objectMap.f6655a;
        V[] vArr = objectMap.f6656b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                put(k, vArr[i]);
            }
        }
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = ObjectSet.m23562k(i, this.f6657d);
            if (this.f6655a.length > m23562k) {
                m23568i(m23562k);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    public String toString() {
        return mo23560k(", ", true);
    }

    public Values<V> values() {
        if (Collections.allocateIterators) {
            return new Values<>(this);
        }
        if (this.f6663t == null) {
            this.f6663t = new Values(this);
            this.f6664u = new Values(this);
        }
        Values values = this.f6663t;
        if (!values.f6671k) {
            values.reset();
            Values<V> values2 = this.f6663t;
            values2.f6671k = true;
            this.f6664u.f6671k = false;
            return values2;
        }
        this.f6664u.reset();
        Values<V> values3 = this.f6664u;
        values3.f6671k = true;
        this.f6663t.f6671k = false;
        return values3;
    }

    public ObjectMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6657d = f;
            int m23562k = ObjectSet.m23562k(i, f);
            this.f6658k = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6660q = i2;
            this.f6659p = Long.numberOfLeadingZeros(i2);
            this.f6655a = (K[]) new Object[m23562k];
            this.f6656b = (V[]) new Object[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public V get(K k, @Null V v) {
        int mo23571d = mo23571d(k);
        return mo23571d < 0 ? v : this.f6656b[mo23571d];
    }

    @Null
    public V put(K k, @Null V v) {
        int mo23571d = mo23571d(k);
        if (mo23571d >= 0) {
            V[] vArr = this.f6656b;
            V v2 = vArr[mo23571d];
            vArr[mo23571d] = v;
            return v2;
        }
        int i = -(mo23571d + 1);
        K[] kArr = this.f6655a;
        kArr[i] = k;
        this.f6656b[i] = v;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f6658k) {
            m23568i(kArr.length << 1);
            return null;
        }
        return null;
    }

    @Null
    public V remove(K k) {
        int mo23571d = mo23571d(k);
        if (mo23571d < 0) {
            return null;
        }
        K[] kArr = this.f6655a;
        V[] vArr = this.f6656b;
        V v = vArr[mo23571d];
        int i = this.f6660q;
        int i2 = mo23571d + 1;
        while (true) {
            int i3 = i2 & i;
            K k2 = kArr[i3];
            if (k2 != null) {
                int mo23570e = mo23570e(k2);
                if (((i3 - mo23570e) & i) > ((mo23571d - mo23570e) & i)) {
                    kArr[mo23571d] = k2;
                    vArr[mo23571d] = vArr[i3];
                    mo23571d = i3;
                }
                i2 = i3 + 1;
            } else {
                kArr[mo23571d] = null;
                vArr[mo23571d] = null;
                this.size--;
                return v;
            }
        }
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f6655a, (Object) null);
        Arrays.fill(this.f6656b, (Object) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ObjectMap(com.badlogic.gdx.utils.ObjectMap<? extends K, ? extends V> r5) {
        /*
            r4 = this;
            K[] r0 = r5.f6655a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f6657d
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            K[] r0 = r5.f6655a
            K[] r1 = r4.f6655a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            V[] r0 = r5.f6656b
            V[] r1 = r4.f6656b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r5 = r5.size
            r4.size = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.ObjectMap.<init>(com.badlogic.gdx.utils.ObjectMap):void");
    }
}
