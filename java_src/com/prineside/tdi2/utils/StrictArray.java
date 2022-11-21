package com.prineside.tdi2.utils;

import com.badlogic.gdx.utils.Array;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class StrictArray<T> extends Array<T> {

    /* renamed from: d */
    public int f15141d;

    public StrictArray() {
    }

    /* renamed from: bi */
    public void m19814bi() {
        this.f15141d++;
    }

    @Override // com.badlogic.gdx.utils.Array
    public void sort() {
        if (this.f15141d == 0) {
            super.sort();
            return;
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    public StrictArray(Array array) {
        super(array);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void clear() {
        if (this.f15141d == 0) {
            super.clear();
            return;
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    /* renamed from: d */
    public T[] mo19813d(int i) {
        if (i < this.size && this.f15141d != 0) {
            throw new IllegalStateException("Not possible during iteration");
        }
        return (T[]) super.mo19813d(i);
    }

    /* renamed from: ei */
    public void m19812ei() {
        int i = this.f15141d;
        if (i != 0) {
            this.f15141d = i - 1;
            return;
        }
        throw new IllegalStateException("begin must be called before end.");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void insert(int i, T t) {
        if (this.f15141d == 0) {
            super.insert(i, t);
            return;
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public T pop() {
        if (this.f15141d == 0) {
            return (T) super.pop();
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public boolean removeAll(Array<? extends T> array, boolean z) {
        if (this.f15141d == 0) {
            return super.removeAll(array, z);
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public T removeIndex(int i) {
        if (this.f15141d == 0) {
            return (T) super.removeIndex(i);
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void removeRange(int i, int i2) {
        if (this.f15141d == 0) {
            super.removeRange(i, i2);
            return;
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public boolean removeValue(T t, boolean z) {
        if (this.f15141d == 0) {
            return super.removeValue(t, z);
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void reverse() {
        if (this.f15141d == 0) {
            super.reverse();
            return;
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void set(int i, T t) {
        if (this.f15141d == 0) {
            super.set(i, t);
            return;
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public T[] setSize(int i) {
        if (i < this.size && this.f15141d != 0) {
            throw new IllegalStateException("Not possible during iteration");
        }
        return (T[]) super.setSize(i);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void shuffle() {
        if (this.f15141d == 0) {
            super.shuffle();
            return;
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void swap(int i, int i2) {
        if (this.f15141d == 0) {
            super.swap(i, i2);
            return;
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    @Override // com.badlogic.gdx.utils.Array
    public void truncate(int i) {
        if (i < this.size && this.f15141d != 0) {
            throw new IllegalStateException("Not possible during iteration");
        }
        super.truncate(i);
    }

    public StrictArray(boolean z, int i, Class cls) {
        super(z, i, cls);
    }

    public StrictArray(boolean z, int i) {
        super(z, i);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void sort(Comparator<? super T> comparator) {
        if (this.f15141d == 0) {
            super.sort(comparator);
            return;
        }
        throw new IllegalStateException("Not possible during iteration");
    }

    public StrictArray(boolean z, T[] tArr, int i, int i2) {
        super(z, tArr, i, i2);
    }

    public StrictArray(Class cls) {
        super(cls);
    }

    public StrictArray(int i) {
        super(i);
    }

    public StrictArray(T[] tArr) {
        super(tArr);
    }
}
