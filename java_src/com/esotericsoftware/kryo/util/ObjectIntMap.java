package com.esotericsoftware.kryo.util;

import com.esotericsoftware.kryo.KryoException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class ObjectIntMap<K> implements Iterable<Entry<K>> {

    /* renamed from: a */
    public K[] f7430a;

    /* renamed from: b */
    public int[] f7431b;

    /* renamed from: d */
    public float f7432d;

    /* renamed from: k */
    public int f7433k;
    public int mask;
    public int shift;
    public int size;

    /* loaded from: classes.dex */
    public static class Entries<K> extends MapIterator<K> implements Iterable<Entry<K>>, Iterator<Entry<K>> {

        /* renamed from: p */
        public Entry<K> f7434p;

        @Override // java.lang.Iterable
        public Entries<K> iterator() {
            return this;
        }

        @Override // com.esotericsoftware.kryo.util.ObjectIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.ObjectIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f7438k) {
                return this.hasNext;
            }
            throw new KryoException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public Entry<K> next() {
            if (this.hasNext) {
                if (this.f7438k) {
                    ObjectIntMap<K> objectIntMap = this.f7435a;
                    K[] kArr = objectIntMap.f7430a;
                    Entry<K> entry = this.f7434p;
                    int i = this.f7436b;
                    entry.key = kArr[i];
                    entry.value = objectIntMap.f7431b[i];
                    this.f7437d = i;
                    m23166e();
                    return this.f7434p;
                }
                throw new KryoException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        public Entries(ObjectIntMap<K> objectIntMap) {
            super(objectIntMap);
            this.f7434p = new Entry<>();
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

        @Override // com.esotericsoftware.kryo.util.ObjectIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.ObjectIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public ArrayList<K> toList() {
            return (ArrayList) toList(new ArrayList(this.f7435a.size));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f7438k) {
                return this.hasNext;
            }
            throw new KryoException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public K next() {
            if (this.hasNext) {
                if (this.f7438k) {
                    K[] kArr = this.f7435a.f7430a;
                    int i = this.f7436b;
                    K k = kArr[i];
                    this.f7437d = i;
                    m23166e();
                    return k;
                }
                throw new KryoException("#iterator() cannot be used nested.");
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
    public static class MapIterator<K> {

        /* renamed from: a */
        public final ObjectIntMap<K> f7435a;

        /* renamed from: b */
        public int f7436b;

        /* renamed from: d */
        public int f7437d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f7438k = true;

        public void reset() {
            this.f7437d = -1;
            this.f7436b = -1;
            m23166e();
        }

        /* renamed from: e */
        void m23166e() {
            int i;
            K[] kArr = this.f7435a.f7430a;
            int length = kArr.length;
            do {
                i = this.f7436b + 1;
                this.f7436b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (kArr[i] == null);
            this.hasNext = true;
        }

        public void remove() {
            int i = this.f7437d;
            if (i >= 0) {
                ObjectIntMap<K> objectIntMap = this.f7435a;
                K[] kArr = objectIntMap.f7430a;
                int[] iArr = objectIntMap.f7431b;
                int i2 = objectIntMap.mask;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int place = this.f7435a.place(k);
                    if (((i4 - place) & i2) > ((i - place) & i2)) {
                        kArr[i] = k;
                        iArr[i] = iArr[i4];
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                ObjectIntMap<K> objectIntMap2 = this.f7435a;
                objectIntMap2.size--;
                if (i != this.f7437d) {
                    this.f7436b--;
                }
                this.f7437d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public MapIterator(ObjectIntMap<K> objectIntMap) {
            this.f7435a = objectIntMap;
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

        @Override // com.esotericsoftware.kryo.util.ObjectIntMap.MapIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ void remove() {
            super.remove();
        }

        @Override // com.esotericsoftware.kryo.util.ObjectIntMap.MapIterator
        public /* bridge */ /* synthetic */ void reset() {
            super.reset();
        }

        public IntArray toArray() {
            IntArray intArray = new IntArray(true, this.f7435a.size);
            while (this.hasNext) {
                intArray.add(next());
            }
            return intArray;
        }

        public boolean hasNext() {
            if (this.f7438k) {
                return this.hasNext;
            }
            throw new KryoException("#iterator() cannot be used nested.");
        }

        public int next() {
            if (this.hasNext) {
                if (this.f7438k) {
                    int[] iArr = this.f7435a.f7431b;
                    int i = this.f7436b;
                    int i2 = iArr[i];
                    this.f7437d = i;
                    m23166e();
                    return i2;
                }
                throw new KryoException("#iterator() cannot be used nested.");
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
        int tableSize = ObjectMap.tableSize(i, this.f7432d);
        if (this.f7430a.length <= tableSize) {
            clear();
            return;
        }
        this.size = 0;
        m23168g(tableSize);
    }

    public boolean containsKey(K k) {
        return mo23170d(k) >= 0;
    }

    public Entries<K> entries() {
        return new Entries<>(this);
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
        K[] kArr = this.f7430a;
        int[] iArr = this.f7431b;
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
        return m23167i(str, false);
    }

    public Values values() {
        return new Values(this);
    }

    public ObjectIntMap(int i) {
        this(i, 0.8f);
    }

    public boolean containsValue(int i) {
        K[] kArr = this.f7430a;
        int[] iArr = this.f7431b;
        for (int length = iArr.length - 1; length >= 0; length--) {
            if (kArr[length] != null && iArr[length] == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public int mo23170d(K k) {
        if (k != null) {
            K[] kArr = this.f7430a;
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
    public final void m23169e(K k, int i) {
        K[] kArr = this.f7430a;
        int place = place(k);
        while (kArr[place] != null) {
            place = (place + 1) & this.mask;
        }
        kArr[place] = k;
        this.f7431b[place] = i;
    }

    public void ensureCapacity(int i) {
        int tableSize = ObjectMap.tableSize(this.size + i, this.f7432d);
        if (this.f7430a.length < tableSize) {
            m23168g(tableSize);
        }
    }

    @Null
    public K findKey(int i) {
        K[] kArr = this.f7430a;
        int[] iArr = this.f7431b;
        for (int length = iArr.length - 1; length >= 0; length--) {
            K k = kArr[length];
            if (k != null && iArr[length] == i) {
                return k;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final void m23168g(int i) {
        int length = this.f7430a.length;
        this.f7433k = (int) (i * this.f7432d);
        int i2 = i - 1;
        this.mask = i2;
        this.shift = Long.numberOfLeadingZeros(i2);
        K[] kArr = this.f7430a;
        int[] iArr = this.f7431b;
        this.f7430a = (K[]) new Object[i];
        this.f7431b = new int[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                K k = kArr[i3];
                if (k != null) {
                    m23169e(k, iArr[i3]);
                }
            }
        }
    }

    public int hashCode() {
        int i = this.size;
        K[] kArr = this.f7430a;
        int[] iArr = this.f7431b;
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
    public final String m23167i(String str, boolean z) {
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
        K[] kArr = this.f7430a;
        int[] iArr = this.f7431b;
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

    @Override // java.lang.Iterable
    public Entries<K> iterator() {
        return entries();
    }

    public void putAll(ObjectIntMap<? extends K> objectIntMap) {
        ensureCapacity(objectIntMap.size);
        K[] kArr = objectIntMap.f7430a;
        int[] iArr = objectIntMap.f7431b;
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
            int tableSize = ObjectMap.tableSize(i, this.f7432d);
            if (this.f7430a.length > tableSize) {
                m23168g(tableSize);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    public String toString() {
        return m23167i(", ", true);
    }

    public ObjectIntMap(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f7432d = f;
            int tableSize = ObjectMap.tableSize(i, f);
            this.f7433k = (int) (tableSize * f);
            int i2 = tableSize - 1;
            this.mask = i2;
            this.shift = Long.numberOfLeadingZeros(i2);
            this.f7430a = (K[]) new Object[tableSize];
            this.f7431b = new int[tableSize];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public int get(K k, int i) {
        int mo23170d = mo23170d(k);
        if (mo23170d >= 0) {
            return this.f7431b[mo23170d];
        }
        return i;
    }

    public int getAndIncrement(K k, int i, int i2) {
        int mo23170d = mo23170d(k);
        if (mo23170d >= 0) {
            int[] iArr = this.f7431b;
            int i3 = iArr[mo23170d];
            iArr[mo23170d] = i2 + i3;
            return i3;
        }
        int i4 = -(mo23170d + 1);
        K[] kArr = this.f7430a;
        kArr[i4] = k;
        this.f7431b[i4] = i2 + i;
        int i5 = this.size + 1;
        this.size = i5;
        if (i5 >= this.f7433k) {
            m23168g(kArr.length << 1);
        }
        return i;
    }

    public void put(K k, int i) {
        int mo23170d = mo23170d(k);
        if (mo23170d >= 0) {
            this.f7431b[mo23170d] = i;
            return;
        }
        int i2 = -(mo23170d + 1);
        K[] kArr = this.f7430a;
        kArr[i2] = k;
        this.f7431b[i2] = i;
        int i3 = this.size + 1;
        this.size = i3;
        if (i3 >= this.f7433k) {
            m23168g(kArr.length << 1);
        }
    }

    public int remove(K k, int i) {
        int mo23170d = mo23170d(k);
        if (mo23170d < 0) {
            return i;
        }
        K[] kArr = this.f7430a;
        int[] iArr = this.f7431b;
        int i2 = iArr[mo23170d];
        int i3 = this.mask;
        int i4 = mo23170d + 1;
        while (true) {
            int i5 = i4 & i3;
            K k2 = kArr[i5];
            if (k2 != null) {
                int place = place(k2);
                if (((i5 - place) & i3) > ((mo23170d - place) & i3)) {
                    kArr[mo23170d] = k2;
                    iArr[mo23170d] = iArr[i5];
                    mo23170d = i5;
                }
                i4 = i5 + 1;
            } else {
                kArr[mo23170d] = null;
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
        Arrays.fill(this.f7430a, (Object) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ObjectIntMap(com.esotericsoftware.kryo.util.ObjectIntMap<? extends K> r5) {
        /*
            r4 = this;
            K[] r0 = r5.f7430a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f7432d
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            K[] r0 = r5.f7430a
            K[] r1 = r4.f7430a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int[] r0 = r5.f7431b
            int[] r1 = r4.f7431b
            int r2 = r0.length
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r5 = r5.size
            r4.size = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.kryo.util.ObjectIntMap.<init>(com.esotericsoftware.kryo.util.ObjectIntMap):void");
    }
}
