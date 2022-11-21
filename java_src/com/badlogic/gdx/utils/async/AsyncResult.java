package com.badlogic.gdx.utils.async;

import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
/* loaded from: classes.dex */
public class AsyncResult<T> {

    /* renamed from: a */
    public final Future<T> f6810a;

    public boolean isDone() {
        return this.f6810a.isDone();
    }

    public T get() {
        try {
            return this.f6810a.get();
        } catch (InterruptedException unused) {
            return null;
        } catch (ExecutionException e) {
            throw new GdxRuntimeException(e.getCause());
        }
    }

    public AsyncResult(Future<T> future) {
        this.f6810a = future;
    }
}
