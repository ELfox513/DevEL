package com.badlogic.gdx.utils;
/* loaded from: classes.dex */
public abstract class FlushablePool<T> extends Pool<T> {

    /* renamed from: b */
    public Array<T> f6442b;

    public FlushablePool() {
        this.f6442b = new Array<>();
    }

    public void flush() {
        super.freeAll(this.f6442b);
        this.f6442b.clear();
    }

    @Override // com.badlogic.gdx.utils.Pool
    public void free(T t) {
        this.f6442b.removeValue(t, true);
        super.free(t);
    }

    @Override // com.badlogic.gdx.utils.Pool
    public void freeAll(Array<T> array) {
        this.f6442b.removeAll(array, true);
        super.freeAll(array);
    }

    public FlushablePool(int i) {
        super(i);
        this.f6442b = new Array<>();
    }

    @Override // com.badlogic.gdx.utils.Pool
    public T obtain() {
        T t = (T) super.obtain();
        this.f6442b.add(t);
        return t;
    }

    public FlushablePool(int i, int i2) {
        super(i, i2);
        this.f6442b = new Array<>();
    }
}
