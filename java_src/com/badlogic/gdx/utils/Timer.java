package com.badlogic.gdx.utils;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.LifecycleListener;
/* loaded from: classes.dex */
public class Timer {

    /* renamed from: b */
    public static final Object f6763b = new Object();

    /* renamed from: c */
    public static TimerThread f6764c;

    /* renamed from: a */
    public final Array<Task> f6765a = new Array<>(false, 8);

    /* loaded from: classes.dex */
    public static abstract class Task implements Runnable {

        /* renamed from: a */
        public final Application f6766a;

        /* renamed from: b */
        public long f6767b;

        /* renamed from: d */
        public long f6768d;

        /* renamed from: k */
        public int f6769k;

        /* renamed from: p */
        public volatile Timer f6770p;

        public synchronized long getExecuteTimeMillis() {
            return this.f6767b;
        }

        public boolean isScheduled() {
            return this.f6770p != null;
        }

        @Override // java.lang.Runnable
        public abstract void run();

        public void cancel() {
            Timer timer = this.f6770p;
            if (timer != null) {
                synchronized (timer) {
                    synchronized (this) {
                        this.f6767b = 0L;
                        this.f6770p = null;
                        timer.f6765a.removeValue(this, true);
                    }
                }
                return;
            }
            synchronized (this) {
                this.f6767b = 0L;
                this.f6770p = null;
            }
        }

        public Task() {
            Application application = Gdx.app;
            this.f6766a = application;
            if (application != null) {
                return;
            }
            throw new IllegalStateException("Gdx.app not available.");
        }
    }

    /* loaded from: classes.dex */
    public static class TimerThread implements Runnable, LifecycleListener {

        /* renamed from: b */
        public final Application f6772b;

        /* renamed from: k */
        public Timer f6774k;

        /* renamed from: p */
        public long f6775p;

        /* renamed from: d */
        public final Array<Timer> f6773d = new Array<>(1);

        /* renamed from: a */
        public final Files f6771a = Gdx.files;

        @Override // com.badlogic.gdx.LifecycleListener
        public void dispose() {
            Object obj = Timer.f6763b;
            synchronized (obj) {
                if (Timer.f6764c == this) {
                    Timer.f6764c = null;
                }
                this.f6773d.clear();
                obj.notifyAll();
            }
            this.f6772b.removeLifecycleListener(this);
        }

        @Override // com.badlogic.gdx.LifecycleListener
        public void pause() {
            Object obj = Timer.f6763b;
            synchronized (obj) {
                this.f6775p = System.nanoTime() / 1000000;
                obj.notifyAll();
            }
        }

        @Override // com.badlogic.gdx.LifecycleListener
        public void resume() {
            synchronized (Timer.f6763b) {
                long nanoTime = (System.nanoTime() / 1000000) - this.f6775p;
                int i = this.f6773d.size;
                for (int i2 = 0; i2 < i; i2++) {
                    this.f6773d.get(i2).delay(nanoTime);
                }
                this.f6775p = 0L;
                Timer.f6763b.notifyAll();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                synchronized (Timer.f6763b) {
                    if (Timer.f6764c != this || this.f6771a != Gdx.files) {
                        break;
                    }
                    long j = 5000;
                    if (this.f6775p == 0) {
                        long nanoTime = System.nanoTime() / 1000000;
                        int i = this.f6773d.size;
                        for (int i2 = 0; i2 < i; i2++) {
                            j = this.f6773d.get(i2).m23494b(nanoTime, j);
                        }
                    }
                    if (Timer.f6764c != this || this.f6771a != Gdx.files) {
                        break;
                    } else if (j > 0) {
                        try {
                            Timer.f6763b.wait(j);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
            dispose();
        }

        public TimerThread() {
            Application application = Gdx.app;
            this.f6772b = application;
            application.addLifecycleListener(this);
            resume();
            Thread thread = new Thread(this, "Timer");
            thread.setDaemon(true);
            thread.start();
        }
    }

    public static Task post(Task task) {
        return instance().postTask(task);
    }

    public static Task schedule(Task task, float f) {
        return instance().scheduleTask(task, f);
    }

    /* renamed from: b */
    public synchronized long m23494b(long j, long j2) {
        int i = 0;
        int i2 = this.f6765a.size;
        while (i < i2) {
            Task task = this.f6765a.get(i);
            synchronized (task) {
                long j3 = task.f6767b;
                if (j3 > j) {
                    j2 = Math.min(j2, j3 - j);
                } else {
                    if (task.f6769k == 0) {
                        task.f6770p = null;
                        this.f6765a.removeIndex(i);
                        i--;
                        i2--;
                    } else {
                        long j4 = task.f6768d;
                        task.f6767b = j + j4;
                        j2 = Math.min(j2, j4);
                        int i3 = task.f6769k;
                        if (i3 > 0) {
                            task.f6769k = i3 - 1;
                        }
                    }
                    task.f6766a.postRunnable(task);
                }
            }
            i++;
        }
        return j2;
    }

    public synchronized void clear() {
        int i = this.f6765a.size;
        for (int i2 = 0; i2 < i; i2++) {
            Task task = this.f6765a.get(i2);
            synchronized (task) {
                task.f6767b = 0L;
                task.f6770p = null;
            }
        }
        this.f6765a.clear();
    }

    public synchronized void delay(long j) {
        int i = this.f6765a.size;
        for (int i2 = 0; i2 < i; i2++) {
            Task task = this.f6765a.get(i2);
            synchronized (task) {
                task.f6767b += j;
            }
        }
    }

    public synchronized boolean isEmpty() {
        return this.f6765a.size == 0;
    }

    public Task postTask(Task task) {
        return scheduleTask(task, 0.0f, 0.0f, 0);
    }

    public Task scheduleTask(Task task, float f) {
        return scheduleTask(task, f, 0.0f, 0);
    }

    /* renamed from: a */
    public static TimerThread m23495a() {
        TimerThread timerThread;
        synchronized (f6763b) {
            TimerThread timerThread2 = f6764c;
            if (timerThread2 == null || timerThread2.f6771a != Gdx.files) {
                if (timerThread2 != null) {
                    timerThread2.dispose();
                }
                f6764c = new TimerThread();
            }
            timerThread = f6764c;
        }
        return timerThread;
    }

    public static Timer instance() {
        Timer timer;
        synchronized (f6763b) {
            TimerThread m23495a = m23495a();
            if (m23495a.f6774k == null) {
                m23495a.f6774k = new Timer();
            }
            timer = m23495a.f6774k;
        }
        return timer;
    }

    public static Task schedule(Task task, float f, float f2) {
        return instance().scheduleTask(task, f, f2);
    }

    public Task scheduleTask(Task task, float f, float f2) {
        return scheduleTask(task, f, f2, -1);
    }

    public void start() {
        Object obj = f6763b;
        synchronized (obj) {
            Array<Timer> array = m23495a().f6773d;
            if (array.contains(this, true)) {
                return;
            }
            array.add(this);
            obj.notifyAll();
        }
    }

    public void stop() {
        synchronized (f6763b) {
            m23495a().f6773d.removeValue(this, true);
        }
    }

    public Timer() {
        start();
    }

    public static Task schedule(Task task, float f, float f2, int i) {
        return instance().scheduleTask(task, f, f2, i);
    }

    public Task scheduleTask(Task task, float f, float f2, int i) {
        Object obj = f6763b;
        synchronized (obj) {
            synchronized (this) {
                synchronized (task) {
                    if (task.f6770p == null) {
                        task.f6770p = this;
                        long nanoTime = System.nanoTime() / 1000000;
                        long j = (f * 1000.0f) + nanoTime;
                        long j2 = f6764c.f6775p;
                        if (j2 > 0) {
                            j -= nanoTime - j2;
                        }
                        task.f6767b = j;
                        task.f6768d = f2 * 1000.0f;
                        task.f6769k = i;
                        this.f6765a.add(task);
                    } else {
                        throw new IllegalArgumentException("The same task may not be scheduled twice.");
                    }
                }
            }
            obj.notifyAll();
        }
        return task;
    }
}
