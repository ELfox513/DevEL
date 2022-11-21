package com.badlogic.gdx.utils;

import com.badlogic.gdx.utils.ObjectSet;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class OrderedSet<T> extends ObjectSet<T> {

    /* renamed from: s */
    public final Array<T> f6687s;

    /* renamed from: t */
    public transient OrderedSetIterator f6688t;

    /* renamed from: u */
    public transient OrderedSetIterator f6689u;

    /* loaded from: classes.dex */
    public static class OrderedSetIterator<K> extends ObjectSet.ObjectSetIterator<K> {

        /* renamed from: p */
        public Array<K> f6690p;

        @Override // com.badlogic.gdx.utils.ObjectSet.ObjectSetIterator
        public void reset() {
            this.f6680b = 0;
            this.hasNext = this.f6679a.size > 0;
        }

        @Override // com.badlogic.gdx.utils.ObjectSet.ObjectSetIterator
        public Array<K> toArray(Array<K> array) {
            Array<K> array2 = this.f6690p;
            int i = this.f6680b;
            array.addAll((Array<? extends K>) array2, i, array2.size - i);
            this.f6680b = this.f6690p.size;
            this.hasNext = false;
            return array;
        }

        @Override // com.badlogic.gdx.utils.ObjectSet.ObjectSetIterator, java.util.Iterator
        public K next() {
            if (this.hasNext) {
                if (this.f6682k) {
                    K k = this.f6690p.get(this.f6680b);
                    boolean z = true;
                    int i = this.f6680b + 1;
                    this.f6680b = i;
                    if (i >= this.f6679a.size) {
                        z = false;
                    }
                    this.hasNext = z;
                    return k;
                }
                throw new GdxRuntimeException("#iterator() cannot be used nested.");
            }
            throw new NoSuchElementException();
        }

        @Override // com.badlogic.gdx.utils.ObjectSet.ObjectSetIterator, java.util.Iterator
        public void remove() {
            int i = this.f6680b;
            if (i >= 0) {
                int i2 = i - 1;
                this.f6680b = i2;
                ((OrderedSet) this.f6679a).removeIndex(i2);
                return;
            }
            throw new IllegalStateException("next must be called before remove.");
        }

        public OrderedSetIterator(OrderedSet<K> orderedSet) {
            super(orderedSet);
            this.f6690p = orderedSet.f6687s;
        }

        @Override // com.badlogic.gdx.utils.ObjectSet.ObjectSetIterator
        public Array<K> toArray() {
            return toArray(new Array<>(true, this.f6679a.size - this.f6680b));
        }
    }

    public OrderedSet() {
        this.f6687s = new Array<>();
    }

    @Override // com.badlogic.gdx.utils.ObjectSet
    public boolean add(T t) {
        if (super.add(t)) {
            this.f6687s.add(t);
            return true;
        }
        return false;
    }

    @Override // com.badlogic.gdx.utils.ObjectSet
    public void clear(int i) {
        this.f6687s.clear();
        super.clear(i);
    }

    public Array<T> orderedItems() {
        return this.f6687s;
    }

    @Override // com.badlogic.gdx.utils.ObjectSet
    public String toString() {
        if (this.size == 0) {
            return "{}";
        }
        T[] tArr = this.f6687s.items;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(32);
        sb.append('{');
        sb.append(tArr[0]);
        for (int i = 1; i < this.size; i++) {
            sb.append(", ");
            sb.append(tArr[i]);
        }
        sb.append('}');
        return sb.toString();
    }

    public static <T> OrderedSet<T> with(T... tArr) {
        OrderedSet<T> orderedSet = new OrderedSet<>();
        orderedSet.addAll(tArr);
        return orderedSet;
    }

    public void addAll(OrderedSet<T> orderedSet) {
        ensureCapacity(orderedSet.size);
        Array<T> array = orderedSet.f6687s;
        T[] tArr = array.items;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            add(tArr[i2]);
        }
    }

    public boolean alterIndex(int i, T t) {
        if (i >= 0 && i < this.size && !contains(t)) {
            super.remove(this.f6687s.get(i));
            super.add(t);
            this.f6687s.set(i, t);
            return true;
        }
        return false;
    }

    public T removeIndex(int i) {
        T removeIndex = this.f6687s.removeIndex(i);
        super.remove(removeIndex);
        return removeIndex;
    }

    public OrderedSet(int i, float f) {
        super(i, f);
        this.f6687s = new Array<>(i);
    }

    public boolean add(T t, int i) {
        if (!super.add(t)) {
            int indexOf = this.f6687s.indexOf(t, true);
            if (indexOf != i) {
                Array<T> array = this.f6687s;
                array.insert(i, array.removeIndex(indexOf));
                return false;
            }
            return false;
        }
        this.f6687s.insert(i, t);
        return true;
    }

    public boolean alter(T t, T t2) {
        if (contains(t2) || !super.remove(t)) {
            return false;
        }
        super.add(t2);
        Array<T> array = this.f6687s;
        array.set(array.indexOf(t, false), t2);
        return true;
    }

    @Override // com.badlogic.gdx.utils.ObjectSet
    public void clear() {
        this.f6687s.clear();
        super.clear();
    }

    @Override // com.badlogic.gdx.utils.ObjectSet, java.lang.Iterable
    public OrderedSetIterator<T> iterator() {
        if (Collections.allocateIterators) {
            return new OrderedSetIterator<>(this);
        }
        if (this.f6688t == null) {
            this.f6688t = new OrderedSetIterator(this);
            this.f6689u = new OrderedSetIterator(this);
        }
        OrderedSetIterator orderedSetIterator = this.f6688t;
        if (!orderedSetIterator.f6682k) {
            orderedSetIterator.reset();
            OrderedSetIterator<T> orderedSetIterator2 = this.f6688t;
            orderedSetIterator2.f6682k = true;
            this.f6689u.f6682k = false;
            return orderedSetIterator2;
        }
        this.f6689u.reset();
        OrderedSetIterator<T> orderedSetIterator3 = this.f6689u;
        orderedSetIterator3.f6682k = true;
        this.f6688t.f6682k = false;
        return orderedSetIterator3;
    }

    @Override // com.badlogic.gdx.utils.ObjectSet
    public boolean remove(T t) {
        if (!super.remove(t)) {
            return false;
        }
        this.f6687s.removeValue(t, false);
        return true;
    }

    public OrderedSet(int i) {
        super(i);
        this.f6687s = new Array<>(i);
    }

    public OrderedSet(OrderedSet<? extends T> orderedSet) {
        super(orderedSet);
        this.f6687s = new Array<>(orderedSet.f6687s);
    }

    @Override // com.badlogic.gdx.utils.ObjectSet
    public String toString(String str) {
        return this.f6687s.toString(str);
    }
}
