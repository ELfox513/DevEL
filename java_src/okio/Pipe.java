package okio;

import java.io.IOException;
/* loaded from: classes.dex */
public final class Pipe {

    /* renamed from: a */
    public final long f19749a;

    /* renamed from: c */
    public boolean f19751c;

    /* renamed from: d */
    public boolean f19752d;

    /* renamed from: b */
    public final Buffer f19750b = new Buffer();
    private final Sink sink = new PipeSink();
    private final Source source = new PipeSource();

    /* loaded from: classes.dex */
    public final class PipeSink implements Sink {

        /* renamed from: a */
        public final Timeout f19753a = new Timeout();

        @Override // okio.Sink
        public Timeout timeout() {
            return this.f19753a;
        }

        public PipeSink() {
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (Pipe.this.f19750b) {
                Pipe pipe = Pipe.this;
                if (pipe.f19751c) {
                    return;
                }
                if (pipe.f19752d && pipe.f19750b.size() > 0) {
                    throw new IOException("source is closed");
                }
                Pipe pipe2 = Pipe.this;
                pipe2.f19751c = true;
                pipe2.f19750b.notifyAll();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            synchronized (Pipe.this.f19750b) {
                Pipe pipe = Pipe.this;
                if (!pipe.f19751c) {
                    if (pipe.f19752d && pipe.f19750b.size() > 0) {
                        throw new IOException("source is closed");
                    }
                } else {
                    throw new IllegalStateException("closed");
                }
            }
        }

        @Override // okio.Sink
        public void write(Buffer buffer, long j) {
            synchronized (Pipe.this.f19750b) {
                if (!Pipe.this.f19751c) {
                    while (j > 0) {
                        Pipe pipe = Pipe.this;
                        if (!pipe.f19752d) {
                            long size = pipe.f19749a - pipe.f19750b.size();
                            if (size == 0) {
                                this.f19753a.waitUntilNotified(Pipe.this.f19750b);
                            } else {
                                long min = Math.min(size, j);
                                Pipe.this.f19750b.write(buffer, min);
                                j -= min;
                                Pipe.this.f19750b.notifyAll();
                            }
                        } else {
                            throw new IOException("source is closed");
                        }
                    }
                } else {
                    throw new IllegalStateException("closed");
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public final class PipeSource implements Source {

        /* renamed from: a */
        public final Timeout f19755a = new Timeout();

        @Override // okio.Source
        public Timeout timeout() {
            return this.f19755a;
        }

        public PipeSource() {
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            synchronized (Pipe.this.f19750b) {
                Pipe pipe = Pipe.this;
                pipe.f19752d = true;
                pipe.f19750b.notifyAll();
            }
        }

        @Override // okio.Source
        public long read(Buffer buffer, long j) {
            synchronized (Pipe.this.f19750b) {
                if (!Pipe.this.f19752d) {
                    while (Pipe.this.f19750b.size() == 0) {
                        Pipe pipe = Pipe.this;
                        if (pipe.f19751c) {
                            return -1L;
                        }
                        this.f19755a.waitUntilNotified(pipe.f19750b);
                    }
                    long read = Pipe.this.f19750b.read(buffer, j);
                    Pipe.this.f19750b.notifyAll();
                    return read;
                }
                throw new IllegalStateException("closed");
            }
        }
    }

    public final Sink sink() {
        return this.sink;
    }

    public final Source source() {
        return this.source;
    }

    public Pipe(long j) {
        if (j >= 1) {
            this.f19749a = j;
            return;
        }
        throw new IllegalArgumentException("maxBufferSize < 1: " + j);
    }
}
