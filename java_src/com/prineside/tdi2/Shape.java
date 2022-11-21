package com.prineside.tdi2;

import com.badlogic.gdx.graphics.g2d.Batch;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.Pool;
/* loaded from: classes2.dex */
public abstract class Shape implements Pool.Poolable {

    /* loaded from: classes2.dex */
    public static abstract class Factory<T extends Shape> implements Disposable {

        /* renamed from: a */
        public final Pool<T> f8889a = (Pool<T>) new Pool<T>(1, 1024) { // from class: com.prineside.tdi2.Shape.Factory.1
            @Override // com.badlogic.gdx.utils.Pool
            /* renamed from: c */
            public T newObject() {
                return (T) Factory.this.mo21056a();
            }
        };

        /* renamed from: a */
        public abstract T mo21056a();

        public void clearPool() {
            this.f8889a.clear();
        }

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
        }

        public void free(T t) {
            this.f8889a.free(t);
        }

        public final T obtain() {
            return this.f8889a.obtain();
        }

        public abstract void setup();
    }

    public abstract void draw(Batch batch);
}
