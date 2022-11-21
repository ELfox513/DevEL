package com.esotericsoftware.kryo.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class ObjectMap<K, V> implements Iterable<Entry<K, V>> {

    /* renamed from: p */
    public static final Object f7439p = new Object();

    /* renamed from: a */
    public K[] f7440a;

    /* renamed from: b */
    public V[] f7441b;

    /* renamed from: d */
    public float f7442d;

    /* renamed from: k */
    public int f7443k;
    public int mask;
    public int shift;
    public int size;

    /* loaded from: classes.dex */
    public static class Entries<K, V> extends MapIterator<K, V, Entry<K, V>> {

        /* renamed from: p */
        public Entry<K, V> f7444p;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.lang.Iterable
        public Entries<K, V> iterator() {
            return this;
        }

        @Override // com.esotericsoftware.kryo.util.ObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.ObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public Entry<K, V> next() {
            if (this.hasNext) {
                ObjectMap<K, V> objectMap = this.f7445a;
                K[] kArr = objectMap.f7440a;
                Entry<K, V> entry = this.f7444p;
                int i = this.f7446b;
                entry.key = kArr[i];
                entry.value = objectMap.f7441b[i];
                this.f7447d = i;
                m23161e();
                return this.f7444p;
            }
            throw new NoSuchElementException();
        }

        public Entries(ObjectMap<K, V> objectMap) {
            super(objectMap);
            this.f7444p = new Entry<>();
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

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.lang.Iterable
        public Keys<K> iterator() {
            return this;
        }

        @Override // com.esotericsoftware.kryo.util.ObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.ObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public ArrayList<K> toList() {
            return (ArrayList) toList(new ArrayList(this.f7445a.size));
        }

        @Override // java.util.Iterator
        public K next() {
            if (this.hasNext) {
                K[] kArr = this.f7445a.f7440a;
                int i = this.f7446b;
                K k = kArr[i];
                this.f7447d = i;
                m23161e();
                return k;
            }
            throw new NoSuchElementException();
        }

        public <T extends List<K>> T toList(T t) {
            while (this.hasNext) {
                t.add(next());
            }
            return t;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class MapIterator<K, V, I> implements Iterable<I>, Iterator<I> {

        /* renamed from: a */
        public final ObjectMap<K, V> f7445a;

        /* renamed from: b */
        public int f7446b;

        /* renamed from: d */
        public int f7447d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f7448k = true;

        public void reset() {
            this.f7447d = -1;
            this.f7446b = -1;
            m23161e();
        }

        /* renamed from: e */
        public void m23161e() {
            int i;
            K[] kArr = this.f7445a.f7440a;
            int length = kArr.length;
            do {
                i = this.f7446b + 1;
                this.f7446b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (kArr[i] == null);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f7447d;
            if (i >= 0) {
                ObjectMap<K, V> objectMap = this.f7445a;
                K[] kArr = objectMap.f7440a;
                V[] vArr = objectMap.f7441b;
                int i2 = objectMap.mask;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int place = this.f7445a.place(k);
                    if (((i4 - place) & i2) > ((i - place) & i2)) {
                        kArr[i] = k;
                        vArr[i] = vArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                vArr[i] = null;
                ObjectMap<K, V> objectMap2 = this.f7445a;
                objectMap2.size--;
                if (i != this.f7447d) {
                    this.f7446b--;
                }
                this.f7447d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(ObjectMap<K, V> objectMap) {
            this.f7445a = objectMap;
            reset();
        }
    }

    /* loaded from: classes.dex */
    public static class Values<V> extends MapIterator<Object, V, V> {
        public Values(ObjectMap<?, V> objectMap) {
            super(objectMap);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.hasNext;
        }

        @Override // java.lang.Iterable
        public Values<V> iterator() {
            return this;
        }

        @Override // com.esotericsoftware.kryo.util.ObjectMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.ObjectMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public ArrayList<V> toList() {
            return (ArrayList) toList(new ArrayList(this.f7445a.size));
        }

        @Override // java.util.Iterator
        @Null
        public V next() {
            if (this.hasNext) {
                V[] vArr = this.f7445a.f7441b;
                int i = this.f7446b;
                V v = vArr[i];
                this.f7447d = i;
                m23161e();
                return v;
            }
            throw new NoSuchElementException();
        }

        public <T extends List<V>> T toList(T t) {
            while (this.hasNext) {
                t.add(next());
            }
            return t;
        }
    }

    public ObjectMap() {
        this(51, 0.8f);
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
        int tableSize = tableSize(i, this.f7442d);
        if (this.f7440a.length <= tableSize) {
            clear();
            return;
        }
        this.size = 0;
        m23163g(tableSize);
    }

    public boolean containsKey(K k) {
        return mo23165d(k) >= 0;
    }

    public Entries<K, V> entries() {
        return new Entries<>(this);
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
        K[] kArr = this.f7440a;
        V[] vArr = this.f7441b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null) {
                V v = vArr[i];
                if (v == null) {
                    if (objectMap.get(k, f7439p) != null) {
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
        K[] kArr = this.f7440a;
        V[] vArr = this.f7441b;
        int length = kArr.length;
        for (int i = 0; i < length; i++) {
            K k = kArr[i];
            if (k != null && vArr[i] != objectMap.get(k, f7439p)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Null
    public <T extends K> V get(T t) {
        int place = place(t);
        while (true) {
            K k = this.f7440a[place];
            if (k == null) {
                return null;
            }
            if (k.equals(t)) {
                return this.f7441b[place];
            }
            place = (place + 1) & this.mask;
        }
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public Keys<K> keys() {
        return new Keys<>(this);
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public int place(K k) {
        return (int) ((k.hashCode() * (-7046029254386353131L)) >>> this.shift);
    }

    public String toString(String str) {
        return m23162i(str, false);
    }

    public Values<V> values() {
        return new Values<>(this);
    }

    public ObjectMap(int i) {
        this(i, 0.8f);
    }

    public static int tableSize(int i, float f) {
        if (i >= 0) {
            int nextPowerOfTwo = nextPowerOfTwo(Math.max(2, (int) Math.ceil(i / f)));
            if (nextPowerOfTwo <= 1073741824) {
                return nextPowerOfTwo;
            }
            throw new IllegalArgumentException("The required capacity is too large: " + i);
        }
        throw new IllegalArgumentException("capacity must be >= 0: " + i);
    }

    public boolean containsValue(@Null Object obj, boolean z) {
        V[] vArr = this.f7441b;
        if (obj == null) {
            K[] kArr = this.f7440a;
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
    public int mo23165d(K k) {
        if (k != null) {
            K[] kArr = this.f7440a;
            int place = place(k);
            while (true) {
                K k2 = kArr[place];
                if (k2 == null) {
                    return -(place + 1);
                }
                if (k2.equals(k)) {
                    return place;
                }
                place = (place + 1) & this.mask;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    /* renamed from: e */
    public final void m23164e(K k, @Null V v) {
        K[] kArr = this.f7440a;
        int place = place(k);
        while (kArr[place] != null) {
            place = (place + 1) & this.mask;
        }
        kArr[place] = k;
        this.f7441b[place] = v;
    }

    public void ensureCapacity(int i) {
        int tableSize = tableSize(this.size + i, this.f7442d);
        if (this.f7440a.length < tableSize) {
            m23163g(tableSize);
        }
    }

    @Null
    public K findKey(@Null Object obj, boolean z) {
        V[] vArr = this.f7441b;
        if (obj == null) {
            K[] kArr = this.f7440a;
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
                    return this.f7440a[length2];
                }
            }
            return null;
        } else {
            for (int length3 = vArr.length - 1; length3 >= 0; length3--) {
                if (obj.equals(vArr[length3])) {
                    return this.f7440a[length3];
                }
            }
            return null;
        }
    }

    /* renamed from: g */
    public final void m23163g(int i) {
        int length = this.f7440a.length;
        this.f7443k = (int) (i * this.f7442d);
        int i2 = i - 1;
        this.mask = i2;
        this.shift = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f7440a;
        V[] vArr = this.f7441b;
        this.f7440a = (K[]) new Object[i];
        this.f7441b = (V[]) new Object[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    m23164e(k, vArr[i3]);
                }
            }
        }
    }

    public int hashCode() {
        int i = this.size;
        K[] kArr = this.f7440a;
        V[] vArr = this.f7441b;
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
    public final String m23162i(String str, boolean z) {
        int i;
        if (this.size == 0) {
            if (z) {
                return "{}";
            }
            return "";
        }
        StringBuilder sb = new StringBuilder(32);
        if (z) {
            sb.append('{');
        }
        K[] kArr = this.f7440a;
        Object[] objArr = this.f7441b;
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

    @Override // java.lang.Iterable
    public Entries<K, V> iterator() {
        return entries();
    }

    public void putAll(ObjectMap<? extends K, ? extends V> objectMap) {
        ensureCapacity(objectMap.size);
        K[] kArr = objectMap.f7440a;
        V[] vArr = objectMap.f7441b;
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
            int tableSize = tableSize(i, this.f7442d);
            if (this.f7440a.length > tableSize) {
                m23163g(tableSize);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    public String toString() {
        return m23162i(", ", true);
    }

    public ObjectMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f7442d = f;
            int tableSize = tableSize(i, f);
            this.f7443k = (int) (tableSize * f);
            int i2 = tableSize - 1;
            this.mask = i2;
            this.shift = Long.numberOfLeadingZeros(i2);
            this.f7440a = (K[]) new Object[tableSize];
            this.f7441b = (V[]) new Object[tableSize];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    @Null
    public V put(K k, @Null V v) {
        int mo23165d = mo23165d(k);
        if (mo23165d >= 0) {
            V[] vArr = this.f7441b;
            V v2 = vArr[mo23165d];
            vArr[mo23165d] = v;
            return v2;
        }
        int i = -(mo23165d + 1);
        K[] kArr = this.f7440a;
        kArr[i] = k;
        this.f7441b[i] = v;
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f7443k) {
            m23163g(kArr.length << 1);
            return null;
        }
        return null;
    }

    @Null
    public V remove(K k) {
        int mo23165d = mo23165d(k);
        if (mo23165d < 0) {
            return null;
        }
        K[] kArr = this.f7440a;
        V[] vArr = this.f7441b;
        V v = vArr[mo23165d];
        int i = this.mask;
        int i2 = mo23165d + 1;
        while (true) {
            int i3 = i2 & i;
            K k2 = kArr[i3];
            if (k2 != null) {
                int place = place(k2);
                if (((i3 - place) & i) > ((mo23165d - place) & i)) {
                    kArr[mo23165d] = k2;
                    vArr[mo23165d] = vArr[i3];
                    mo23165d = i3;
                }
                i2 = i3 + 1;
            } else {
                kArr[mo23165d] = null;
                vArr[mo23165d] = null;
                this.size--;
                return v;
            }
        }
    }

    public V get(K k, @Null V v) {
        int place = place(k);
        while (true) {
            K k2 = this.f7440a[place];
            if (k2 == null) {
                return v;
            }
            if (k2.equals(k)) {
                return this.f7441b[place];
            }
            place = (place + 1) & this.mask;
        }
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f7440a, (Object) null);
        Arrays.fill(this.f7441b, (Object) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ObjectMap(com.esotericsoftware.kryo.util.ObjectMap<? extends K, ? extends V> r5) {
        /*
            r4 = this;
            K[] r0 = r5.f7440a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f7442d
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            K[] r0 = r5.f7440a
            K[] r1 = r4.f7440a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            V[] r0 = r5.f7441b
            V[] r1 = r4.f7441b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r5 = r5.size
            r4.size = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.util.ObjectMap.<init>(com.esotericsoftware.kryo.util.ObjectMap):void");
    }
}
