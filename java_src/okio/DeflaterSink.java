package okio;

import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* loaded from: classes.dex */
public final class DeflaterSink implements Sink {
    private boolean closed;
    private final Deflater deflater;
    private final BufferedSink sink;

    public DeflaterSink(Sink sink, Deflater deflater) {
        this(Okio.buffer(sink), deflater);
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        deflate(true);
        this.sink.flush();
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return this.sink.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.sink + ")";
    }

    public DeflaterSink(BufferedSink bufferedSink, Deflater deflater) {
        if (bufferedSink == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater != null) {
            this.sink = bufferedSink;
            this.deflater = deflater;
            return;
        }
        throw new IllegalArgumentException("inflater == null");
    }

    @IgnoreJRERequirement
    private void deflate(boolean z) {
        Segment m13739h;
        int deflate;
        Buffer buffer = this.sink.buffer();
        while (true) {
            m13739h = buffer.m13739h(1);
            if (z) {
                Deflater deflater = this.deflater;
                byte[] bArr = m13739h.f19761a;
                int i = m13739h.f19763c;
                deflate = deflater.deflate(bArr, i, 8192 - i, 2);
            } else {
                Deflater deflater2 = this.deflater;
                byte[] bArr2 = m13739h.f19761a;
                int i2 = m13739h.f19763c;
                deflate = deflater2.deflate(bArr2, i2, 8192 - i2);
            }
            if (deflate > 0) {
                m13739h.f19763c += deflate;
                buffer.f19734b += deflate;
                this.sink.emitCompleteSegments();
            } else if (this.deflater.needsInput()) {
                break;
            }
        }
        if (m13739h.f19762b == m13739h.f19763c) {
            buffer.f19733a = m13739h.pop();
            SegmentPool.m13729a(m13739h);
        }
    }

    /* renamed from: c */
    public void m13734c() {
        this.deflater.finish();
        deflate(false);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        Throwable th = null;
        try {
            m13734c();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.deflater.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.sink.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.closed = true;
        if (th != null) {
            Util.sneakyRethrow(th);
        }
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) {
        Util.checkOffsetAndCount(buffer.f19734b, 0L, j);
        while (j > 0) {
            Segment segment = buffer.f19733a;
            int min = (int) Math.min(j, segment.f19763c - segment.f19762b);
            this.deflater.setInput(segment.f19761a, segment.f19762b, min);
            deflate(false);
            long j2 = min;
            buffer.f19734b -= j2;
            int i = segment.f19762b + min;
            segment.f19762b = i;
            if (i == segment.f19763c) {
                buffer.f19733a = segment.pop();
                SegmentPool.m13729a(segment);
            }
            j -= j2;
        }
    }
}
