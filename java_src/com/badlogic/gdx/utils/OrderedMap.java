package com.badlogic.gdx.utils;

import com.badlogic.gdx.utils.ObjectMap;
import java.util.NoSuchElementException;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class OrderedMap<K, V> extends ObjectMap<K, V> {

    /* renamed from: y */
    public final Array<K> f6683y;

    /* loaded from: classes.dex */
    public static class OrderedMapEntries<K, V> extends ObjectMap.Entries<K, V> {

        /* renamed from: q */
        public Array<K> f6684q;

        @Override // com.badlogic.gdx.utils.ObjectMap.Entries, com.badlogic.gdx.utils.ObjectMap.MapIterator
        public void reset() {
            this.f6670d = -1;
            boolean z = false;
            this.f6669b = 0;
            if (this.f6668a.size > 0) {
                z = true;
            }
            this.hasNext = z;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Entries, java.util.Iterator
        public ObjectMap.Entry next() {
            if (this.hasNext) {
                if (this.f6671k) {
                    int i = this.f6669b;
                    this.f6670d = i;
                    this.f6667p.key = this.f6684q.get(i);
                    ObjectMap.Entry<K, V> entry = this.f6667p;
                    entry.value = this.f6668a.get(entry.key);
                    int i2 = this.f6669b + 1;
                    this.f6669b = i2;
                    this.hasNext = i2 < this.f6668a.size;
                    return this.f6667p;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Entries, com.badlogic.gdx.utils.ObjectMap.MapIterator, java.util.Iterator
        public void remove() {
            if (this.f6670d >= 0) {
                this.f6668a.remove(this.f6667p.key);
                this.f6669b--;
                this.f6670d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public OrderedMapEntries(OrderedMap<K, V> orderedMap) {
            super(orderedMap);
            this.f6684q = orderedMap.f6683y;
        }
    }

    /* loaded from: classes.dex */
    public static class OrderedMapKeys<K> extends ObjectMap.Keys<K> {

        /* renamed from: p */
        public Array<K> f6685p;

        @Override // com.badlogic.gdx.utils.ObjectMap.Keys, com.badlogic.gdx.utils.ObjectMap.MapIterator
        public void reset() {
            this.f6670d = -1;
            boolean z = false;
            this.f6669b = 0;
            if (this.f6668a.size > 0) {
                z = true;
            }
            this.hasNext = z;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Keys
        public Array<K> toArray(Array<K> array) {
            Array<K> array2 = this.f6685p;
            int i = this.f6669b;
            array.addAll((Array<? extends K>) array2, i, array2.size - i);
            this.f6669b = this.f6685p.size;
            this.hasNext = false;
            return array;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Keys, java.util.Iterator
        public K next() {
            if (this.hasNext) {
                if (this.f6671k) {
                    K k = this.f6685p.get(this.f6669b);
                    int i = this.f6669b;
                    this.f6670d = i;
                    boolean z = true;
                    int i2 = i + 1;
                    this.f6669b = i2;
                    if (i2 >= this.f6668a.size) {
                        z = false;
                    }
                    this.hasNext = z;
                    return k;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Keys, com.badlogic.gdx.utils.ObjectMap.MapIterator, java.util.Iterator
        public void remove() {
            int i = this.f6670d;
            if (i >= 0) {
                ((OrderedMap) this.f6668a).removeIndex(i);
                this.f6669b = this.f6670d;
                this.f6670d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public OrderedMapKeys(OrderedMap<K, ?> orderedMap) {
            super(orderedMap);
            this.f6685p = orderedMap.f6683y;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Keys
        public Array<K> toArray() {
            return toArray(new Array<>(true, this.f6685p.size - this.f6669b));
        }
    }

    /* loaded from: classes.dex */
    public static class OrderedMapValues<V> extends ObjectMap.Values<V> {

        /* renamed from: p */
        public Array f6686p;

        @Override // com.badlogic.gdx.utils.ObjectMap.Values, com.badlogic.gdx.utils.ObjectMap.MapIterator
        public void reset() {
            this.f6670d = -1;
            boolean z = false;
            this.f6669b = 0;
            if (this.f6668a.size > 0) {
                z = true;
            }
            this.hasNext = z;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Values
        public Array<V> toArray(Array<V> array) {
            int i = this.f6686p.size;
            array.ensureCapacity(i - this.f6669b);
            Object[] objArr = this.f6686p.items;
            for (int i2 = this.f6669b; i2 < i; i2++) {
                array.add(this.f6668a.get(objArr[i2]));
            }
            this.f6670d = i - 1;
            this.f6669b = i;
            this.hasNext = false;
            return array;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Values, java.util.Iterator
        public V next() {
            if (this.hasNext) {
                if (this.f6671k) {
                    V v = this.f6668a.get(this.f6686p.get(this.f6669b));
                    int i = this.f6669b;
                    this.f6670d = i;
                    boolean z = true;
                    int i2 = i + 1;
                    this.f6669b = i2;
                    if (i2 >= this.f6668a.size) {
                        z = false;
                    }
                    this.hasNext = z;
                    return v;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Values, com.badlogic.gdx.utils.ObjectMap.MapIterator, java.util.Iterator
        public void remove() {
            int i = this.f6670d;
            if (i >= 0) {
                ((OrderedMap) this.f6668a).removeIndex(i);
                this.f6669b = this.f6670d;
                this.f6670d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public OrderedMapValues(OrderedMap<?, V> orderedMap) {
            super(orderedMap);
            this.f6686p = orderedMap.f6683y;
        }

        @Override // com.badlogic.gdx.utils.ObjectMap.Values
        public Array<V> toArray() {
            return toArray(new Array<>(true, this.f6686p.size - this.f6669b));
        }
    }

    public OrderedMap() {
        this.f6683y = new Array<>();
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    public void clear(int i) {
        this.f6683y.clear();
        super.clear(i);
    }

    public Array<K> orderedKeys() {
        return this.f6683y;
    }

    public V removeIndex(int i) {
        return (V) super.remove(this.f6683y.removeIndex(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean alterIndex(int i, K k) {
        if (i >= 0 && i < this.size && !containsKey(k)) {
            super.put(k, super.remove(this.f6683y.get(i)));
            this.f6683y.set(i, k);
            return true;
        }
        return false;
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    public ObjectMap.Entries<K, V> entries() {
        if (Collections.allocateIterators) {
            return new OrderedMapEntries(this);
        }
        if (this.f6661r == null) {
            this.f6661r = new OrderedMapEntries(this);
            this.f6662s = new OrderedMapEntries(this);
        }
        ObjectMap.Entries entries = this.f6661r;
        if (!entries.f6671k) {
            entries.reset();
            ObjectMap.Entries<K, V> entries2 = this.f6661r;
            entries2.f6671k = true;
            this.f6662s.f6671k = false;
            return entries2;
        }
        this.f6662s.reset();
        ObjectMap.Entries<K, V> entries3 = this.f6662s;
        entries3.f6671k = true;
        this.f6661r.f6671k = false;
        return entries3;
    }

    @Override // com.badlogic.gdx.utils.ObjectMap, java.lang.Iterable
    public ObjectMap.Entries<K, V> iterator() {
        return entries();
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    /* renamed from: k */
    public String mo23560k(String str, boolean z) {
        K k;
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
        Array<K> array = this.f6683y;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            K k2 = array.get(i2);
            if (i2 > 0) {
                sb.append(str);
            }
            Object obj = "(this)";
            if (k2 == this) {
                k = "(this)";
            } else {
                k = k2;
            }
            sb.append(k);
            sb.append(SignatureVisitor.INSTANCEOF);
            V v = get(k2);
            if (v != this) {
                obj = v;
            }
            sb.append(obj);
        }
        if (z) {
            sb.append('}');
        }
        return sb.toString();
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    public ObjectMap.Keys<K> keys() {
        if (Collections.allocateIterators) {
            return new OrderedMapKeys(this);
        }
        if (this.f6665v == null) {
            this.f6665v = new OrderedMapKeys(this);
            this.f6666w = new OrderedMapKeys(this);
        }
        ObjectMap.Keys keys = this.f6665v;
        if (!keys.f6671k) {
            keys.reset();
            ObjectMap.Keys<K> keys2 = this.f6665v;
            keys2.f6671k = true;
            this.f6666w.f6671k = false;
            return keys2;
        }
        this.f6666w.reset();
        ObjectMap.Keys<K> keys3 = this.f6666w;
        keys3.f6671k = true;
        this.f6665v.f6671k = false;
        return keys3;
    }

    public <T extends K> void putAll(OrderedMap<T, ? extends V> orderedMap) {
        ensureCapacity(orderedMap.size);
        Array<T> array = orderedMap.f6683y;
        T[] tArr = array.items;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            T t = tArr[i2];
            put(t, orderedMap.get(t));
        }
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    public V remove(K k) {
        this.f6683y.removeValue(k, false);
        return (V) super.remove(k);
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    public ObjectMap.Values<V> values() {
        if (Collections.allocateIterators) {
            return new OrderedMapValues(this);
        }
        if (this.f6663t == null) {
            this.f6663t = new OrderedMapValues(this);
            this.f6664u = new OrderedMapValues(this);
        }
        ObjectMap.Values values = this.f6663t;
        if (!values.f6671k) {
            values.reset();
            ObjectMap.Values<V> values2 = this.f6663t;
            values2.f6671k = true;
            this.f6664u.f6671k = false;
            return values2;
        }
        this.f6664u.reset();
        ObjectMap.Values<V> values3 = this.f6664u;
        values3.f6671k = true;
        this.f6663t.f6671k = false;
        return values3;
    }

    public OrderedMap(int i) {
        super(i);
        this.f6683y = new Array<>(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean alter(K k, K k2) {
        int indexOf;
        if (containsKey(k2) || (indexOf = this.f6683y.indexOf(k, false)) == -1) {
            return false;
        }
        super.put(k2, super.remove(k));
        this.f6683y.set(indexOf, k2);
        return true;
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    public void clear() {
        this.f6683y.clear();
        super.clear();
    }

    @Override // com.badlogic.gdx.utils.ObjectMap
    public V put(K k, V v) {
        int mo23571d = mo23571d(k);
        if (mo23571d >= 0) {
            V[] vArr = this.f6656b;
            V v2 = vArr[mo23571d];
            vArr[mo23571d] = v;
            return v2;
        }
        int i = -(mo23571d + 1);
        this.f6655a[i] = k;
        this.f6656b[i] = v;
        this.f6683y.add(k);
        int i2 = this.size + 1;
        this.size = i2;
        if (i2 >= this.f6658k) {
            m23568i(this.f6655a.length << 1);
            return null;
        }
        return null;
    }

    public OrderedMap(int i, float f) {
        super(i, f);
        this.f6683y = new Array<>(i);
    }

    public OrderedMap(OrderedMap<? extends K, ? extends V> orderedMap) {
        super(orderedMap);
        this.f6683y = new Array<>(orderedMap.f6683y);
    }
}
