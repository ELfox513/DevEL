package com.prineside.tdi2;

import com.badlogic.gdx.utils.DelayedRemovalArray;
import com.badlogic.gdx.utils.Disposable;
/* loaded from: classes2.dex */
public interface Manager extends Disposable {

    /* loaded from: classes2.dex */
    public static abstract class ManagerAdapter implements Manager {
        @Override // com.prineside.tdi2.Manager
        public void clearPools() {
        }

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
        }

        @Override // com.prineside.tdi2.Manager
        public void postRender(float f) {
        }

        @Override // com.prineside.tdi2.Manager
        public void preRender(float f) {
        }

        @Override // com.prineside.tdi2.Manager
        public void setup() {
        }

        @Override // com.prineside.tdi2.Manager
        public void test() {
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ManagerWithListeners<T> implements Manager {

        /* renamed from: a */
        public final DelayedRemovalArray<T> f8742a = new DelayedRemovalArray<>();

        @Override // com.badlogic.gdx.utils.Disposable
        public void dispose() {
        }

        @Override // com.prineside.tdi2.Manager
        public void postRender(float f) {
        }

        @Override // com.prineside.tdi2.Manager
        public void preRender(float f) {
        }

        @Override // com.prineside.tdi2.Manager
        public void setup() {
        }

        @Override // com.prineside.tdi2.Manager
        public void test() {
        }

        public void addListener(T t) {
            if (t != null) {
                if (!this.f8742a.contains(t, true)) {
                    this.f8742a.add(t);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("listener is null");
        }

        public void removeListener(T t) {
            if (t != null) {
                this.f8742a.removeValue(t, true);
                return;
            }
            throw new IllegalArgumentException("listener is null");
        }
    }

    void clearPools();

    void postRender(float f);

    void preRender(float f);

    void setup();

    void test();
}
