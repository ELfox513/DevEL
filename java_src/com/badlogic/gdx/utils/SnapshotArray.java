package com.badlogic.gdx.utils;

import java.util.Comparator;
/* loaded from: classes.dex */
public class SnapshotArray<T> extends Array<T> {

    /* renamed from: d */
    public T[] f6737d;

    /* renamed from: k */
    public T[] f6738k;

    /* renamed from: p */
    public int f6739p;

    public SnapshotArray() {
    }

    public static <T> SnapshotArray<T> with(T... tArr) {
        return new SnapshotArray<>(tArr);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void sort() {
        m23530e();
        super.sort();
    }

    public SnapshotArray(Array array) {
        super(array);
    }

    /* renamed from: e */
    public final void m23530e() {
        T[] tArr;
        T[] tArr2 = this.f6737d;
        if (tArr2 != null && tArr2 == (tArr = this.items)) {
            T[] tArr3 = this.f6738k;
            if (tArr3 != null) {
                int length = tArr3.length;
                int i = this.size;
                if (length >= i) {
                    System.arraycopy(tArr, 0, tArr3, 0, i);
                    this.items = this.f6738k;
                    this.f6738k = null;
                    return;
                }
            }
            mo19813d(tArr.length);
        }
    }

    public void end() {
        int max = Math.max(0, this.f6739p - 1);
        this.f6739p = max;
        T[] tArr = this.f6737d;
        if (tArr == null) {
            return;
        }
        if (tArr != this.items && max == 0) {
            this.f6738k = tArr;
            int length = tArr.length;
            for (int i = 0; i < length; i++) {
                this.f6738k[i] = null;
            }
        }
        this.f6737d = null;
    }

    public SnapshotArray(boolean z, int i, Class cls) {
        super(z, i, cls);
    }

    public T[] begin() {
        m23530e();
        T[] tArr = this.items;
        this.f6737d = tArr;
        this.f6739p++;
        return tArr;
    }

    @Override // com.badlogic.gdx.utils.Array
    public void clear() {
        m23530e();
        super.clear();
    }

    @Override // com.badlogic.gdx.utils.Array
    public void insert(int i, T t) {
        m23530e();
        super.insert(i, t);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void insertRange(int i, int i2) {
        m23530e();
        super.insertRange(i, i2);
    }

    @Override // com.badlogic.gdx.utils.Array
    public T pop() {
        m23530e();
        return (T) super.pop();
    }

    @Override // com.badlogic.gdx.utils.Array
    public boolean removeAll(Array<? extends T> array, boolean z) {
        m23530e();
        return super.removeAll(array, z);
    }

    @Override // com.badlogic.gdx.utils.Array
    public T removeIndex(int i) {
        m23530e();
        return (T) super.removeIndex(i);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void removeRange(int i, int i2) {
        m23530e();
        super.removeRange(i, i2);
    }

    @Override // com.badlogic.gdx.utils.Array
    public boolean removeValue(T t, boolean z) {
        m23530e();
        return super.removeValue(t, z);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void reverse() {
        m23530e();
        super.reverse();
    }

    @Override // com.badlogic.gdx.utils.Array
    public void set(int i, T t) {
        m23530e();
        super.set(i, t);
    }

    @Override // com.badlogic.gdx.utils.Array
    public T[] setSize(int i) {
        m23530e();
        return (T[]) super.setSize(i);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void shuffle() {
        m23530e();
        super.shuffle();
    }

    @Override // com.badlogic.gdx.utils.Array
    public void sort(Comparator<? super T> comparator) {
        m23530e();
        super.sort(comparator);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void swap(int i, int i2) {
        m23530e();
        super.swap(i, i2);
    }

    @Override // com.badlogic.gdx.utils.Array
    public void truncate(int i) {
        m23530e();
        super.truncate(i);
    }

    public SnapshotArray(boolean z, int i) {
        super(z, i);
    }

    public SnapshotArray(boolean z, T[] tArr, int i, int i2) {
        super(z, tArr, i, i2);
    }

    public SnapshotArray(Class cls) {
        super(cls);
    }

    public SnapshotArray(int i) {
        super(i);
    }

    public SnapshotArray(T[] tArr) {
        super(tArr);
    }
}
