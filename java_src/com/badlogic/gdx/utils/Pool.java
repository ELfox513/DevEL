package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public abstract class Pool<T> {

    /* renamed from: a */
    public final Array<T> f6697a;
    public final int max;
    public int peak;

    /* loaded from: classes.dex */
    public interface Poolable {
        void reset();
    }

    public Pool() {
        this(16, Integer.MAX_VALUE);
    }

    /* renamed from: a */
    public void m23559a(T t) {
        mo21604b(t);
    }

    /* renamed from: b */
    public void mo21604b(T t) {
        if (t instanceof Poolable) {
            ((Poolable) t).reset();
        }
    }

    public void fill(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            Array<T> array = this.f6697a;
            if (array.size < this.max) {
                array.add(newObject());
            }
        }
        this.peak = Math.max(this.peak, this.f6697a.size);
    }

    public int getFree() {
        return this.f6697a.size;
    }

    public abstract T newObject();

    public T obtain() {
        Array<T> array = this.f6697a;
        return array.size == 0 ? newObject() : array.pop();
    }

    public Pool(int i) {
        this(i, Integer.MAX_VALUE);
    }

    public void clear() {
        Array<T> array = this.f6697a;
        int i = array.size;
        for (int i2 = 0; i2 < i; i2++) {
            m23559a(array.get(i2));
        }
        array.clear();
    }

    public void free(T t) {
        if (t != null) {
            Array<T> array = this.f6697a;
            if (array.size < this.max) {
                array.add(t);
                this.peak = Math.max(this.peak, this.f6697a.size);
                mo21604b(t);
                return;
            }
            m23559a(t);
            return;
        }
        throw new IllegalArgumentException("object cannot be null.");
    }

    public void freeAll(Array<T> array) {
        if (array != null) {
            Array<T> array2 = this.f6697a;
            int i = this.max;
            int i2 = array.size;
            for (int i3 = 0; i3 < i2; i3++) {
                T t = array.get(i3);
                if (t != null) {
                    if (array2.size < i) {
                        array2.add(t);
                        mo21604b(t);
                    } else {
                        m23559a(t);
                    }
                }
            }
            this.peak = Math.max(this.peak, array2.size);
            return;
        }
        throw new IllegalArgumentException("objects cannot be null.");
    }

    public Pool(int i, int i2) {
        this.f6697a = new Array<>(false, i);
        this.max = i2;
    }
}
