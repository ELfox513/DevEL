package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.reflect.ArrayReflection;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class ArrayMap<K, V> implements Iterable<ObjectMap.Entry<K, V>> {

    /* renamed from: a */
    public transient Entries f6402a;

    /* renamed from: b */
    public transient Entries f6403b;

    /* renamed from: d */
    public transient Values f6404d;

    /* renamed from: k */
    public transient Values f6405k;
    public K[] keys;
    public boolean ordered;

    /* renamed from: p */
    public transient Keys f6406p;

    /* renamed from: q */
    public transient Keys f6407q;
    public int size;
    public V[] values;

    /* loaded from: classes.dex */
    public static class Entries<K, V> implements Iterable<ObjectMap.Entry<K, V>>, Iterator<ObjectMap.Entry<K, V>> {

        /* renamed from: a */
        public final ArrayMap<K, V> f6408a;

        /* renamed from: d */
        public int f6410d;

        /* renamed from: b */
        public ObjectMap.Entry<K, V> f6409b = new ObjectMap.Entry<>();

        /* renamed from: k */
        public boolean f6411k = true;

        @Override // java.lang.Iterable
        public Iterator<ObjectMap.Entry<K, V>> iterator() {
            return this;
        }

        public void reset() {
            this.f6410d = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6411k) {
                if (this.f6410d < this.f6408a.size) {
                    return true;
                }
                return false;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public ObjectMap.Entry<K, V> next() {
            int i = this.f6410d;
            ArrayMap<K, V> arrayMap = this.f6408a;
            if (i < arrayMap.size) {
                if (this.f6411k) {
                    ObjectMap.Entry<K, V> entry = this.f6409b;
                    entry.key = arrayMap.keys[i];
                    V[] vArr = arrayMap.values;
                    this.f6410d = i + 1;
                    entry.value = vArr[i];
                    return entry;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException(String.valueOf(this.f6410d));
        }

        @Override // java.util.Iterator
        public void remove() {
            int i = this.f6410d - 1;
            this.f6410d = i;
            this.f6408a.removeIndex(i);
        }

        public Entries(ArrayMap<K, V> arrayMap) {
            this.f6408a = arrayMap;
        }
    }

    /* loaded from: classes.dex */
    public static class Keys<K> implements Iterable<K>, Iterator<K> {

        /* renamed from: a */
        public final ArrayMap<K, Object> f6412a;

        /* renamed from: b */
        public int f6413b;

        /* renamed from: d */
        public boolean f6414d = true;

        @Override // java.lang.Iterable
        public Iterator<K> iterator() {
            return this;
        }

        public void reset() {
            this.f6413b = 0;
        }

        public Array<K> toArray() {
            ArrayMap<K, Object> arrayMap = this.f6412a;
            K[] kArr = arrayMap.keys;
            int i = this.f6413b;
            return new Array<>(true, kArr, i, arrayMap.size - i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6414d) {
                if (this.f6413b < this.f6412a.size) {
                    return true;
                }
                return false;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public K next() {
            int i = this.f6413b;
            ArrayMap<K, Object> arrayMap = this.f6412a;
            if (i < arrayMap.size) {
                if (this.f6414d) {
                    K[] kArr = arrayMap.keys;
                    this.f6413b = i + 1;
                    return kArr[i];
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException(String.valueOf(this.f6413b));
        }

        @Override // java.util.Iterator
        public void remove() {
            int i = this.f6413b - 1;
            this.f6413b = i;
            this.f6412a.removeIndex(i);
        }

        public Array<K> toArray(Array array) {
            ArrayMap<K, Object> arrayMap = this.f6412a;
            K[] kArr = arrayMap.keys;
            int i = this.f6413b;
            array.addAll(kArr, i, arrayMap.size - i);
            return array;
        }

        public Keys(ArrayMap<K, Object> arrayMap) {
            this.f6412a = arrayMap;
        }
    }

    /* loaded from: classes.dex */
    public static class Values<V> implements Iterable<V>, Iterator<V> {

        /* renamed from: a */
        public final ArrayMap<Object, V> f6415a;

        /* renamed from: b */
        public int f6416b;

        /* renamed from: d */
        public boolean f6417d = true;

        @Override // java.lang.Iterable
        public Iterator<V> iterator() {
            return this;
        }

        public void reset() {
            this.f6416b = 0;
        }

        public Array<V> toArray() {
            ArrayMap<Object, V> arrayMap = this.f6415a;
            V[] vArr = arrayMap.values;
            int i = this.f6416b;
            return new Array<>(true, vArr, i, arrayMap.size - i);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6417d) {
                if (this.f6416b < this.f6415a.size) {
                    return true;
                }
                return false;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public V next() {
            int i = this.f6416b;
            ArrayMap<Object, V> arrayMap = this.f6415a;
            if (i < arrayMap.size) {
                if (this.f6417d) {
                    V[] vArr = arrayMap.values;
                    this.f6416b = i + 1;
                    return vArr[i];
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException(String.valueOf(this.f6416b));
        }

        @Override // java.util.Iterator
        public void remove() {
            int i = this.f6416b - 1;
            this.f6416b = i;
            this.f6415a.removeIndex(i);
        }

        public Array<V> toArray(Array array) {
            ArrayMap<Object, V> arrayMap = this.f6415a;
            V[] vArr = arrayMap.values;
            int i = this.f6416b;
            array.addAll(vArr, i, arrayMap.size - i);
            return array;
        }

        public Values(ArrayMap<Object, V> arrayMap) {
            this.f6415a = arrayMap;
        }
    }

    public ArrayMap() {
        this(true, 16);
    }

    public void clear(int i) {
        if (this.keys.length <= i) {
            clear();
            return;
        }
        this.size = 0;
        m23691d(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ArrayMap)) {
            return false;
        }
        ArrayMap arrayMap = (ArrayMap) obj;
        int i = arrayMap.size;
        int i2 = this.size;
        if (i != i2) {
            return false;
        }
        K[] kArr = this.keys;
        V[] vArr = this.values;
        for (int i3 = 0; i3 < i2; i3++) {
            K k = kArr[i3];
            V v = vArr[i3];
            if (v == null) {
                if (arrayMap.get(k, ObjectMap.f6654x) != null) {
                    return false;
                }
            } else if (!v.equals(arrayMap.get(k))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equalsIdentity(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ArrayMap)) {
            return false;
        }
        ArrayMap arrayMap = (ArrayMap) obj;
        int i = arrayMap.size;
        int i2 = this.size;
        if (i != i2) {
            return false;
        }
        K[] kArr = this.keys;
        V[] vArr = this.values;
        for (int i3 = 0; i3 < i2; i3++) {
            if (vArr[i3] != arrayMap.get(kArr[i3], ObjectMap.f6654x)) {
                return false;
            }
        }
        return true;
    }

    @Null
    public V get(K k) {
        return get(k, null);
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.lang.Iterable
    public Iterator<ObjectMap.Entry<K, V>> iterator() {
        return entries();
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public K peekKey() {
        return this.keys[this.size - 1];
    }

    public V peekValue() {
        return this.values[this.size - 1];
    }

    public int put(K k, V v) {
        int indexOfKey = indexOfKey(k);
        if (indexOfKey == -1) {
            int i = this.size;
            if (i == this.keys.length) {
                m23691d(Math.max(8, (int) (i * 1.75f)));
            }
            indexOfKey = this.size;
            this.size = indexOfKey + 1;
        }
        this.keys[indexOfKey] = k;
        this.values[indexOfKey] = v;
        return indexOfKey;
    }

    public void putAll(ArrayMap<? extends K, ? extends V> arrayMap) {
        putAll(arrayMap, 0, arrayMap.size);
    }

    public ArrayMap(int i) {
        this(true, i);
    }

    public boolean containsKey(K k) {
        K[] kArr = this.keys;
        int i = this.size - 1;
        if (k == null) {
            while (i >= 0) {
                int i2 = i - 1;
                if (kArr[i] == k) {
                    return true;
                }
                i = i2;
            }
            return false;
        }
        while (i >= 0) {
            int i3 = i - 1;
            if (k.equals(kArr[i])) {
                return true;
            }
            i = i3;
        }
        return false;
    }

    public boolean containsValue(V v, boolean z) {
        V[] vArr = this.values;
        int i = this.size - 1;
        if (!z && v != null) {
            while (i >= 0) {
                int i2 = i - 1;
                if (v.equals(vArr[i])) {
                    return true;
                }
                i = i2;
            }
            return false;
        }
        while (i >= 0) {
            int i3 = i - 1;
            if (vArr[i] == v) {
                return true;
            }
            i = i3;
        }
        return false;
    }

    /* renamed from: d */
    public void m23691d(int i) {
        K[] kArr = (K[]) ((Object[]) ArrayReflection.newInstance(this.keys.getClass().getComponentType(), i));
        System.arraycopy(this.keys, 0, kArr, 0, Math.min(this.size, kArr.length));
        this.keys = kArr;
        V[] vArr = (V[]) ((Object[]) ArrayReflection.newInstance(this.values.getClass().getComponentType(), i));
        System.arraycopy(this.values, 0, vArr, 0, Math.min(this.size, vArr.length));
        this.values = vArr;
    }

    public void ensureCapacity(int i) {
        if (i >= 0) {
            int i2 = this.size + i;
            if (i2 > this.keys.length) {
                m23691d(Math.max(Math.max(8, i2), (int) (this.size * 1.75f)));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("additionalCapacity must be >= 0: " + i);
    }

    public Entries<K, V> entries() {
        if (Collections.allocateIterators) {
            return new Entries<>(this);
        }
        if (this.f6402a == null) {
            this.f6402a = new Entries(this);
            this.f6403b = new Entries(this);
        }
        Entries<K, V> entries = this.f6402a;
        if (!entries.f6411k) {
            entries.f6410d = 0;
            entries.f6411k = true;
            this.f6403b.f6411k = false;
            return entries;
        }
        Entries<K, V> entries2 = this.f6403b;
        entries2.f6410d = 0;
        entries2.f6411k = true;
        entries.f6411k = false;
        return entries2;
    }

    public K firstKey() {
        if (this.size != 0) {
            return this.keys[0];
        }
        throw new IllegalStateException("Map is empty.");
    }

    public V firstValue() {
        if (this.size != 0) {
            return this.values[0];
        }
        throw new IllegalStateException("Map is empty.");
    }

    @Null
    public V get(K k, @Null V v) {
        K[] kArr = this.keys;
        int i = this.size - 1;
        if (k == null) {
            while (i >= 0) {
                if (kArr[i] == k) {
                    return this.values[i];
                }
                i--;
            }
        } else {
            while (i >= 0) {
                if (k.equals(kArr[i])) {
                    return this.values[i];
                }
                i--;
            }
        }
        return v;
    }

    @Null
    public K getKey(V v, boolean z) {
        V[] vArr = this.values;
        int i = this.size - 1;
        if (!z && v != null) {
            while (i >= 0) {
                if (v.equals(vArr[i])) {
                    return this.keys[i];
                }
                i--;
            }
            return null;
        }
        while (i >= 0) {
            if (vArr[i] == v) {
                return this.keys[i];
            }
            i--;
        }
        return null;
    }

    public K getKeyAt(int i) {
        if (i < this.size) {
            return this.keys[i];
        }
        throw new IndexOutOfBoundsException(String.valueOf(i));
    }

    public V getValueAt(int i) {
        if (i < this.size) {
            return this.values[i];
        }
        throw new IndexOutOfBoundsException(String.valueOf(i));
    }

    public int hashCode() {
        K[] kArr = this.keys;
        V[] vArr = this.values;
        int i = this.size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            K k = kArr[i3];
            V v = vArr[i3];
            if (k != null) {
                i2 += k.hashCode() * 31;
            }
            if (v != null) {
                i2 += v.hashCode();
            }
        }
        return i2;
    }

    public int indexOfKey(K k) {
        K[] kArr = this.keys;
        int i = 0;
        if (k == null) {
            int i2 = this.size;
            while (i < i2) {
                if (kArr[i] == k) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int i3 = this.size;
        while (i < i3) {
            if (k.equals(kArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int indexOfValue(V v, boolean z) {
        V[] vArr = this.values;
        int i = 0;
        if (!z && v != null) {
            int i2 = this.size;
            while (i < i2) {
                if (v.equals(vArr[i])) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int i3 = this.size;
        while (i < i3) {
            if (vArr[i] == v) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public void insert(int i, K k, V v) {
        int i2 = this.size;
        if (i <= i2) {
            if (i2 == this.keys.length) {
                m23691d(Math.max(8, (int) (i2 * 1.75f)));
            }
            if (this.ordered) {
                K[] kArr = this.keys;
                int i3 = i + 1;
                System.arraycopy(kArr, i, kArr, i3, this.size - i);
                V[] vArr = this.values;
                System.arraycopy(vArr, i, vArr, i3, this.size - i);
            } else {
                K[] kArr2 = this.keys;
                int i4 = this.size;
                kArr2[i4] = kArr2[i];
                V[] vArr2 = this.values;
                vArr2[i4] = vArr2[i];
            }
            this.size++;
            this.keys[i] = k;
            this.values[i] = v;
            return;
        }
        throw new IndexOutOfBoundsException(String.valueOf(i));
    }

    public Keys<K> keys() {
        if (Collections.allocateIterators) {
            return new Keys<>(this);
        }
        if (this.f6406p == null) {
            this.f6406p = new Keys(this);
            this.f6407q = new Keys(this);
        }
        Keys<K> keys = this.f6406p;
        if (!keys.f6414d) {
            keys.f6413b = 0;
            keys.f6414d = true;
            this.f6407q.f6414d = false;
            return keys;
        }
        Keys<K> keys2 = this.f6407q;
        keys2.f6413b = 0;
        keys2.f6414d = true;
        keys.f6414d = false;
        return keys2;
    }

    public void putAll(ArrayMap<? extends K, ? extends V> arrayMap, int i, int i2) {
        if (i + i2 <= arrayMap.size) {
            int i3 = (this.size + i2) - i;
            if (i3 >= this.keys.length) {
                m23691d(Math.max(8, (int) (i3 * 1.75f)));
            }
            System.arraycopy(arrayMap.keys, i, this.keys, this.size, i2);
            System.arraycopy(arrayMap.values, i, this.values, this.size, i2);
            this.size += i2;
            return;
        }
        throw new IllegalArgumentException("offset + length must be <= size: " + i + " + " + i2 + " <= " + arrayMap.size);
    }

    public void removeIndex(int i) {
        int i2 = this.size;
        if (i < i2) {
            K[] kArr = this.keys;
            int i3 = i2 - 1;
            this.size = i3;
            if (this.ordered) {
                int i4 = i + 1;
                System.arraycopy(kArr, i4, kArr, i, i3 - i);
                V[] vArr = this.values;
                System.arraycopy(vArr, i4, vArr, i, this.size - i);
            } else {
                kArr[i] = kArr[i3];
                V[] vArr2 = this.values;
                vArr2[i] = vArr2[i3];
            }
            int i5 = this.size;
            kArr[i5] = null;
            this.values[i5] = null;
            return;
        }
        throw new IndexOutOfBoundsException(String.valueOf(i));
    }

    @Null
    public V removeKey(K k) {
        K[] kArr = this.keys;
        int i = 0;
        if (k == null) {
            int i2 = this.size;
            while (i < i2) {
                if (kArr[i] == k) {
                    V v = this.values[i];
                    removeIndex(i);
                    return v;
                }
                i++;
            }
            return null;
        }
        int i3 = this.size;
        while (i < i3) {
            if (k.equals(kArr[i])) {
                V v2 = this.values[i];
                removeIndex(i);
                return v2;
            }
            i++;
        }
        return null;
    }

    public boolean removeValue(V v, boolean z) {
        V[] vArr = this.values;
        if (!z && v != null) {
            int i = this.size;
            for (int i2 = 0; i2 < i; i2++) {
                if (v.equals(vArr[i2])) {
                    removeIndex(i2);
                    return true;
                }
            }
        } else {
            int i3 = this.size;
            for (int i4 = 0; i4 < i3; i4++) {
                if (vArr[i4] == v) {
                    removeIndex(i4);
                    return true;
                }
            }
        }
        return false;
    }

    public void reverse() {
        int i = this.size;
        int i2 = i - 1;
        int i3 = i / 2;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 - i4;
            K[] kArr = this.keys;
            K k = kArr[i4];
            kArr[i4] = kArr[i5];
            kArr[i5] = k;
            V[] vArr = this.values;
            V v = vArr[i4];
            vArr[i4] = vArr[i5];
            vArr[i5] = v;
        }
    }

    public void setKey(int i, K k) {
        if (i < this.size) {
            this.keys[i] = k;
            return;
        }
        throw new IndexOutOfBoundsException(String.valueOf(i));
    }

    public void setValue(int i, V v) {
        if (i < this.size) {
            this.values[i] = v;
            return;
        }
        throw new IndexOutOfBoundsException(String.valueOf(i));
    }

    public void shrink() {
        int length = this.keys.length;
        int i = this.size;
        if (length == i) {
            return;
        }
        m23691d(i);
    }

    public void shuffle() {
        for (int i = this.size - 1; i >= 0; i--) {
            int random = MathUtils.random(i);
            K[] kArr = this.keys;
            K k = kArr[i];
            kArr[i] = kArr[random];
            kArr[random] = k;
            V[] vArr = this.values;
            V v = vArr[i];
            vArr[i] = vArr[random];
            vArr[random] = v;
        }
    }

    public String toString() {
        if (this.size == 0) {
            return "{}";
        }
        K[] kArr = this.keys;
        V[] vArr = this.values;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append('{');
        stringBuilder.append(kArr[0]);
        stringBuilder.append(SignatureVisitor.INSTANCEOF);
        stringBuilder.append(vArr[0]);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(", ");
            stringBuilder.append(kArr[i]);
            stringBuilder.append(SignatureVisitor.INSTANCEOF);
            stringBuilder.append(vArr[i]);
        }
        stringBuilder.append('}');
        return stringBuilder.toString();
    }

    public void truncate(int i) {
        if (this.size <= i) {
            return;
        }
        for (int i2 = i; i2 < this.size; i2++) {
            this.keys[i2] = null;
            this.values[i2] = null;
        }
        this.size = i;
    }

    public Values<V> values() {
        if (Collections.allocateIterators) {
            return new Values<>(this);
        }
        if (this.f6404d == null) {
            this.f6404d = new Values(this);
            this.f6405k = new Values(this);
        }
        Values<V> values = this.f6404d;
        if (!values.f6417d) {
            values.f6416b = 0;
            values.f6417d = true;
            this.f6405k.f6417d = false;
            return values;
        }
        Values<V> values2 = this.f6405k;
        values2.f6416b = 0;
        values2.f6417d = true;
        values.f6417d = false;
        return values2;
    }

    public ArrayMap(boolean z, int i) {
        this.ordered = z;
        this.keys = (K[]) new Object[i];
        this.values = (V[]) new Object[i];
    }

    public void clear() {
        Arrays.fill(this.keys, 0, this.size, (Object) null);
        Arrays.fill(this.values, 0, this.size, (Object) null);
        this.size = 0;
    }

    public int put(K k, V v, int i) {
        int indexOfKey = indexOfKey(k);
        if (indexOfKey != -1) {
            removeIndex(indexOfKey);
        } else {
            int i2 = this.size;
            if (i2 == this.keys.length) {
                m23691d(Math.max(8, (int) (i2 * 1.75f)));
            }
        }
        K[] kArr = this.keys;
        int i3 = i + 1;
        System.arraycopy(kArr, i, kArr, i3, this.size - i);
        V[] vArr = this.values;
        System.arraycopy(vArr, i, vArr, i3, this.size - i);
        this.keys[i] = k;
        this.values[i] = v;
        this.size++;
        return i;
    }

    public ArrayMap(boolean z, int i, Class cls, Class cls2) {
        this.ordered = z;
        this.keys = (K[]) ((Object[]) ArrayReflection.newInstance(cls, i));
        this.values = (V[]) ((Object[]) ArrayReflection.newInstance(cls2, i));
    }

    public ArrayMap(Class cls, Class cls2) {
        this(false, 16, cls, cls2);
    }

    public ArrayMap(ArrayMap arrayMap) {
        this(arrayMap.ordered, arrayMap.size, arrayMap.keys.getClass().getComponentType(), arrayMap.values.getClass().getComponentType());
        int i = arrayMap.size;
        this.size = i;
        System.arraycopy(arrayMap.keys, 0, this.keys, 0, i);
        System.arraycopy(arrayMap.values, 0, this.values, 0, this.size);
    }
}
