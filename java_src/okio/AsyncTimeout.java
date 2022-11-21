package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class AsyncTimeout extends Timeout {
    private static final long IDLE_TIMEOUT_MILLIS;
    private static final long IDLE_TIMEOUT_NANOS;
    private static final int TIMEOUT_WRITE_SIZE = 65536;

    /* renamed from: a */
    public static AsyncTimeout f19728a;
    private boolean inQueue;
    private AsyncTimeout next;
    private long timeoutAt;

    /* loaded from: classes.dex */
    public static final class Watchdog extends Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0015, code lost:
            r1.timedOut();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<okio.AsyncTimeout> r0 = okio.AsyncTimeout.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                okio.AsyncTimeout r1 = okio.AsyncTimeout.m13744a()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                okio.AsyncTimeout r2 = okio.AsyncTimeout.f19728a     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                okio.AsyncTimeout.f19728a = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.timedOut()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L1d
            L1c:
                throw r1
            L1d:
                goto L1c
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.AsyncTimeout.Watchdog.run():void");
        }
    }

    private long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    public final Sink sink(final Sink sink) {
        return new Sink() { // from class: okio.AsyncTimeout.1
            @Override // okio.Sink
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + sink + ")";
            }

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.close();
                        AsyncTimeout.this.m13742c(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.m13743b(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.m13742c(false);
                    throw th;
                }
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.flush();
                        AsyncTimeout.this.m13742c(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.m13743b(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.m13742c(false);
                    throw th;
                }
            }

            @Override // okio.Sink
            public void write(Buffer buffer, long j) {
                Util.checkOffsetAndCount(buffer.f19734b, 0L, j);
                while (true) {
                    long j2 = 0;
                    if (j > 0) {
                        Segment segment = buffer.f19733a;
                        while (true) {
                            if (j2 >= 65536) {
                                break;
                            }
                            j2 += segment.f19763c - segment.f19762b;
                            if (j2 >= j) {
                                j2 = j;
                                break;
                            }
                            segment = segment.f19766f;
                        }
                        AsyncTimeout.this.enter();
                        try {
                            try {
                                sink.write(buffer, j2);
                                j -= j2;
                                AsyncTimeout.this.m13742c(true);
                            } catch (IOException e) {
                                throw AsyncTimeout.this.m13743b(e);
                            }
                        } catch (Throwable th) {
                            AsyncTimeout.this.m13742c(false);
                            throw th;
                        }
                    } else {
                        return;
                    }
                }
            }
        };
    }

    public final Source source(final Source source) {
        return new Source() { // from class: okio.AsyncTimeout.2
            @Override // okio.Source
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + source + ")";
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    try {
                        source.close();
                        AsyncTimeout.this.m13742c(true);
                    } catch (IOException e) {
                        throw AsyncTimeout.this.m13743b(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.m13742c(false);
                    throw th;
                }
            }

            @Override // okio.Source
            public long read(Buffer buffer, long j) {
                AsyncTimeout.this.enter();
                try {
                    try {
                        long read = source.read(buffer, j);
                        AsyncTimeout.this.m13742c(true);
                        return read;
                    } catch (IOException e) {
                        throw AsyncTimeout.this.m13743b(e);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.m13742c(false);
                    throw th;
                }
            }
        };
    }

    public void timedOut() {
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        IDLE_TIMEOUT_MILLIS = millis;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* renamed from: a */
    public static AsyncTimeout m13744a() {
        AsyncTimeout asyncTimeout = f19728a.next;
        if (asyncTimeout == null) {
            long nanoTime = System.nanoTime();
            AsyncTimeout.class.wait(IDLE_TIMEOUT_MILLIS);
            if (f19728a.next != null || System.nanoTime() - nanoTime < IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return f19728a;
        }
        long remainingNanos = asyncTimeout.remainingNanos(System.nanoTime());
        if (remainingNanos > 0) {
            long j = remainingNanos / 1000000;
            AsyncTimeout.class.wait(j, (int) (remainingNanos - (1000000 * j)));
            return null;
        }
        f19728a.next = asyncTimeout.next;
        asyncTimeout.next = null;
        return asyncTimeout;
    }

    private static synchronized boolean cancelScheduledTimeout(AsyncTimeout asyncTimeout) {
        synchronized (AsyncTimeout.class) {
            AsyncTimeout asyncTimeout2 = f19728a;
            while (asyncTimeout2 != null) {
                AsyncTimeout asyncTimeout3 = asyncTimeout2.next;
                if (asyncTimeout3 == asyncTimeout) {
                    asyncTimeout2.next = asyncTimeout.next;
                    asyncTimeout.next = null;
                    return false;
                }
                asyncTimeout2 = asyncTimeout3;
            }
            return true;
        }
    }

    private static synchronized void scheduleTimeout(AsyncTimeout asyncTimeout, long j, boolean z) {
        synchronized (AsyncTimeout.class) {
            if (f19728a == null) {
                f19728a = new AsyncTimeout();
                new Watchdog().start();
            }
            long nanoTime = System.nanoTime();
            if (j != 0 && z) {
                asyncTimeout.timeoutAt = Math.min(j, asyncTimeout.deadlineNanoTime() - nanoTime) + nanoTime;
            } else if (j != 0) {
                asyncTimeout.timeoutAt = j + nanoTime;
            } else if (z) {
                asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
            } else {
                throw new AssertionError();
            }
            long remainingNanos = asyncTimeout.remainingNanos(nanoTime);
            AsyncTimeout asyncTimeout2 = f19728a;
            while (true) {
                AsyncTimeout asyncTimeout3 = asyncTimeout2.next;
                if (asyncTimeout3 == null || remainingNanos < asyncTimeout3.remainingNanos(nanoTime)) {
                    break;
                }
                asyncTimeout2 = asyncTimeout2.next;
            }
            asyncTimeout.next = asyncTimeout2.next;
            asyncTimeout2.next = asyncTimeout;
            if (asyncTimeout2 == f19728a) {
                AsyncTimeout.class.notify();
            }
        }
    }

    public final void enter() {
        if (!this.inQueue) {
            long timeoutNanos = timeoutNanos();
            boolean hasDeadline = hasDeadline();
            if (timeoutNanos == 0 && !hasDeadline) {
                return;
            }
            this.inQueue = true;
            scheduleTimeout(this, timeoutNanos, hasDeadline);
            return;
        }
        throw new IllegalStateException("Unbalanced enter/exit");
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    public IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* renamed from: b */
    public final IOException m13743b(IOException iOException) {
        if (!exit()) {
            return iOException;
        }
        return newTimeoutException(iOException);
    }

    /* renamed from: c */
    public final void m13742c(boolean z) {
        if (exit() && z) {
            throw newTimeoutException(null);
        }
    }
}
