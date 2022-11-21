package com.esotericsoftware.kryonet;

import com.esotericsoftware.minlog.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class Listener {

    /* loaded from: classes.dex */
    public static class LagListener extends QueuedListener {

        /* renamed from: b */
        public final ScheduledExecutorService f7497b;

        /* renamed from: c */
        public final int f7498c;

        /* renamed from: d */
        public final int f7499d;

        /* renamed from: e */
        public final LinkedList<Runnable> f7500e;

        @Override // com.esotericsoftware.kryonet.Listener.QueuedListener
        public void queue(Runnable runnable) {
            double d;
            synchronized (this.f7500e) {
                this.f7500e.addFirst(runnable);
            }
            int i = this.f7498c;
            double random = Math.random();
            Double.isNaN(this.f7499d - this.f7498c);
            this.f7497b.schedule(new Runnable() { // from class: com.esotericsoftware.kryonet.Listener.LagListener.1
                @Override // java.lang.Runnable
                public void run() {
                    Runnable removeLast;
                    synchronized (LagListener.this.f7500e) {
                        removeLast = LagListener.this.f7500e.removeLast();
                    }
                    removeLast.run();
                }
            }, i + ((int) (random * d)), TimeUnit.MILLISECONDS);
        }

        public LagListener(int i, int i2, Listener listener) {
            super(listener);
            this.f7500e = new LinkedList<>();
            this.f7498c = i;
            this.f7499d = i2;
            this.f7497b = Executors.newScheduledThreadPool(1);
        }
    }

    /* loaded from: classes.dex */
    public static class ReflectionListener extends Listener {

        /* renamed from: a */
        public final HashMap<Class, Method> f7512a = new HashMap<>();

        @Override // com.esotericsoftware.kryonet.Listener
        public void received(Connection connection, Object obj) {
            Class<?> cls = obj.getClass();
            Method method = this.f7512a.get(cls);
            if (method == null) {
                try {
                    if (this.f7512a.containsKey(cls)) {
                        return;
                    }
                    try {
                        method = getClass().getMethod("received", Connection.class, cls);
                    } catch (NoSuchMethodException unused) {
                        if (Log.DEBUG) {
                            Log.debug("kryonet", "Unable to find listener method: " + getClass().getName() + "#received(Connection, " + cls.getName() + ")");
                        }
                        return;
                    } catch (SecurityException e) {
                        if (Log.ERROR) {
                            Log.error("kryonet", "Unable to access method: received(Connection, " + cls.getName() + ")", e);
                        }
                        return;
                    }
                } finally {
                    this.f7512a.put(cls, method);
                }
            }
            try {
                method.invoke(this, connection, obj);
            } catch (Throwable th) {
                th = th;
                if ((th instanceof InvocationTargetException) && th.getCause() != null) {
                    th = th.getCause();
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw new RuntimeException("Error invoking method: " + getClass().getName() + "#received(Connection, " + cls.getName() + ")", th);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ThreadedListener extends QueuedListener {
        public final ExecutorService threadPool;

        public ThreadedListener(Listener listener) {
            this(listener, Executors.newFixedThreadPool(1));
        }

        @Override // com.esotericsoftware.kryonet.Listener.QueuedListener
        public void queue(Runnable runnable) {
            this.threadPool.execute(runnable);
        }

        public ThreadedListener(Listener listener, ExecutorService executorService) {
            super(listener);
            if (executorService != null) {
                this.threadPool = executorService;
                return;
            }
            throw new IllegalArgumentException("threadPool cannot be null.");
        }
    }

    public void connected(Connection connection) {
    }

    public void disconnected(Connection connection) {
    }

    public void idle(Connection connection) {
    }

    public void received(Connection connection, Object obj) {
    }

    /* loaded from: classes.dex */
    public static abstract class QueuedListener extends Listener {

        /* renamed from: a */
        public final Listener f7502a;

        @Override // com.esotericsoftware.kryonet.Listener
        public void connected(final Connection connection) {
            queue(new Runnable() { // from class: com.esotericsoftware.kryonet.Listener.QueuedListener.1
                @Override // java.lang.Runnable
                public void run() {
                    QueuedListener.this.f7502a.connected(connection);
                }
            });
        }

        @Override // com.esotericsoftware.kryonet.Listener
        public void disconnected(final Connection connection) {
            queue(new Runnable() { // from class: com.esotericsoftware.kryonet.Listener.QueuedListener.2
                @Override // java.lang.Runnable
                public void run() {
                    QueuedListener.this.f7502a.disconnected(connection);
                }
            });
        }

        @Override // com.esotericsoftware.kryonet.Listener
        public void idle(final Connection connection) {
            queue(new Runnable() { // from class: com.esotericsoftware.kryonet.Listener.QueuedListener.4
                @Override // java.lang.Runnable
                public void run() {
                    QueuedListener.this.f7502a.idle(connection);
                }
            });
        }

        public abstract void queue(Runnable runnable);

        @Override // com.esotericsoftware.kryonet.Listener
        public void received(final Connection connection, final Object obj) {
            queue(new Runnable() { // from class: com.esotericsoftware.kryonet.Listener.QueuedListener.3
                @Override // java.lang.Runnable
                public void run() {
                    QueuedListener.this.f7502a.received(connection, obj);
                }
            });
        }

        public QueuedListener(Listener listener) {
            if (listener != null) {
                this.f7502a = listener;
                return;
            }
            throw new IllegalArgumentException("listener cannot be null.");
        }
    }
}
