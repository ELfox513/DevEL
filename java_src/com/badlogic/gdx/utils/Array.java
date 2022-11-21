package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.Predicate;
import com.badlogic.gdx.utils.reflect.ArrayReflection;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public class Array<T> implements Iterable<T> {

    /* renamed from: a */
    public ArrayIterable f6392a;

    /* renamed from: b */
    public Predicate.PredicateIterable<T> f6393b;
    public T[] items;
    public boolean ordered;
    public int size;

    /* loaded from: classes.dex */
    public static class ArrayIterable<T> implements Iterable<T> {

        /* renamed from: a */
        public final Array<T> f6394a;

        /* renamed from: b */
        public final boolean f6395b;

        /* renamed from: d */
        public ArrayIterator f6396d;

        /* renamed from: k */
        public ArrayIterator f6397k;

        public ArrayIterable(Array<T> array) {
            this(array, true);
        }

        public ArrayIterable(Array<T> array, boolean z) {
            this.f6394a = array;
            this.f6395b = z;
        }

        @Override // java.lang.Iterable
        public ArrayIterator<T> iterator() {
            if (Collections.allocateIterators) {
                return new ArrayIterator<>(this.f6394a, this.f6395b);
            }
            if (this.f6396d == null) {
                this.f6396d = new ArrayIterator(this.f6394a, this.f6395b);
                this.f6397k = new ArrayIterator(this.f6394a, this.f6395b);
            }
            ArrayIterator<T> arrayIterator = this.f6396d;
            if (!arrayIterator.f6401k) {
                arrayIterator.f6400d = 0;
                arrayIterator.f6401k = true;
                this.f6397k.f6401k = false;
                return arrayIterator;
            }
            ArrayIterator<T> arrayIterator2 = this.f6397k;
            arrayIterator2.f6400d = 0;
            arrayIterator2.f6401k = true;
            arrayIterator.f6401k = false;
            return arrayIterator2;
        }
    }

    /* loaded from: classes.dex */
    public static class ArrayIterator<T> implements Iterator<T>, Iterable<T> {

        /* renamed from: a */
        public final Array<T> f6398a;

        /* renamed from: b */
        public final boolean f6399b;

        /* renamed from: d */
        public int f6400d;

        /* renamed from: k */
        public boolean f6401k;

        public ArrayIterator(Array<T> array) {
            this(array, true);
        }

        @Override // java.lang.Iterable
        public ArrayIterator<T> iterator() {
            return this;
        }

        public void reset() {
            this.f6400d = 0;
        }

        public ArrayIterator(Array<T> array, boolean z) {
            this.f6401k = true;
            this.f6398a = array;
            this.f6399b = z;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6401k) {
                if (this.f6400d < this.f6398a.size) {
                    return true;
                }
                return false;
            }
            throw new GdxRuntimeException("#iterator() cannot be used nested.");
        }

        @Override // java.util.Iterator
        public T next() {
            int i = this.f6400d;
            Array<T> array = this.f6398a;
            if (i < array.size) {
                if (this.f6401k) {
                    T[] tArr = array.items;
                    this.f6400d = i + 1;
                    return tArr[i];
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException(String.valueOf(this.f6400d));
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f6399b) {
                int i = this.f6400d - 1;
                this.f6400d = i;
                this.f6398a.removeIndex(i);
                return;
            }
            throw new GdxRuntimeException("Remove not allowed.");
        }
    }

    public Array() {
        this(true, 16);
    }

    /* renamed from: of */
    public static <T> Array<T> m23693of(Class<T> cls) {
        return new Array<>(cls);
    }

    public static <T> Array<T> with(T... tArr) {
        return new Array<>(tArr);
    }

    public void add(T t) {
        T[] tArr = this.items;
        int i = this.size;
        if (i == tArr.length) {
            tArr = mo19813d(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        this.size = i2 + 1;
        tArr[i2] = t;
    }

    public void addAll(Array<? extends T> array) {
        addAll(array.items, 0, array.size);
    }

    public boolean equals(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.ordered || !(obj instanceof Array)) {
            return false;
        }
        Array array = (Array) obj;
        if (!array.ordered || (i = this.size) != array.size) {
            return false;
        }
        T[] tArr = this.items;
        T[] tArr2 = array.items;
        for (int i2 = 0; i2 < i; i2++) {
            T t = tArr[i2];
            T t2 = tArr2[i2];
            if (t == null) {
                if (t2 != null) {
                    return false;
                }
            } else if (!t.equals(t2)) {
                return false;
            }
        }
        return true;
    }

    public boolean equalsIdentity(Object obj) {
        int i;
        if (obj == this) {
            return true;
        }
        if (!this.ordered || !(obj instanceof Array)) {
            return false;
        }
        Array array = (Array) obj;
        if (!array.ordered || (i = this.size) != array.size) {
            return false;
        }
        T[] tArr = this.items;
        T[] tArr2 = array.items;
        for (int i2 = 0; i2 < i; i2++) {
            if (tArr[i2] != tArr2[i2]) {
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

    public T selectRanked(Comparator<T> comparator, int i) {
        if (i >= 1) {
            return (T) Select.instance().select(this.items, comparator, i, this.size);
        }
        throw new GdxRuntimeException("nth_lowest must be greater than 0, 1 = first, 2 = second...");
    }

    public int selectRankedIndex(Comparator<T> comparator, int i) {
        if (i >= 1) {
            return Select.instance().selectIndex(this.items, comparator, i, this.size);
        }
        throw new GdxRuntimeException("nth_lowest must be greater than 0, 1 = first, 2 = second...");
    }

    public void sort() {
        Sort.instance().sort(this.items, 0, this.size);
    }

    public T[] toArray() {
        return (T[]) toArray(this.items.getClass().getComponentType());
    }

    public String toString() {
        if (this.size == 0) {
            return "[]";
        }
        T[] tArr = this.items;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        stringBuilder.append(tArr[0]);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(", ");
            stringBuilder.append(tArr[i]);
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }

    public Array(int i) {
        this(true, i);
    }

    /* renamed from: of */
    public static <T> Array<T> m23692of(boolean z, int i, Class<T> cls) {
        return new Array<>(z, i, cls);
    }

    public void addAll(Array<? extends T> array, int i, int i2) {
        if (i + i2 <= array.size) {
            addAll(array.items, i, i2);
            return;
        }
        throw new IllegalArgumentException("start + count must be <= size: " + i + " + " + i2 + " <= " + array.size);
    }

    public void clear() {
        Arrays.fill(this.items, 0, this.size, (Object) null);
        this.size = 0;
    }

    public boolean contains(@Null T t, boolean z) {
        T[] tArr = this.items;
        int i = this.size - 1;
        if (!z && t != null) {
            while (i >= 0) {
                int i2 = i - 1;
                if (t.equals(tArr[i])) {
                    return true;
                }
                i = i2;
            }
            return false;
        }
        while (i >= 0) {
            int i3 = i - 1;
            if (tArr[i] == t) {
                return true;
            }
            i = i3;
        }
        return false;
    }

    public boolean containsAll(Array<? extends T> array, boolean z) {
        T[] tArr = array.items;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (!contains(tArr[i2], z)) {
                return false;
            }
        }
        return true;
    }

    public boolean containsAny(Array<? extends T> array, boolean z) {
        T[] tArr = array.items;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (contains(tArr[i2], z)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public T[] mo19813d(int i) {
        T[] tArr = this.items;
        T[] tArr2 = (T[]) ((Object[]) ArrayReflection.newInstance(tArr.getClass().getComponentType(), i));
        System.arraycopy(tArr, 0, tArr2, 0, Math.min(this.size, tArr2.length));
        this.items = tArr2;
        return tArr2;
    }

    public T[] ensureCapacity(int i) {
        if (i >= 0) {
            int i2 = this.size + i;
            if (i2 > this.items.length) {
                mo19813d(Math.max(Math.max(8, i2), (int) (this.size * 1.75f)));
            }
            return this.items;
        }
        throw new IllegalArgumentException("additionalCapacity must be >= 0: " + i);
    }

    public T first() {
        if (this.size != 0) {
            return this.items[0];
        }
        throw new IllegalStateException("Array is empty.");
    }

    public T get(int i) {
        if (i < this.size) {
            return this.items[i];
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public int hashCode() {
        if (!this.ordered) {
            return super.hashCode();
        }
        T[] tArr = this.items;
        int i = this.size;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            i2 *= 31;
            T t = tArr[i3];
            if (t != null) {
                i2 += t.hashCode();
            }
        }
        return i2;
    }

    public int indexOf(@Null T t, boolean z) {
        T[] tArr = this.items;
        int i = 0;
        if (!z && t != null) {
            int i2 = this.size;
            while (i < i2) {
                if (t.equals(tArr[i])) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int i3 = this.size;
        while (i < i3) {
            if (tArr[i] == t) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public void insert(int i, T t) {
        int i2 = this.size;
        if (i <= i2) {
            T[] tArr = this.items;
            if (i2 == tArr.length) {
                tArr = mo19813d(Math.max(8, (int) (i2 * 1.75f)));
            }
            if (this.ordered) {
                System.arraycopy(tArr, i, tArr, i + 1, this.size - i);
            } else {
                tArr[this.size] = tArr[i];
            }
            this.size++;
            tArr[i] = t;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be > size: " + i + " > " + this.size);
    }

    public void insertRange(int i, int i2) {
        int i3 = this.size;
        if (i <= i3) {
            int i4 = i3 + i2;
            if (i4 > this.items.length) {
                this.items = mo19813d(Math.max(Math.max(8, i4), (int) (this.size * 1.75f)));
            }
            T[] tArr = this.items;
            System.arraycopy(tArr, i, tArr, i2 + i, this.size - i);
            this.size = i4;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be > size: " + i + " > " + this.size);
    }

    @Override // java.lang.Iterable
    public ArrayIterator<T> iterator() {
        if (Collections.allocateIterators) {
            return new ArrayIterator<>(this, true);
        }
        if (this.f6392a == null) {
            this.f6392a = new ArrayIterable(this);
        }
        return this.f6392a.iterator();
    }

    public int lastIndexOf(@Null T t, boolean z) {
        T[] tArr = this.items;
        if (!z && t != null) {
            for (int i = this.size - 1; i >= 0; i--) {
                if (t.equals(tArr[i])) {
                    return i;
                }
            }
            return -1;
        }
        for (int i2 = this.size - 1; i2 >= 0; i2--) {
            if (tArr[i2] == t) {
                return i2;
            }
        }
        return -1;
    }

    public T peek() {
        int i = this.size;
        if (i != 0) {
            return this.items[i - 1];
        }
        throw new IllegalStateException("Array is empty.");
    }

    public T pop() {
        int i = this.size;
        if (i != 0) {
            int i2 = i - 1;
            this.size = i2;
            T[] tArr = this.items;
            T t = tArr[i2];
            tArr[i2] = null;
            return t;
        }
        throw new IllegalStateException("Array is empty.");
    }

    @Null
    public T random() {
        int i = this.size;
        if (i == 0) {
            return null;
        }
        return this.items[MathUtils.random(0, i - 1)];
    }

    public boolean removeAll(Array<? extends T> array, boolean z) {
        int i;
        int i2 = this.size;
        T[] tArr = this.items;
        if (z) {
            int i3 = array.size;
            i = i2;
            for (int i4 = 0; i4 < i3; i4++) {
                T t = array.get(i4);
                int i5 = 0;
                while (true) {
                    if (i5 >= i) {
                        break;
                    } else if (t == tArr[i5]) {
                        removeIndex(i5);
                        i--;
                        break;
                    } else {
                        i5++;
                    }
                }
            }
        } else {
            int i6 = array.size;
            i = i2;
            for (int i7 = 0; i7 < i6; i7++) {
                T t2 = array.get(i7);
                int i8 = 0;
                while (true) {
                    if (i8 >= i) {
                        break;
                    } else if (t2.equals(tArr[i8])) {
                        removeIndex(i8);
                        i--;
                        break;
                    } else {
                        i8++;
                    }
                }
            }
        }
        if (i == i2) {
            return false;
        }
        return true;
    }

    public T removeIndex(int i) {
        int i2 = this.size;
        if (i < i2) {
            T[] tArr = this.items;
            T t = tArr[i];
            int i3 = i2 - 1;
            this.size = i3;
            if (this.ordered) {
                System.arraycopy(tArr, i + 1, tArr, i, i3 - i);
            } else {
                tArr[i] = tArr[i3];
            }
            tArr[this.size] = null;
            return t;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public void removeRange(int i, int i2) {
        int i3 = this.size;
        if (i2 < i3) {
            if (i <= i2) {
                T[] tArr = this.items;
                int i4 = (i2 - i) + 1;
                int i5 = i3 - i4;
                if (this.ordered) {
                    int i6 = i4 + i;
                    System.arraycopy(tArr, i6, tArr, i, i3 - i6);
                } else {
                    int max = Math.max(i5, i2 + 1);
                    System.arraycopy(tArr, max, tArr, i, i3 - max);
                }
                for (int i7 = i5; i7 < i3; i7++) {
                    tArr[i7] = null;
                }
                this.size = i5;
                return;
            }
            throw new IndexOutOfBoundsException("start can't be > end: " + i + " > " + i2);
        }
        throw new IndexOutOfBoundsException("end can't be >= size: " + i2 + " >= " + this.size);
    }

    public boolean removeValue(@Null T t, boolean z) {
        T[] tArr = this.items;
        if (!z && t != null) {
            int i = this.size;
            for (int i2 = 0; i2 < i; i2++) {
                if (t.equals(tArr[i2])) {
                    removeIndex(i2);
                    return true;
                }
            }
        } else {
            int i3 = this.size;
            for (int i4 = 0; i4 < i3; i4++) {
                if (tArr[i4] == t) {
                    removeIndex(i4);
                    return true;
                }
            }
        }
        return false;
    }

    public void reverse() {
        T[] tArr = this.items;
        int i = this.size;
        int i2 = i - 1;
        int i3 = i / 2;
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i2 - i4;
            T t = tArr[i4];
            tArr[i4] = tArr[i5];
            tArr[i5] = t;
        }
    }

    public Iterable<T> select(Predicate<T> predicate) {
        if (Collections.allocateIterators) {
            return new Predicate.PredicateIterable(this, predicate);
        }
        Predicate.PredicateIterable<T> predicateIterable = this.f6393b;
        if (predicateIterable == null) {
            this.f6393b = new Predicate.PredicateIterable<>(this, predicate);
        } else {
            predicateIterable.set(this, predicate);
        }
        return this.f6393b;
    }

    public void set(int i, T t) {
        if (i < this.size) {
            this.items[i] = t;
            return;
        }
        throw new IndexOutOfBoundsException("index can't be >= size: " + i + " >= " + this.size);
    }

    public T[] shrink() {
        int length = this.items.length;
        int i = this.size;
        if (length != i) {
            mo19813d(i);
        }
        return this.items;
    }

    public void shuffle() {
        T[] tArr = this.items;
        for (int i = this.size - 1; i >= 0; i--) {
            int random = MathUtils.random(i);
            T t = tArr[i];
            tArr[i] = tArr[random];
            tArr[random] = t;
        }
    }

    public void sort(Comparator<? super T> comparator) {
        Sort.instance().sort(this.items, comparator, 0, this.size);
    }

    public void swap(int i, int i2) {
        int i3 = this.size;
        if (i < i3) {
            if (i2 < i3) {
                T[] tArr = this.items;
                T t = tArr[i];
                tArr[i] = tArr[i2];
                tArr[i2] = t;
                return;
            }
            throw new IndexOutOfBoundsException("second can't be >= size: " + i2 + " >= " + this.size);
        }
        throw new IndexOutOfBoundsException("first can't be >= size: " + i + " >= " + this.size);
    }

    public <V> V[] toArray(Class<V> cls) {
        V[] vArr = (V[]) ((Object[]) ArrayReflection.newInstance(cls, this.size));
        System.arraycopy(this.items, 0, vArr, 0, this.size);
        return vArr;
    }

    public void truncate(int i) {
        if (i >= 0) {
            if (this.size <= i) {
                return;
            }
            for (int i2 = i; i2 < this.size; i2++) {
                this.items[i2] = null;
            }
            this.size = i;
            return;
        }
        throw new IllegalArgumentException("newSize must be >= 0: " + i);
    }

    public Array(boolean z, int i) {
        this.ordered = z;
        this.items = (T[]) new Object[i];
    }

    public T[] setSize(int i) {
        truncate(i);
        if (i > this.items.length) {
            mo19813d(Math.max(8, i));
        }
        this.size = i;
        return this.items;
    }

    public void add(T t, T t2) {
        T[] tArr = this.items;
        int i = this.size;
        if (i + 1 >= tArr.length) {
            tArr = mo19813d(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        tArr[i2] = t;
        tArr[i2 + 1] = t2;
        this.size = i2 + 2;
    }

    public void addAll(T... tArr) {
        addAll(tArr, 0, tArr.length);
    }

    public Array(boolean z, int i, Class cls) {
        this.ordered = z;
        this.items = (T[]) ((Object[]) ArrayReflection.newInstance(cls, i));
    }

    public void addAll(T[] tArr, int i, int i2) {
        T[] tArr2 = this.items;
        int i3 = this.size + i2;
        if (i3 > tArr2.length) {
            tArr2 = mo19813d(Math.max(Math.max(8, i3), (int) (this.size * 1.75f)));
        }
        System.arraycopy(tArr, i, tArr2, this.size, i2);
        this.size = i3;
    }

    public Array(Class cls) {
        this(true, 16, cls);
    }

    public void add(T t, T t2, T t3) {
        T[] tArr = this.items;
        int i = this.size;
        if (i + 2 >= tArr.length) {
            tArr = mo19813d(Math.max(8, (int) (i * 1.75f)));
        }
        int i2 = this.size;
        tArr[i2] = t;
        tArr[i2 + 1] = t2;
        tArr[i2 + 2] = t3;
        this.size = i2 + 3;
    }

    public Array(Array<? extends T> array) {
        this(array.ordered, array.size, array.items.getClass().getComponentType());
        int i = array.size;
        this.size = i;
        System.arraycopy(array.items, 0, this.items, 0, i);
    }

    public String toString(String str) {
        if (this.size == 0) {
            return "";
        }
        T[] tArr = this.items;
        StringBuilder stringBuilder = new StringBuilder(32);
        stringBuilder.append(tArr[0]);
        for (int i = 1; i < this.size; i++) {
            stringBuilder.append(str);
            stringBuilder.append(tArr[i]);
        }
        return stringBuilder.toString();
    }

    public Array(T[] tArr) {
        this(true, tArr, 0, tArr.length);
    }

    public Array(boolean z, T[] tArr, int i, int i2) {
        this(z, i2, tArr.getClass().getComponentType());
        this.size = i2;
        System.arraycopy(tArr, i, this.items, 0, i2);
    }

    public void add(T t, T t2, T t3, T t4) {
        T[] tArr = this.items;
        int i = this.size;
        if (i + 3 >= tArr.length) {
            tArr = mo19813d(Math.max(8, (int) (i * 1.8f)));
        }
        int i2 = this.size;
        tArr[i2] = t;
        tArr[i2 + 1] = t2;
        tArr[i2 + 2] = t3;
        tArr[i2 + 3] = t4;
        this.size = i2 + 4;
    }
}
