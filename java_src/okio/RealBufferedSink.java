package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
final class RealBufferedSink implements BufferedSink {

    /* renamed from: a */
    public boolean f19757a;
    public final Buffer buffer = new Buffer();
    public final Sink sink;

    @Override // okio.BufferedSink
    public Buffer buffer() {
        return this.buffer;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f19757a;
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.RealBufferedSink.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSink.this.close();
            }

            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.f19757a) {
                    realBufferedSink.buffer.writeByte((int) ((byte) i));
                    RealBufferedSink.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.f19757a) {
                    realBufferedSink.flush();
                }
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.f19757a) {
                    realBufferedSink.buffer.write(bArr, i, i2);
                    RealBufferedSink.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // okio.Sink
    public Timeout timeout() {
        return this.sink.timeout();
    }

    public String toString() {
        return "buffer(" + this.sink + ")";
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) {
        if (!this.f19757a) {
            this.buffer.write(buffer, j);
            emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeString(String str, Charset charset) {
        if (!this.f19757a) {
            this.buffer.writeString(str, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8(String str) {
        if (!this.f19757a) {
            this.buffer.writeUtf8(str);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f19757a) {
            return;
        }
        Throwable th = null;
        try {
            Buffer buffer = this.buffer;
            long j = buffer.f19734b;
            if (j > 0) {
                this.sink.write(buffer, j);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.sink.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f19757a = true;
        if (th != null) {
            Util.sneakyRethrow(th);
        }
    }

    @Override // okio.BufferedSink
    public BufferedSink emit() {
        if (!this.f19757a) {
            long size = this.buffer.size();
            if (size > 0) {
                this.sink.write(this.buffer, size);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink emitCompleteSegments() {
        if (!this.f19757a) {
            long completeSegmentByteCount = this.buffer.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                this.sink.write(this.buffer, completeSegmentByteCount);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (!this.f19757a) {
            Buffer buffer = this.buffer;
            long j = buffer.f19734b;
            if (j > 0) {
                this.sink.write(buffer, j);
            }
            this.sink.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) {
        if (source != null) {
            long j = 0;
            while (true) {
                long read = source.read(this.buffer, 8192L);
                if (read != -1) {
                    j += read;
                    emitCompleteSegments();
                } else {
                    return j;
                }
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    @Override // okio.BufferedSink
    public BufferedSink writeByte(int i) {
        if (!this.f19757a) {
            this.buffer.writeByte(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeDecimalLong(long j) {
        if (!this.f19757a) {
            this.buffer.writeDecimalLong(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeHexadecimalUnsignedLong(long j) {
        if (!this.f19757a) {
            this.buffer.writeHexadecimalUnsignedLong(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeInt(int i) {
        if (!this.f19757a) {
            this.buffer.writeInt(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeIntLe(int i) {
        if (!this.f19757a) {
            this.buffer.writeIntLe(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeLong(long j) {
        if (!this.f19757a) {
            this.buffer.writeLong(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeLongLe(long j) {
        if (!this.f19757a) {
            this.buffer.writeLongLe(j);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeShort(int i) {
        if (!this.f19757a) {
            this.buffer.writeShort(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeShortLe(int i) {
        if (!this.f19757a) {
            this.buffer.writeShortLe(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8CodePoint(int i) {
        if (!this.f19757a) {
            this.buffer.writeUtf8CodePoint(i);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    public RealBufferedSink(Sink sink) {
        if (sink != null) {
            this.sink = sink;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    @Override // okio.BufferedSink
    public BufferedSink write(ByteString byteString) {
        if (!this.f19757a) {
            this.buffer.write(byteString);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeString(String str, int i, int i2, Charset charset) {
        if (!this.f19757a) {
            this.buffer.writeString(str, i, i2, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink writeUtf8(String str, int i, int i2) {
        if (!this.f19757a) {
            this.buffer.writeUtf8(str, i, i2);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink write(byte[] bArr) {
        if (!this.f19757a) {
            this.buffer.write(bArr);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink write(byte[] bArr, int i, int i2) {
        if (!this.f19757a) {
            this.buffer.write(bArr, i, i2);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (!this.f19757a) {
            int write = this.buffer.write(byteBuffer);
            emitCompleteSegments();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public BufferedSink write(Source source, long j) {
        while (j > 0) {
            long read = source.read(this.buffer, j);
            if (read != -1) {
                j -= read;
                emitCompleteSegments();
            } else {
                throw new EOFException();
            }
        }
        return this;
    }
}
