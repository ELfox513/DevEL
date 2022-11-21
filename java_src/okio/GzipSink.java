package okio;

import java.util.zip.CRC32;
import java.util.zip.Deflater;
/* loaded from: classes.dex */
public final class GzipSink implements Sink {
    private boolean closed;
    private final CRC32 crc = new CRC32();
    private final Deflater deflater;
    private final DeflaterSink deflaterSink;
    private final BufferedSink sink;

    public final Deflater deflater() {
        return this.deflater;
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        this.deflaterSink.flush();
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return this.sink.timeout();
    }

    private void updateCrc(Buffer buffer, long j) {
        Segment segment = buffer.f19733a;
        while (j > 0) {
            int min = (int) Math.min(j, segment.f19763c - segment.f19762b);
            this.crc.update(segment.f19761a, segment.f19762b, min);
            j -= min;
            segment = segment.f19766f;
        }
    }

    private void writeFooter() {
        this.sink.writeIntLe((int) this.crc.getValue());
        this.sink.writeIntLe((int) this.deflater.getBytesRead());
    }

    private void writeHeader() {
        Buffer buffer = this.sink.buffer();
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        Throwable th = null;
        try {
            this.deflaterSink.m13734c();
            writeFooter();
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
        if (j >= 0) {
            if (j == 0) {
                return;
            }
            updateCrc(buffer, j);
            this.deflaterSink.write(buffer, j);
            return;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j);
    }

    public GzipSink(Sink sink) {
        if (sink != null) {
            Deflater deflater = new Deflater(-1, true);
            this.deflater = deflater;
            BufferedSink buffer = Okio.buffer(sink);
            this.sink = buffer;
            this.deflaterSink = new DeflaterSink(buffer, deflater);
            writeHeader();
            return;
        }
        throw new IllegalArgumentException("sink == null");
    }
}
