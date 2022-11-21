package com.badlogic.gdx.utils;

import java.util.Comparator;
/* loaded from: classes.dex */
public class DelayedRemovalArray<T> extends Array<T> {

    /* renamed from: d */
    public int f6439d;

    /* renamed from: k */
    public IntArray f6440k;

    /* renamed from: p */
    public int f6441p;

    public DelayedRemovalArray() {
        this.f6440k = new IntArray(0);
    }

    public static <T> DelayedRemovalArray<T> with(T... tArr) {
        return new DelayedRemovalArray<>(tArr);
    }

    public void begin() {
        this.f6439d++;
    }

    @Override // com.badlogic.gdx.utils.Array
    public void sort() {
        if (this.f6439d <= 0) {
            super.sort();
            return;
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void clear() {
        if (this.f6439d > 0) {
            this.f6441p = this.size;
        } else {
            super.clear();
        }
    }

    /* renamed from: e */
    public final void m23663e(int i) {
        if (i < this.f6441p) {
            return;
        }
        int i2 = this.f6440k.size;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.f6440k.get(i3);
            if (i == i4) {
                return;
            }
            if (i < i4) {
                this.f6440k.insert(i3, i);
                return;
            }
        }
        this.f6440k.add(i);
    }

    public void end() {
        int i = this.f6439d;
        if (i != 0) {
            int i2 = i - 1;
            this.f6439d = i2;
            if (i2 == 0) {
                int i3 = this.f6441p;
                if (i3 > 0 && i3 == this.size) {
                    this.f6440k.clear();
                    clear();
                } else {
                    int i4 = this.f6440k.size;
                    for (int i5 = 0; i5 < i4; i5++) {
                        int pop = this.f6440k.pop();
                        if (pop >= this.f6441p) {
                            removeIndex(pop);
                        }
                    }
                    for (int i6 = this.f6441p - 1; i6 >= 0; i6--) {
                        removeIndex(i6);
                    }
                }
                this.f6441p = 0;
                return;
            }
            return;
        }
        throw new IllegalStateException("begin must be called before end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void insert(int i, T t) {
        if (this.f6439d <= 0) {
            super.insert(i, t);
            return;
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void insertRange(int i, int i2) {
        if (this.f6439d <= 0) {
            super.insertRange(i, i2);
            return;
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public T pop() {
        if (this.f6439d <= 0) {
            return (T) super.pop();
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public T removeIndex(int i) {
        if (this.f6439d > 0) {
            m23663e(i);
            return get(i);
        }
        return (T) super.removeIndex(i);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void removeRange(int i, int i2) {
        if (this.f6439d > 0) {
            while (i2 >= i) {
                m23663e(i2);
                i2--;
            }
            return;
        }
        super.removeRange(i, i2);
    }

    @Override // com.badlogic.gdx.utils.Array
    public boolean removeValue(T t, boolean z) {
        if (this.f6439d > 0) {
            int indexOf = indexOf(t, z);
            if (indexOf == -1) {
                return false;
            }
            m23663e(indexOf);
            return true;
        }
        return super.removeValue(t, z);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void reverse() {
        if (this.f6439d <= 0) {
            super.reverse();
            return;
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void set(int i, T t) {
        if (this.f6439d <= 0) {
            super.set(i, t);
            return;
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public T[] setSize(int i) {
        if (this.f6439d <= 0) {
            return (T[]) super.setSize(i);
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void shuffle() {
        if (this.f6439d <= 0) {
            super.shuffle();
            return;
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void swap(int i, int i2) {
        if (this.f6439d <= 0) {
            super.swap(i, i2);
            return;
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void truncate(int i) {
        if (this.f6439d <= 0) {
            super.truncate(i);
            return;
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    public DelayedRemovalArray(Array array) {
        super(array);
        this.f6440k = new IntArray(0);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void sort(Comparator<? super T> comparator) {
        if (this.f6439d <= 0) {
            super.sort(comparator);
            return;
        }
        throw new IllegalStateException("Invalid between begin/end.");
    }

    public DelayedRemovalArray(boolean z, int i, Class cls) {
        super(z, i, cls);
        this.f6440k = new IntArray(0);
    }

    public DelayedRemovalArray(boolean z, int i) {
        super(z, i);
        this.f6440k = new IntArray(0);
    }

    public DelayedRemovalArray(boolean z, T[] tArr, int i, int i2) {
        super(z, tArr, i, i2);
        this.f6440k = new IntArray(0);
    }

    public DelayedRemovalArray(Class cls) {
        super(cls);
        this.f6440k = new IntArray(0);
    }

    public DelayedRemovalArray(int i) {
        super(i);
        this.f6440k = new IntArray(0);
    }

    public DelayedRemovalArray(T[] tArr) {
        super(tArr);
        this.f6440k = new IntArray(0);
    }
}
