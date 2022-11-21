package com.badlogic.gdx.utils.async;

import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class AsyncExecutor implements Disposable {

    /* renamed from: a */
    public final ExecutorService f6805a;

    public AsyncExecutor(int i) {
        this(i, "AsynchExecutor-Thread");
    }

    public AsyncExecutor(int i, final String str) {
        this.f6805a = Executors.newFixedThreadPool(i, new ThreadFactory() { // from class: com.badlogic.gdx.utils.async.AsyncExecutor.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setDaemon(true);
                return thread;
            }
        });
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        this.f6805a.shutdown();
        try {
            this.f6805a.awaitTermination(Long.MAX_VALUE, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            throw new GdxRuntimeException("Couldn't shutdown loading thread", e);
        }
    }

    public <T> AsyncResult<T> submit(final AsyncTask<T> asyncTask) {
        if (!this.f6805a.isShutdown()) {
            return new AsyncResult<>(this.f6805a.submit(new Callable<T>() { // from class: com.badlogic.gdx.utils.async.AsyncExecutor.2
                /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
                @Override // java.util.concurrent.Callable
                public T call() {
                    return asyncTask.call();
                }
            }));
        }
        throw new GdxRuntimeException("Cannot run tasks on an executor that has been shutdown (disposed)");
    }
}
