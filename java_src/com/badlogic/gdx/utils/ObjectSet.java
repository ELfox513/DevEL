package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class ObjectSet<T> implements Iterable<T> {

    /* renamed from: a */
    public T[] f6672a;

    /* renamed from: b */
    public float f6673b;

    /* renamed from: d */
    public int f6674d;

    /* renamed from: k */
    public int f6675k;

    /* renamed from: p */
    public int f6676p;

    /* renamed from: q */
    public transient ObjectSetIterator f6677q;

    /* renamed from: r */
    public transient ObjectSetIterator f6678r;
    public int size;

    /* loaded from: classes.dex */
    public static class ObjectSetIterator<K> implements Iterable<K>, Iterator<K> {

        /* renamed from: a */
        public final ObjectSet<K> f6679a;

        /* renamed from: b */
        public int f6680b;

        /* renamed from: d */
        public int f6681d;
        public boolean hasNext;

        /* renamed from: k */
        public boolean f6682k = true;

        @Override // java.lang.Iterable
        public ObjectSetIterator<K> iterator() {
            return this;
        }

        public void reset() {
            this.f6681d = -1;
            this.f6680b = -1;
            m23561e();
        }

        public Array<K> toArray(Array<K> array) {
            while (this.hasNext) {
                array.add(next());
            }
            return array;
        }

        /* renamed from: e */
        public final void m23561e() {
            int i;
            K[] kArr = this.f6679a.f6672a;
            int length = kArr.length;
            do {
                i = this.f6680b + 1;
                this.f6680b = i;
                if (i >= length) {
                    this.hasNext = false;
                    return;
                }
            } while (kArr[i] == null);
            this.hasNext = true;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6682k) {
                return this.hasNext;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public K next() {
            if (this.hasNext) {
                if (this.f6682k) {
                    K[] kArr = this.f6679a.f6672a;
                    int i = this.f6680b;
                    K k = kArr[i];
                    this.f6681d = i;
                    m23561e();
                    return k;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            int i = this.f6681d;
            if (i >= 0) {
                ObjectSet<K> objectSet = this.f6679a;
                K[] kArr = objectSet.f6672a;
                int i2 = objectSet.f6676p;
                int i3 = i + 1;
                while (true) {
                    int i4 = i3 & i2;
                    K k = kArr[i4];
                    if (k == null) {
                        break;
                    }
                    int m23564g = this.f6679a.m23564g(k);
                    if (((i4 - m23564g) & i2) > ((i - m23564g) & i2)) {
                        kArr[i] = k;
                        i = i4;
                    }
                    i3 = i4 + 1;
                }
                kArr[i] = null;
                ObjectSet<K> objectSet2 = this.f6679a;
                objectSet2.size--;
                if (i != this.f6681d) {
                    this.f6680b--;
                }
                this.f6681d = -1;
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public ObjectSetIterator(ObjectSet<K> objectSet) {
            this.f6679a = objectSet;
            reset();
        }

        public Array<K> toArray() {
            return toArray(new Array<>(true, this.f6679a.size));
        }
    }

    public ObjectSet() {
        this(51, 0.8f);
    }

    public void addAll(Array<? extends T> array) {
        addAll(array.items, 0, array.size);
    }

    public void clear(int i) {
        int m23562k = m23562k(i, this.f6673b);
        if (this.f6672a.length <= m23562k) {
            clear();
            return;
        }
        this.size = 0;
        m23563i(m23562k);
    }

    public boolean contains(T t) {
        return m23565e(t) >= 0;
    }

    /* renamed from: g */
    public int m23564g(T t) {
        return (int) ((t.hashCode() * (-7046029254386353131L)) >>> this.f6675k);
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public boolean notEmpty() {
        return this.size > 0;
    }

    public String toString() {
        return '{' + toString(", ") + '}';
    }

    public ObjectSet(int i) {
        this(i, 0.8f);
    }

    /* renamed from: k */
    public static int m23562k(int i, float f) {
        if (i >= 0) {
            int nextPowerOfTwo = MathUtils.nextPowerOfTwo(Math.max(2, (int) Math.ceil(i / f)));
            if (nextPowerOfTwo <= 1073741824) {
                return nextPowerOfTwo;
            }
            throw new IllegalArgumentException("The required capacity is too large: " + i);
        }
        throw new IllegalArgumentException("capacity must be >= 0: " + i);
    }

    public static <T> ObjectSet<T> with(T... tArr) {
        ObjectSet<T> objectSet = new ObjectSet<>();
        objectSet.addAll(tArr);
        return objectSet;
    }

    public void addAll(Array<? extends T> array, int i, int i2) {
        if (i + i2 <= array.size) {
            addAll(array.items, i, i2);
            return;
        }
        throw new IllegalArgumentException("offset + length must be <= size: " + i + " + " + i2 + " <= " + array.size);
    }

    /* renamed from: d */
    public final void m23566d(T t) {
        T[] tArr = this.f6672a;
        int m23564g = m23564g(t);
        while (tArr[m23564g] != null) {
            m23564g = (m23564g + 1) & this.f6676p;
        }
        tArr[m23564g] = t;
    }

    /* renamed from: e */
    public int m23565e(T t) {
        if (t != null) {
            T[] tArr = this.f6672a;
            int m23564g = m23564g(t);
            while (true) {
                T t2 = tArr[m23564g];
                if (t2 == null) {
                    return -(m23564g + 1);
                }
                if (t2.equals(t)) {
                    return m23564g;
                }
                m23564g = (m23564g + 1) & this.f6676p;
            }
        } else {
            throw new IllegalArgumentException("key cannot be null.");
        }
    }

    public void ensureCapacity(int i) {
        int m23562k = m23562k(this.size + i, this.f6673b);
        if (this.f6672a.length < m23562k) {
            m23563i(m23562k);
        }
    }

    public boolean equals(Object obj) {
        T[] tArr;
        if (!(obj instanceof ObjectSet)) {
            return false;
        }
        ObjectSet objectSet = (ObjectSet) obj;
        if (objectSet.size != this.size) {
            return false;
        }
        for (T t : this.f6672a) {
            if (t != null && !objectSet.contains(t)) {
                return false;
            }
        }
        return true;
    }

    public T first() {
        T[] tArr;
        for (T t : this.f6672a) {
            if (t != null) {
                return t;
            }
        }
        throw new IllegalStateException("ObjectSet is empty.");
    }

    public int hashCode() {
        T[] tArr;
        int i = this.size;
        for (T t : this.f6672a) {
            if (t != null) {
                i += t.hashCode();
            }
        }
        return i;
    }

    /* renamed from: i */
    public final void m23563i(int i) {
        int length = this.f6672a.length;
        this.f6674d = (int) (i * this.f6673b);
        int i2 = i - 1;
        this.f6676p = i2;
        this.f6675k = Long.numberOfLeadingZeros(i2);
        T[] tArr = this.f6672a;
        this.f6672a = (T[]) new Object[i];
        if (this.size > 0) {
            for (int i3 = 0; i3 < length; i3++) {
                T t = tArr[i3];
                if (t != null) {
                    m23566d(t);
                }
            }
        }
    }

    @Override // java.lang.Iterable
    public ObjectSetIterator<T> iterator() {
        if (Collections.allocateIterators) {
            return new ObjectSetIterator<>(this);
        }
        if (this.f6677q == null) {
            this.f6677q = new ObjectSetIterator(this);
            this.f6678r = new ObjectSetIterator(this);
        }
        ObjectSetIterator objectSetIterator = this.f6677q;
        if (!objectSetIterator.f6682k) {
            objectSetIterator.reset();
            ObjectSetIterator<T> objectSetIterator2 = this.f6677q;
            objectSetIterator2.f6682k = true;
            this.f6678r.f6682k = false;
            return objectSetIterator2;
        }
        this.f6678r.reset();
        ObjectSetIterator<T> objectSetIterator3 = this.f6678r;
        objectSetIterator3.f6682k = true;
        this.f6677q.f6682k = false;
        return objectSetIterator3;
    }

    public void shrink(int i) {
        if (i >= 0) {
            int m23562k = m23562k(i, this.f6673b);
            if (this.f6672a.length > m23562k) {
                m23563i(m23562k);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("maximumCapacity must be >= 0: " + i);
    }

    public String toString(String str) {
        int i;
        if (this.size == 0) {
            return "";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(32);
        T[] tArr = this.f6672a;
        int length = tArr.length;
        while (true) {
            i = length - 1;
            if (length <= 0) {
                break;
            }
            T t = tArr[i];
            if (t == null) {
                length = i;
            } else {
                if (t == this) {
                    t = "(this)";
                }
                sb.append(t);
            }
        }
        while (true) {
            int i2 = i - 1;
            if (i > 0) {
                T t2 = tArr[i2];
                if (t2 != null) {
                    sb.append(str);
                    if (t2 == this) {
                        t2 = "(this)";
                    }
                    sb.append(t2);
                }
                i = i2;
            } else {
                return sb.toString();
            }
        }
    }

    public ObjectSet(int i, float f) {
        if (f > 0.0f && f < 1.0f) {
            this.f6673b = f;
            int m23562k = m23562k(i, f);
            this.f6674d = (int) (m23562k * f);
            int i2 = m23562k - 1;
            this.f6676p = i2;
            this.f6675k = Long.numberOfLeadingZeros(i2);
            this.f6672a = (T[]) new Object[m23562k];
            return;
        }
        throw new IllegalArgumentException("loadFactor must be > 0 and < 1: " + f);
    }

    public boolean add(T t) {
        int m23565e = m23565e(t);
        if (m23565e >= 0) {
            return false;
        }
        T[] tArr = this.f6672a;
        tArr[-(m23565e + 1)] = t;
        int i = this.size + 1;
        this.size = i;
        if (i >= this.f6674d) {
            m23563i(tArr.length << 1);
        }
        return true;
    }

    @Null
    public T get(T t) {
        int m23565e = m23565e(t);
        if (m23565e < 0) {
            return null;
        }
        return this.f6672a[m23565e];
    }

    public boolean remove(T t) {
        int m23565e = m23565e(t);
        if (m23565e < 0) {
            return false;
        }
        T[] tArr = this.f6672a;
        int i = this.f6676p;
        int i2 = m23565e + 1;
        while (true) {
            int i3 = i2 & i;
            T t2 = tArr[i3];
            if (t2 != null) {
                int m23564g = m23564g(t2);
                if (((i3 - m23564g) & i) > ((m23565e - m23564g) & i)) {
                    tArr[m23565e] = t2;
                    m23565e = i3;
                }
                i2 = i3 + 1;
            } else {
                tArr[m23565e] = null;
                this.size--;
                return true;
            }
        }
    }

    public boolean addAll(T... tArr) {
        return addAll(tArr, 0, tArr.length);
    }

    public boolean addAll(T[] tArr, int i, int i2) {
        ensureCapacity(i2);
        int i3 = this.size;
        int i4 = i2 + i;
        while (i < i4) {
            add(tArr[i]);
            i++;
        }
        return i3 != this.size;
    }

    public void clear() {
        if (this.size == 0) {
            return;
        }
        this.size = 0;
        Arrays.fill(this.f6672a, (Object) null);
    }

    public void addAll(ObjectSet<T> objectSet) {
        T[] tArr;
        ensureCapacity(objectSet.size);
        for (T t : objectSet.f6672a) {
            if (t != null) {
                add(t);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ObjectSet(com.badlogic.gdx.utils.ObjectSet<? extends T> r5) {
        /*
            r4 = this;
            T[] r0 = r5.f6672a
            int r0 = r0.length
            float r0 = (float) r0
            float r1 = r5.f6673b
            float r0 = r0 * r1
            int r0 = (int) r0
            r4.<init>(r0, r1)
            T[] r0 = r5.f6672a
            T[] r1 = r4.f6672a
            int r2 = r0.length
            r3 = 0
            java.lang.System.arraycopy(r0, r3, r1, r3, r2)
            int r5 = r5.size
            r4.size = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.badlogic.gdx.utils.ObjectSet.<init>(com.badlogic.gdx.utils.ObjectSet):void");
    }
}
