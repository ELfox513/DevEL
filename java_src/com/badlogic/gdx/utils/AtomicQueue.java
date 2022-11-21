package com.badlogic.gdx.utils;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes.dex */
public class AtomicQueue<T> {

    /* renamed from: a */
    public final AtomicInteger f6418a = new AtomicInteger();

    /* renamed from: b */
    public final AtomicInteger f6419b = new AtomicInteger();

    /* renamed from: c */
    public final AtomicReferenceArray<T> f6420c;

    /* renamed from: a */
    public final int m23690a(int i) {
        return (i + 1) % this.f6420c.length();
    }

    @Null
    public T poll() {
        int i = this.f6419b.get();
        if (i == this.f6418a.get()) {
            return null;
        }
        T t = this.f6420c.get(i);
        this.f6419b.set(m23690a(i));
        return t;
    }

    public boolean put(@Null T t) {
        int i = this.f6418a.get();
        int i2 = this.f6419b.get();
        int m23690a = m23690a(i);
        if (m23690a == i2) {
            return false;
        }
        this.f6420c.set(i, t);
        this.f6418a.set(m23690a);
        return true;
    }

    public AtomicQueue(int i) {
        this.f6420c = new AtomicReferenceArray<>(i);
    }
}
