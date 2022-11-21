package okio;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
final class RealBufferedSource implements BufferedSource {

    /* renamed from: a */
    public boolean f19759a;
    public final Buffer buffer = new Buffer();
    public final Source source;

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this.buffer;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString) {
        return indexOfElement(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource.1
            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.f19759a) {
                    Buffer buffer = realBufferedSource.buffer;
                    if (buffer.f19734b == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                        return -1;
                    }
                    return RealBufferedSource.this.buffer.readByte() & DefaultClassResolver.NAME;
                }
                throw new IOException("closed");
            }

            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int available() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.f19759a) {
                    return (int) Math.min(realBufferedSource.buffer.f19734b, 2147483647L);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                if (!RealBufferedSource.this.f19759a) {
                    Util.checkOffsetAndCount(bArr.length, i, i2);
                    RealBufferedSource realBufferedSource = RealBufferedSource.this;
                    Buffer buffer = realBufferedSource.buffer;
                    if (buffer.f19734b == 0 && realBufferedSource.source.read(buffer, 8192L) == -1) {
                        return -1;
                    }
                    return RealBufferedSource.this.buffer.read(bArr, i, i2);
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f19759a;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString) {
        return rangeEquals(j, byteString, 0, byteString.size());
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) {
        if (buffer != null) {
            if (j >= 0) {
                if (!this.f19759a) {
                    Buffer buffer2 = this.buffer;
                    if (buffer2.f19734b == 0 && this.source.read(buffer2, 8192L) == -1) {
                        return -1L;
                    }
                    return this.buffer.read(buffer, Math.min(j, this.buffer.f19734b));
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteArray();
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        this.buffer.writeAll(this.source);
        return this.buffer.readByteString();
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) {
        try {
            require(bArr.length);
            this.buffer.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                Buffer buffer = this.buffer;
                long j = buffer.f19734b;
                if (j <= 0) {
                    throw e;
                }
                int read = buffer.read(bArr, i, (int) j);
                if (read == -1) {
                    throw new AssertionError();
                }
                i += read;
            }
        }
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        if (charset != null) {
            this.buffer.writeAll(this.source);
            return this.buffer.readString(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        this.buffer.writeAll(this.source);
        return this.buffer.readUtf8();
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public void require(long j) {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    public String toString() {
        return "buffer(" + this.source + ")";
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f19759a) {
            return;
        }
        this.f19759a = true;
        this.source.close();
        this.buffer.clear();
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (!this.f19759a) {
            if (this.buffer.exhausted() && this.source.read(this.buffer, 8192L) == -1) {
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j) {
        return indexOf(b, j, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j) {
        if (this.f19759a) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long indexOfElement = this.buffer.indexOfElement(byteString, j);
            if (indexOfElement != -1) {
                return indexOfElement;
            }
            Buffer buffer = this.buffer;
            long j2 = buffer.f19734b;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, j2);
        }
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString, int i, int i2) {
        if (!this.f19759a) {
            if (j < 0 || i < 0 || i2 < 0 || byteString.size() - i < i2) {
                return false;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = i3 + j;
                if (!request(1 + j2) || this.buffer.getByte(j2) != byteString.getByte(i + i3)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) {
        if (sink != null) {
            long j = 0;
            while (this.source.read(this.buffer, 8192L) != -1) {
                long completeSegmentByteCount = this.buffer.completeSegmentByteCount();
                if (completeSegmentByteCount > 0) {
                    j += completeSegmentByteCount;
                    sink.write(this.buffer, completeSegmentByteCount);
                }
            }
            if (this.buffer.size() > 0) {
                long size = j + this.buffer.size();
                Buffer buffer = this.buffer;
                sink.write(buffer, buffer.size());
                return size;
            }
            return j;
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        require(1L);
        return this.buffer.readByte();
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() {
        byte b;
        require(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            b = this.buffer.getByte(i);
            if ((b < 48 || b > 57) && !(i == 0 && b == 45)) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(b)));
        }
        return this.buffer.readDecimalLong();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
        if (r1 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
        throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(r3)));
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() {
        /*
            r6 = this;
            r0 = 1
            r6.require(r0)
            r0 = 0
            r1 = 0
        L7:
            int r2 = r1 + 1
            long r3 = (long) r2
            boolean r3 = r6.request(r3)
            if (r3 == 0) goto L4a
            okio.Buffer r3 = r6.buffer
            long r4 = (long) r1
            byte r3 = r3.getByte(r4)
            r4 = 48
            if (r3 < r4) goto L1f
            r4 = 57
            if (r3 <= r4) goto L30
        L1f:
            r4 = 97
            if (r3 < r4) goto L27
            r4 = 102(0x66, float:1.43E-43)
            if (r3 <= r4) goto L30
        L27:
            r4 = 65
            if (r3 < r4) goto L32
            r4 = 70
            if (r3 <= r4) goto L30
            goto L32
        L30:
            r1 = r2
            goto L7
        L32:
            if (r1 == 0) goto L35
            goto L4a
        L35:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Byte r3 = java.lang.Byte.valueOf(r3)
            r2[r0] = r3
            java.lang.String r0 = "Expected leading [0-9a-fA-F] character but was %#x"
            java.lang.String r0 = java.lang.String.format(r0, r2)
            r1.<init>(r0)
            throw r1
        L4a:
            okio.Buffer r0 = r6.buffer
            long r0 = r0.readHexadecimalUnsignedLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() {
        require(4L);
        return this.buffer.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        require(4L);
        return this.buffer.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() {
        require(8L);
        return this.buffer.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        require(8L);
        return this.buffer.readLongLe();
    }

    @Override // okio.BufferedSource
    public short readShort() {
        require(2L);
        return this.buffer.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        require(2L);
        return this.buffer.readShortLe();
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() {
        require(1L);
        byte b = this.buffer.getByte(0L);
        if ((b & 224) == 192) {
            require(2L);
        } else if ((b & 240) == 224) {
            require(3L);
        } else if ((b & 248) == 240) {
            require(4L);
        }
        return this.buffer.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        if (indexOf == -1) {
            long j = this.buffer.f19734b;
            if (j != 0) {
                return readUtf8(j);
            }
            return null;
        }
        return this.buffer.m13741c(indexOf);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) {
        if (j >= 0) {
            long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
            long indexOf = indexOf((byte) 10, 0L, j2);
            if (indexOf != -1) {
                return this.buffer.m13741c(indexOf);
            }
            if (j2 < Long.MAX_VALUE && request(j2) && this.buffer.getByte(j2 - 1) == 13 && request(1 + j2) && this.buffer.getByte(j2) == 10) {
                return this.buffer.m13741c(j2);
            }
            Buffer buffer = new Buffer();
            Buffer buffer2 = this.buffer;
            buffer2.copyTo(buffer, 0L, Math.min(32L, buffer2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.buffer.size(), j) + " content=" + buffer.readByteString().hex() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        Buffer buffer;
        if (j >= 0) {
            if (!this.f19759a) {
                do {
                    buffer = this.buffer;
                    if (buffer.f19734b >= j) {
                        return true;
                    }
                } while (this.source.read(buffer, 8192L) != -1);
                return false;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException("byteCount < 0: " + j);
    }

    @Override // okio.BufferedSource
    public int select(Options options) {
        if (!this.f19759a) {
            do {
                int m13740f = this.buffer.m13740f(options, true);
                if (m13740f == -1) {
                    return -1;
                }
                if (m13740f != -2) {
                    this.buffer.skip(options.f19747a[m13740f].size());
                    return m13740f;
                }
            } while (this.source.read(this.buffer, 8192L) != -1);
            return -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    public void skip(long j) {
        if (!this.f19759a) {
            while (j > 0) {
                Buffer buffer = this.buffer;
                if (buffer.f19734b == 0 && this.source.read(buffer, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.buffer.size());
                this.buffer.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    public RealBufferedSource(Source source) {
        if (source != null) {
            this.source = source;
            return;
        }
        throw new NullPointerException("source == null");
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j, long j2) {
        if (this.f19759a) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        while (j < j2) {
            long indexOf = this.buffer.indexOf(b, j, j2);
            if (indexOf == -1) {
                Buffer buffer = this.buffer;
                long j3 = buffer.f19734b;
                if (j3 >= j2 || this.source.read(buffer, 8192L) == -1) {
                    break;
                }
                j = Math.max(j, j3);
            } else {
                return indexOf;
            }
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) {
        require(j);
        return this.buffer.readByteArray(j);
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) {
        require(j);
        return this.buffer.readByteString(j);
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j) {
        require(j);
        return this.buffer.readUtf8(j);
    }

    @Override // okio.BufferedSource
    public String readString(long j, Charset charset) {
        require(j);
        if (charset != null) {
            return this.buffer.readString(j, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer buffer, long j) {
        try {
            require(j);
            this.buffer.readFully(buffer, j);
        } catch (EOFException e) {
            buffer.writeAll(this.buffer);
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i, int i2) {
        long j = i2;
        Util.checkOffsetAndCount(bArr.length, i, j);
        Buffer buffer = this.buffer;
        if (buffer.f19734b == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(bArr, i, (int) Math.min(j, this.buffer.f19734b));
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString) {
        return indexOf(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString, long j) {
        if (this.f19759a) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long indexOf = this.buffer.indexOf(byteString, j);
            if (indexOf != -1) {
                return indexOf;
            }
            Buffer buffer = this.buffer;
            long j2 = buffer.f19734b;
            if (this.source.read(buffer, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, (j2 - byteString.size()) + 1);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        Buffer buffer = this.buffer;
        if (buffer.f19734b == 0 && this.source.read(buffer, 8192L) == -1) {
            return -1;
        }
        return this.buffer.read(byteBuffer);
    }
}
