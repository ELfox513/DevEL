package okio;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    private static final byte[] DIGITS = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a */
    public Segment f19733a;

    /* renamed from: b */
    public long f19734b;

    /* loaded from: classes.dex */
    public static final class UnsafeCursor implements Closeable {
        public Buffer buffer;
        public byte[] data;
        public boolean readWrite;
        private Segment segment;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer != null) {
                this.buffer = null;
                this.segment = null;
                this.offset = -1L;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public final long expandBuffer(int i) {
            if (i > 0) {
                if (i <= 8192) {
                    Buffer buffer = this.buffer;
                    if (buffer != null) {
                        if (this.readWrite) {
                            long j = buffer.f19734b;
                            Segment m13739h = buffer.m13739h(i);
                            int i2 = 8192 - m13739h.f19763c;
                            m13739h.f19763c = 8192;
                            long j2 = i2;
                            this.buffer.f19734b = j + j2;
                            this.segment = m13739h;
                            this.offset = j;
                            this.data = m13739h.f19761a;
                            this.start = 8192 - i2;
                            this.end = 8192;
                            return j2;
                        }
                        throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
                    }
                    throw new IllegalStateException("not attached to a buffer");
                }
                throw new IllegalArgumentException("minByteCount > Segment.SIZE: " + i);
            }
            throw new IllegalArgumentException("minByteCount <= 0: " + i);
        }

        public final int next() {
            long j = this.offset;
            if (j != this.buffer.f19734b) {
                if (j == -1) {
                    return seek(0L);
                }
                return seek(j + (this.end - this.start));
            }
            throw new IllegalStateException();
        }

        public final long resizeBuffer(long j) {
            Buffer buffer = this.buffer;
            if (buffer != null) {
                if (this.readWrite) {
                    long j2 = buffer.f19734b;
                    if (j <= j2) {
                        if (j >= 0) {
                            long j3 = j2 - j;
                            while (true) {
                                if (j3 <= 0) {
                                    break;
                                }
                                Buffer buffer2 = this.buffer;
                                Segment segment = buffer2.f19733a.f19767g;
                                int i = segment.f19763c;
                                long j4 = i - segment.f19762b;
                                if (j4 <= j3) {
                                    buffer2.f19733a = segment.pop();
                                    SegmentPool.m13729a(segment);
                                    j3 -= j4;
                                } else {
                                    segment.f19763c = (int) (i - j3);
                                    break;
                                }
                            }
                            this.segment = null;
                            this.offset = j;
                            this.data = null;
                            this.start = -1;
                            this.end = -1;
                        } else {
                            throw new IllegalArgumentException("newSize < 0: " + j);
                        }
                    } else if (j > j2) {
                        long j5 = j - j2;
                        boolean z = true;
                        while (j5 > 0) {
                            Segment m13739h = this.buffer.m13739h(1);
                            int min = (int) Math.min(j5, 8192 - m13739h.f19763c);
                            int i2 = m13739h.f19763c + min;
                            m13739h.f19763c = i2;
                            j5 -= min;
                            if (z) {
                                this.segment = m13739h;
                                this.offset = j2;
                                this.data = m13739h.f19761a;
                                this.start = i2 - min;
                                this.end = i2;
                                z = false;
                            }
                        }
                    }
                    this.buffer.f19734b = j;
                    return j2;
                }
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
            throw new IllegalStateException("not attached to a buffer");
        }

        public final int seek(long j) {
            if (j >= -1) {
                Buffer buffer = this.buffer;
                long j2 = buffer.f19734b;
                if (j <= j2) {
                    if (j != -1 && j != j2) {
                        long j3 = 0;
                        Segment segment = buffer.f19733a;
                        Segment segment2 = this.segment;
                        if (segment2 != null) {
                            long j4 = this.offset - (this.start - segment2.f19762b);
                            if (j4 > j) {
                                j2 = j4;
                                segment2 = segment;
                                segment = segment2;
                            } else {
                                j3 = j4;
                            }
                        } else {
                            segment2 = segment;
                        }
                        if (j2 - j > j - j3) {
                            while (true) {
                                int i = segment2.f19763c;
                                int i2 = segment2.f19762b;
                                if (j < (i - i2) + j3) {
                                    break;
                                }
                                j3 += i - i2;
                                segment2 = segment2.f19766f;
                            }
                        } else {
                            while (j2 > j) {
                                segment = segment.f19767g;
                                j2 -= segment.f19763c - segment.f19762b;
                            }
                            segment2 = segment;
                            j3 = j2;
                        }
                        if (this.readWrite && segment2.f19764d) {
                            Segment m13730b = segment2.m13730b();
                            Buffer buffer2 = this.buffer;
                            if (buffer2.f19733a == segment2) {
                                buffer2.f19733a = m13730b;
                            }
                            segment2 = segment2.push(m13730b);
                            segment2.f19767g.pop();
                        }
                        this.segment = segment2;
                        this.offset = j;
                        this.data = segment2.f19761a;
                        int i3 = segment2.f19762b + ((int) (j - j3));
                        this.start = i3;
                        int i4 = segment2.f19763c;
                        this.end = i4;
                        return i4 - i3;
                    }
                    this.segment = null;
                    this.offset = j;
                    this.data = null;
                    this.start = -1;
                    this.end = -1;
                    return -1;
                }
            }
            throw new ArrayIndexOutOfBoundsException(String.format("offset=%s > size=%s", Long.valueOf(j), Long.valueOf(this.buffer.f19734b)));
        }
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final Buffer copyTo(OutputStream outputStream) {
        return copyTo(outputStream, 0L, this.f19734b);
    }

    @Override // okio.BufferedSink
    public BufferedSink emit() {
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer emitCompleteSegments() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        long j = this.f19734b;
        if (j != buffer.f19734b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        Segment segment = this.f19733a;
        Segment segment2 = buffer.f19733a;
        int i = segment.f19762b;
        int i2 = segment2.f19762b;
        while (j2 < this.f19734b) {
            long min = Math.min(segment.f19763c - i, segment2.f19763c - i2);
            int i3 = 0;
            while (i3 < min) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (segment.f19761a[i] != segment2.f19761a[i2]) {
                    return false;
                }
                i3++;
                i = i4;
                i2 = i5;
            }
            if (i == segment.f19763c) {
                segment = segment.f19766f;
                i = segment.f19762b;
            }
            if (i2 == segment2.f19763c) {
                segment2 = segment2.f19766f;
                i2 = segment2.f19762b;
            }
            j2 += min;
        }
        return true;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.f19734b == 0;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    /* renamed from: h */
    public Segment m13739h(int i) {
        if (i >= 1 && i <= 8192) {
            Segment segment = this.f19733a;
            if (segment == null) {
                Segment m13728b = SegmentPool.m13728b();
                this.f19733a = m13728b;
                m13728b.f19767g = m13728b;
                m13728b.f19766f = m13728b;
                return m13728b;
            }
            Segment segment2 = segment.f19767g;
            if (segment2.f19763c + i > 8192 || !segment2.f19765e) {
                return segment2.push(SegmentPool.m13728b());
            }
            return segment2;
        }
        throw new IllegalArgumentException();
    }

    public final ByteString hmacSha1(ByteString byteString) {
        return hmac("HmacSHA1", byteString);
    }

    public final ByteString hmacSha256(ByteString byteString) {
        return hmac("HmacSHA256", byteString);
    }

    public final ByteString hmacSha512(ByteString byteString) {
        return hmac("HmacSHA512", byteString);
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
        return new InputStream() { // from class: okio.Buffer.2
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.f19734b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                Buffer buffer = Buffer.this;
                if (buffer.f19734b > 0) {
                    return buffer.readByte() & DefaultClassResolver.NAME;
                }
                return -1;
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return Buffer.this.read(bArr, i, i2);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final ByteString md5() {
        return digest("MD5");
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                Buffer.this.writeByte((int) ((byte) i));
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                Buffer.this.write(bArr, i, i2);
            }
        };
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString) {
        return rangeEquals(j, byteString, 0, byteString.size());
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe(new UnsafeCursor());
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        try {
            return readByteArray(this.f19734b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        return new ByteString(readByteArray());
    }

    public final Buffer readFrom(InputStream inputStream) {
        readFrom(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer buffer, long j) {
        long j2 = this.f19734b;
        if (j2 >= j) {
            buffer.write(this, j);
        } else {
            buffer.write(this, j2);
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        return Util.reverseBytesInt(readInt());
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        return Util.reverseBytesLong(readLong());
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        return Util.reverseBytesShort(readShort());
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        try {
            return readString(this.f19734b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final UnsafeCursor readUnsafe() {
        return readUnsafe(new UnsafeCursor());
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        try {
            return readString(this.f19734b, Util.UTF_8);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long j) {
        return this.f19734b >= j;
    }

    @Override // okio.BufferedSource
    public void require(long j) {
        if (this.f19734b < j) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(Options options) {
        int m13740f = m13740f(options, false);
        if (m13740f == -1) {
            return -1;
        }
        try {
            skip(options.f19747a[m13740f].size());
            return m13740f;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public final ByteString sha1() {
        return digest("SHA-1");
    }

    public final ByteString sha256() {
        return digest("SHA-256");
    }

    public final ByteString sha512() {
        return digest("SHA-512");
    }

    public final long size() {
        return this.f19734b;
    }

    public final ByteString snapshot() {
        long j = this.f19734b;
        if (j <= 2147483647L) {
            return snapshot((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f19734b);
    }

    @Override // okio.Source
    public Timeout timeout() {
        return Timeout.NONE;
    }

    public String toString() {
        return snapshot().toString();
    }

    public final Buffer writeTo(OutputStream outputStream) {
        return writeTo(outputStream, this.f19734b);
    }

    /* renamed from: c */
    public String m13741c(long j) {
        if (j > 0) {
            long j2 = j - 1;
            if (getByte(j2) == 13) {
                String readUtf8 = readUtf8(j2);
                skip(2L);
                return readUtf8;
            }
        }
        String readUtf82 = readUtf8(j);
        skip(1L);
        return readUtf82;
    }

    public final void clear() {
        try {
            skip(this.f19734b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public Buffer clone() {
        Buffer buffer = new Buffer();
        if (this.f19734b == 0) {
            return buffer;
        }
        Segment m13731a = this.f19733a.m13731a();
        buffer.f19733a = m13731a;
        m13731a.f19767g = m13731a;
        m13731a.f19766f = m13731a;
        Segment segment = this.f19733a;
        while (true) {
            segment = segment.f19766f;
            if (segment != this.f19733a) {
                buffer.f19733a.f19767g.push(segment.m13731a());
            } else {
                buffer.f19734b = this.f19734b;
                return buffer;
            }
        }
    }

    public final long completeSegmentByteCount() {
        long j = this.f19734b;
        if (j == 0) {
            return 0L;
        }
        Segment segment = this.f19733a.f19767g;
        int i = segment.f19763c;
        if (i < 8192 && segment.f19765e) {
            return j - (i - segment.f19762b);
        }
        return j;
    }

    public final Buffer copyTo(OutputStream outputStream, long j, long j2) {
        int i;
        if (outputStream != null) {
            Util.checkOffsetAndCount(this.f19734b, j, j2);
            if (j2 == 0) {
                return this;
            }
            Segment segment = this.f19733a;
            while (true) {
                int i2 = segment.f19763c;
                int i3 = segment.f19762b;
                if (j < i2 - i3) {
                    break;
                }
                j -= i2 - i3;
                segment = segment.f19766f;
            }
            while (j2 > 0) {
                int min = (int) Math.min(segment.f19763c - i, j2);
                outputStream.write(segment.f19761a, (int) (segment.f19762b + j), min);
                j2 -= min;
                segment = segment.f19766f;
                j = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
        if (r19 == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
        return r11;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m13740f(okio.Options r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 161
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.m13740f(okio.Options, boolean):int");
    }

    public final byte getByte(long j) {
        int i;
        Util.checkOffsetAndCount(this.f19734b, j, 1L);
        long j2 = this.f19734b;
        if (j2 - j > j) {
            Segment segment = this.f19733a;
            while (true) {
                int i2 = segment.f19763c;
                int i3 = segment.f19762b;
                long j3 = i2 - i3;
                if (j < j3) {
                    return segment.f19761a[i3 + ((int) j)];
                }
                j -= j3;
                segment = segment.f19766f;
            }
        } else {
            long j4 = j - j2;
            Segment segment2 = this.f19733a;
            do {
                segment2 = segment2.f19767g;
                int i4 = segment2.f19763c;
                i = segment2.f19762b;
                j4 += i4 - i;
            } while (j4 < 0);
            return segment2.f19761a[i + ((int) j4)];
        }
    }

    public int hashCode() {
        Segment segment = this.f19733a;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.f19763c;
            for (int i3 = segment.f19762b; i3 < i2; i3++) {
                i = (i * 31) + segment.f19761a[i3];
            }
            segment = segment.f19766f;
        } while (segment != this.f19733a);
        return i;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j) {
        return indexOf(b, j, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString byteString, long j) {
        int i;
        int i2;
        long j2 = 0;
        if (j >= 0) {
            Segment segment = this.f19733a;
            if (segment == null) {
                return -1L;
            }
            long j3 = this.f19734b;
            if (j3 - j < j) {
                while (j3 > j) {
                    segment = segment.f19767g;
                    j3 -= segment.f19763c - segment.f19762b;
                }
            } else {
                while (true) {
                    long j4 = (segment.f19763c - segment.f19762b) + j2;
                    if (j4 >= j) {
                        break;
                    }
                    segment = segment.f19766f;
                    j2 = j4;
                }
                j3 = j2;
            }
            if (byteString.size() == 2) {
                byte b = byteString.getByte(0);
                byte b2 = byteString.getByte(1);
                while (j3 < this.f19734b) {
                    byte[] bArr = segment.f19761a;
                    i = (int) ((segment.f19762b + j) - j3);
                    int i3 = segment.f19763c;
                    while (i < i3) {
                        byte b3 = bArr[i];
                        if (b3 == b || b3 == b2) {
                            i2 = segment.f19762b;
                            return (i - i2) + j3;
                        }
                        i++;
                    }
                    j3 += segment.f19763c - segment.f19762b;
                    segment = segment.f19766f;
                    j = j3;
                }
                return -1L;
            }
            byte[] mo13727d = byteString.mo13727d();
            while (j3 < this.f19734b) {
                byte[] bArr2 = segment.f19761a;
                i = (int) ((segment.f19762b + j) - j3);
                int i4 = segment.f19763c;
                while (i < i4) {
                    byte b4 = bArr2[i];
                    for (byte b5 : mo13727d) {
                        if (b4 == b5) {
                            i2 = segment.f19762b;
                            return (i - i2) + j3;
                        }
                    }
                    i++;
                }
                j3 += segment.f19763c - segment.f19762b;
                segment = segment.f19766f;
                j = j3;
            }
            return -1L;
        }
        throw new IllegalArgumentException("fromIndex < 0");
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j, ByteString byteString, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.f19734b - j < i2 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (getByte(i3 + j) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public int read(byte[] bArr, int i, int i2) {
        Util.checkOffsetAndCount(bArr.length, i, i2);
        Segment segment = this.f19733a;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i2, segment.f19763c - segment.f19762b);
        System.arraycopy(segment.f19761a, segment.f19762b, bArr, i, min);
        int i3 = segment.f19762b + min;
        segment.f19762b = i3;
        this.f19734b -= min;
        if (i3 == segment.f19763c) {
            this.f19733a = segment.pop();
            SegmentPool.m13729a(segment);
        }
        return min;
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) {
        long j = this.f19734b;
        if (j > 0) {
            sink.write(this, j);
        }
        return j;
    }

    public final UnsafeCursor readAndWriteUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer == null) {
            unsafeCursor.buffer = this;
            unsafeCursor.readWrite = true;
            return unsafeCursor;
        }
        throw new IllegalStateException("already attached to a buffer");
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        long j = this.f19734b;
        if (j != 0) {
            Segment segment = this.f19733a;
            int i = segment.f19762b;
            int i2 = segment.f19763c;
            int i3 = i + 1;
            byte b = segment.f19761a[i];
            this.f19734b = j - 1;
            if (i3 == i2) {
                this.f19733a = segment.pop();
                SegmentPool.m13729a(segment);
            } else {
                segment.f19762b = i3;
            }
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long j) {
        return new ByteString(readByteArray(j));
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bb, code lost:
        r17.f19734b -= r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c1, code lost:
        if (r8 == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c5, code lost:
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:?, code lost:
        return r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readDecimalLong() {
        /*
            r17 = this;
            r0 = r17
            long r1 = r0.f19734b
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto Lc6
            r1 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            r5 = -7
            r7 = 0
            r8 = 0
            r9 = 0
        L14:
            okio.Segment r10 = r0.f19733a
            byte[] r11 = r10.f19761a
            int r12 = r10.f19762b
            int r13 = r10.f19763c
        L1c:
            if (r12 >= r13) goto L9f
            r15 = r11[r12]
            r14 = 48
            if (r15 < r14) goto L6c
            r14 = 57
            if (r15 > r14) goto L6c
            int r14 = 48 - r15
            int r16 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r16 < 0) goto L3f
            int r16 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r16 != 0) goto L38
            long r1 = (long) r14
            int r16 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r16 >= 0) goto L38
            goto L3f
        L38:
            r1 = 10
            long r3 = r3 * r1
            long r1 = (long) r14
            long r3 = r3 + r1
            goto L76
        L3f:
            okio.Buffer r1 = new okio.Buffer
            r1.<init>()
            okio.Buffer r1 = r1.writeDecimalLong(r3)
            okio.Buffer r1 = r1.writeByte(r15)
            if (r8 != 0) goto L51
            r1.readByte()
        L51:
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Number too large: "
            r3.append(r4)
            java.lang.String r1 = r1.readUtf8()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L6c:
            r1 = 45
            if (r15 != r1) goto L80
            if (r7 != 0) goto L80
            r1 = 1
            long r5 = r5 - r1
            r8 = 1
        L76:
            int r12 = r12 + 1
            int r7 = r7 + 1
            r1 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            goto L1c
        L80:
            if (r7 == 0) goto L84
            r9 = 1
            goto L9f
        L84:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Expected leading [0-9] or '-' character but was 0x"
            r2.append(r3)
            java.lang.String r3 = java.lang.Integer.toHexString(r15)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L9f:
            if (r12 != r13) goto Lab
            okio.Segment r1 = r10.pop()
            r0.f19733a = r1
            okio.SegmentPool.m13729a(r10)
            goto Lad
        Lab:
            r10.f19762b = r12
        Lad:
            if (r9 != 0) goto Lbb
            okio.Segment r1 = r0.f19733a
            if (r1 != 0) goto Lb4
            goto Lbb
        Lb4:
            r1 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            goto L14
        Lbb:
            long r1 = r0.f19734b
            long r5 = (long) r7
            long r1 = r1 - r5
            r0.f19734b = r1
            if (r8 == 0) goto Lc4
            goto Lc5
        Lc4:
            long r3 = -r3
        Lc5:
            return r3
        Lc6:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "size == 0"
            r1.<init>(r2)
            goto Lcf
        Lce:
            throw r1
        Lcf:
            goto Lce
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readDecimalLong():long");
    }

    public final Buffer readFrom(InputStream inputStream, long j) {
        if (j >= 0) {
            readFrom(inputStream, j, false);
            return this;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a5 A[EDGE_INSN: B:43:0x00a5->B:38:0x00a5 ?: BREAK  , SYNTHETIC] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long readHexadecimalUnsignedLong() {
        /*
            r15 = this;
            long r0 = r15.f19734b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Lac
            r0 = 0
            r4 = r2
            r1 = 0
        Lb:
            okio.Segment r6 = r15.f19733a
            byte[] r7 = r6.f19761a
            int r8 = r6.f19762b
            int r9 = r6.f19763c
        L13:
            if (r8 >= r9) goto L91
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L3a
        L22:
            r11 = 97
            if (r10 < r11) goto L2f
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2f
            int r11 = r10 + (-97)
        L2c:
            int r11 = r11 + 10
            goto L3a
        L2f:
            r11 = 65
            if (r10 < r11) goto L72
            r11 = 70
            if (r10 > r11) goto L72
            int r11 = r10 + (-65)
            goto L2c
        L3a:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L4a
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L13
        L4a:
            okio.Buffer r0 = new okio.Buffer
            r0.<init>()
            okio.Buffer r0 = r0.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r0 = r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.readUtf8()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L72:
            if (r0 == 0) goto L76
            r1 = 1
            goto L91
        L76:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L91:
            if (r8 != r9) goto L9d
            okio.Segment r7 = r6.pop()
            r15.f19733a = r7
            okio.SegmentPool.m13729a(r6)
            goto L9f
        L9d:
            r6.f19762b = r8
        L9f:
            if (r1 != 0) goto La5
            okio.Segment r6 = r15.f19733a
            if (r6 != 0) goto Lb
        La5:
            long r1 = r15.f19734b
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.f19734b = r1
            return r4
        Lac:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            goto Lb5
        Lb4:
            throw r0
        Lb5:
            goto Lb4
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.readHexadecimalUnsignedLong():long");
    }

    @Override // okio.BufferedSource
    public int readInt() {
        long j = this.f19734b;
        if (j >= 4) {
            Segment segment = this.f19733a;
            int i = segment.f19762b;
            int i2 = segment.f19763c;
            if (i2 - i < 4) {
                return ((readByte() & DefaultClassResolver.NAME) << 24) | ((readByte() & DefaultClassResolver.NAME) << 16) | ((readByte() & DefaultClassResolver.NAME) << 8) | (readByte() & DefaultClassResolver.NAME);
            }
            byte[] bArr = segment.f19761a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & DefaultClassResolver.NAME) << 24) | ((bArr[i3] & DefaultClassResolver.NAME) << 16);
            int i6 = i4 + 1;
            int i7 = i5 | ((bArr[i4] & DefaultClassResolver.NAME) << 8);
            int i8 = i6 + 1;
            int i9 = i7 | (bArr[i6] & DefaultClassResolver.NAME);
            this.f19734b = j - 4;
            if (i8 == i2) {
                this.f19733a = segment.pop();
                SegmentPool.m13729a(segment);
            } else {
                segment.f19762b = i8;
            }
            return i9;
        }
        throw new IllegalStateException("size < 4: " + this.f19734b);
    }

    @Override // okio.BufferedSource
    public long readLong() {
        long j = this.f19734b;
        if (j >= 8) {
            Segment segment = this.f19733a;
            int i = segment.f19762b;
            int i2 = segment.f19763c;
            if (i2 - i < 8) {
                return ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
            }
            byte[] bArr = segment.f19761a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            long j2 = (bArr[i3] & 255) << 48;
            int i5 = i4 + 1;
            int i6 = i5 + 1;
            int i7 = i6 + 1;
            int i8 = i7 + 1;
            int i9 = i8 + 1;
            int i10 = i9 + 1;
            long j3 = j2 | ((bArr[i] & 255) << 56) | ((bArr[i4] & 255) << 40) | ((bArr[i5] & 255) << 32) | ((bArr[i6] & 255) << 24) | ((bArr[i7] & 255) << 16) | ((bArr[i8] & 255) << 8) | (bArr[i9] & 255);
            this.f19734b = j - 8;
            if (i10 == i2) {
                this.f19733a = segment.pop();
                SegmentPool.m13729a(segment);
            } else {
                segment.f19762b = i10;
            }
            return j3;
        }
        throw new IllegalStateException("size < 8: " + this.f19734b);
    }

    @Override // okio.BufferedSource
    public short readShort() {
        long j = this.f19734b;
        if (j >= 2) {
            Segment segment = this.f19733a;
            int i = segment.f19762b;
            int i2 = segment.f19763c;
            if (i2 - i < 2) {
                return (short) (((readByte() & DefaultClassResolver.NAME) << 8) | (readByte() & DefaultClassResolver.NAME));
            }
            byte[] bArr = segment.f19761a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & DefaultClassResolver.NAME) << 8) | (bArr[i3] & DefaultClassResolver.NAME);
            this.f19734b = j - 2;
            if (i4 == i2) {
                this.f19733a = segment.pop();
                SegmentPool.m13729a(segment);
            } else {
                segment.f19762b = i4;
            }
            return (short) i5;
        }
        throw new IllegalStateException("size < 2: " + this.f19734b);
    }

    public final UnsafeCursor readUnsafe(UnsafeCursor unsafeCursor) {
        if (unsafeCursor.buffer == null) {
            unsafeCursor.buffer = this;
            unsafeCursor.readWrite = false;
            return unsafeCursor;
        }
        throw new IllegalStateException("already attached to a buffer");
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() {
        int i;
        int i2;
        int i3;
        if (this.f19734b != 0) {
            byte b = getByte(0L);
            if ((b & 128) == 0) {
                i = b & Byte.MAX_VALUE;
                i2 = 1;
                i3 = 0;
            } else if ((b & 224) == 192) {
                i = b & 31;
                i2 = 2;
                i3 = 128;
            } else if ((b & 240) == 224) {
                i = b & 15;
                i2 = 3;
                i3 = 2048;
            } else if ((b & 248) == 240) {
                i = b & 7;
                i2 = 4;
                i3 = 65536;
            } else {
                skip(1L);
                return 65533;
            }
            long j = i2;
            if (this.f19734b >= j) {
                for (int i4 = 1; i4 < i2; i4++) {
                    long j2 = i4;
                    byte b2 = getByte(j2);
                    if ((b2 & 192) == 128) {
                        i = (i << 6) | (b2 & 63);
                    } else {
                        skip(j2);
                        return 65533;
                    }
                }
                skip(j);
                if (i > 1114111) {
                    return 65533;
                }
                if ((i >= 55296 && i <= 57343) || i < i3) {
                    return 65533;
                }
                return i;
            }
            throw new EOFException("size < " + i2 + ": " + this.f19734b + " (to read code point prefixed 0x" + Integer.toHexString(b) + ")");
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public String readUtf8Line() {
        long indexOf = indexOf((byte) 10);
        if (indexOf == -1) {
            long j = this.f19734b;
            if (j != 0) {
                return readUtf8(j);
            }
            return null;
        }
        return m13741c(indexOf);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long j) {
        if (j >= 0) {
            long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
            long indexOf = indexOf((byte) 10, 0L, j2);
            if (indexOf != -1) {
                return m13741c(indexOf);
            }
            if (j2 < size() && getByte(j2 - 1) == 13 && getByte(j2) == 10) {
                return m13741c(j2);
            }
            Buffer buffer = new Buffer();
            copyTo(buffer, 0L, Math.min(32L, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), j) + " content=" + buffer.readByteString().hex() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    @Override // okio.BufferedSource
    public void skip(long j) {
        Segment segment;
        while (j > 0) {
            if (this.f19733a != null) {
                int min = (int) Math.min(j, segment.f19763c - segment.f19762b);
                long j2 = min;
                this.f19734b -= j2;
                j -= j2;
                Segment segment2 = this.f19733a;
                int i = segment2.f19762b + min;
                segment2.f19762b = i;
                if (i == segment2.f19763c) {
                    this.f19733a = segment2.pop();
                    SegmentPool.m13729a(segment2);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) {
        if (source != null) {
            long j = 0;
            while (true) {
                long read = source.read(this, 8192L);
                if (read != -1) {
                    j += read;
                } else {
                    return j;
                }
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    @Override // okio.BufferedSink
    public Buffer writeByte(int i) {
        Segment m13739h = m13739h(1);
        byte[] bArr = m13739h.f19761a;
        int i2 = m13739h.f19763c;
        m13739h.f19763c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f19734b++;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeDecimalLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < 1000000000 ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= 10000) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        Segment m13739h = m13739h(i);
        byte[] bArr = m13739h.f19761a;
        int i2 = m13739h.f19763c + i;
        while (j != 0) {
            i2--;
            bArr[i2] = DIGITS[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        m13739h.f19763c += i;
        this.f19734b += i;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        Segment m13739h = m13739h(numberOfTrailingZeros);
        byte[] bArr = m13739h.f19761a;
        int i = m13739h.f19763c;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = DIGITS[(int) (15 & j)];
            j >>>= 4;
        }
        m13739h.f19763c += numberOfTrailingZeros;
        this.f19734b += numberOfTrailingZeros;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeInt(int i) {
        Segment m13739h = m13739h(4);
        byte[] bArr = m13739h.f19761a;
        int i2 = m13739h.f19763c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m13739h.f19763c = i5 + 1;
        this.f19734b += 4;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeIntLe(int i) {
        return writeInt(Util.reverseBytesInt(i));
    }

    @Override // okio.BufferedSink
    public Buffer writeLong(long j) {
        Segment m13739h = m13739h(8);
        byte[] bArr = m13739h.f19761a;
        int i = m13739h.f19763c;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        m13739h.f19763c = i8 + 1;
        this.f19734b += 8;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeLongLe(long j) {
        return writeLong(Util.reverseBytesLong(j));
    }

    @Override // okio.BufferedSink
    public Buffer writeShort(int i) {
        Segment m13739h = m13739h(2);
        byte[] bArr = m13739h.f19761a;
        int i2 = m13739h.f19763c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m13739h.f19763c = i3 + 1;
        this.f19734b += 2;
        return this;
    }

    @Override // okio.BufferedSink
    public Buffer writeShortLe(int i) {
        return writeShort((int) Util.reverseBytesShort((short) i));
    }

    public final Buffer writeTo(OutputStream outputStream, long j) {
        if (outputStream != null) {
            Util.checkOffsetAndCount(this.f19734b, 0L, j);
            Segment segment = this.f19733a;
            while (j > 0) {
                int min = (int) Math.min(j, segment.f19763c - segment.f19762b);
                outputStream.write(segment.f19761a, segment.f19762b, min);
                int i = segment.f19762b + min;
                segment.f19762b = i;
                long j2 = min;
                this.f19734b -= j2;
                j -= j2;
                if (i == segment.f19763c) {
                    Segment pop = segment.pop();
                    this.f19733a = pop;
                    SegmentPool.m13729a(segment);
                    segment = pop;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8CodePoint(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            writeByte((i >> 6) | 192);
            writeByte((i & 63) | 128);
        } else if (i < 65536) {
            if (i >= 55296 && i <= 57343) {
                writeByte(63);
            } else {
                writeByte((i >> 12) | 224);
                writeByte(((i >> 6) & 63) | 128);
                writeByte((i & 63) | 128);
            }
        } else if (i <= 1114111) {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    private ByteString digest(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            Segment segment = this.f19733a;
            if (segment != null) {
                byte[] bArr = segment.f19761a;
                int i = segment.f19762b;
                messageDigest.update(bArr, i, segment.f19763c - i);
                Segment segment2 = this.f19733a;
                while (true) {
                    segment2 = segment2.f19766f;
                    if (segment2 == this.f19733a) {
                        break;
                    }
                    byte[] bArr2 = segment2.f19761a;
                    int i2 = segment2.f19762b;
                    messageDigest.update(bArr2, i2, segment2.f19763c - i2);
                }
            }
            return ByteString.m13736of(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    private ByteString hmac(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            Segment segment = this.f19733a;
            if (segment != null) {
                byte[] bArr = segment.f19761a;
                int i = segment.f19762b;
                mac.update(bArr, i, segment.f19763c - i);
                Segment segment2 = this.f19733a;
                while (true) {
                    segment2 = segment2.f19766f;
                    if (segment2 == this.f19733a) {
                        break;
                    }
                    byte[] bArr2 = segment2.f19761a;
                    int i2 = segment2.f19762b;
                    mac.update(bArr2, i2, segment2.f19763c - i2);
                }
            }
            return ByteString.m13736of(mac.doFinal());
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long j, long j2) {
        Segment segment;
        long j3 = 0;
        if (j >= 0 && j2 >= j) {
            long j4 = this.f19734b;
            long j5 = j2 > j4 ? j4 : j2;
            if (j == j5 || (segment = this.f19733a) == null) {
                return -1L;
            }
            if (j4 - j < j) {
                while (j4 > j) {
                    segment = segment.f19767g;
                    j4 -= segment.f19763c - segment.f19762b;
                }
            } else {
                while (true) {
                    long j6 = (segment.f19763c - segment.f19762b) + j3;
                    if (j6 >= j) {
                        break;
                    }
                    segment = segment.f19766f;
                    j3 = j6;
                }
                j4 = j3;
            }
            long j7 = j;
            while (j4 < j5) {
                byte[] bArr = segment.f19761a;
                int min = (int) Math.min(segment.f19763c, (segment.f19762b + j5) - j4);
                for (int i = (int) ((segment.f19762b + j7) - j4); i < min; i++) {
                    if (bArr[i] == b) {
                        return (i - segment.f19762b) + j4;
                    }
                }
                j4 += segment.f19763c - segment.f19762b;
                segment = segment.f19766f;
                j7 = j4;
            }
            return -1L;
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f19734b), Long.valueOf(j), Long.valueOf(j2)));
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long j) {
        Util.checkOffsetAndCount(this.f19734b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    @Override // okio.BufferedSource
    public String readString(long j, Charset charset) {
        Util.checkOffsetAndCount(this.f19734b, 0L, j);
        if (charset != null) {
            if (j > 2147483647L) {
                throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
            } else if (j == 0) {
                return "";
            } else {
                Segment segment = this.f19733a;
                int i = segment.f19762b;
                if (i + j > segment.f19763c) {
                    return new String(readByteArray(j), charset);
                }
                String str = new String(segment.f19761a, i, (int) j, charset);
                int i2 = (int) (segment.f19762b + j);
                segment.f19762b = i2;
                this.f19734b -= j;
                if (i2 == segment.f19763c) {
                    this.f19733a = segment.pop();
                    SegmentPool.m13729a(segment);
                }
                return str;
            }
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // okio.BufferedSource
    public String readUtf8(long j) {
        return readString(j, Util.UTF_8);
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String str, Charset charset) {
        return writeString(str, 0, str.length(), charset);
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str) {
        return writeUtf8(str, 0, str.length());
    }

    private void readFrom(InputStream inputStream, long j, boolean z) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (j <= 0 && !z) {
                return;
            }
            Segment m13739h = m13739h(1);
            int read = inputStream.read(m13739h.f19761a, m13739h.f19763c, (int) Math.min(j, 8192 - m13739h.f19763c));
            if (read == -1) {
                if (!z) {
                    throw new EOFException();
                }
                return;
            }
            m13739h.f19763c += read;
            long j2 = read;
            this.f19734b += j2;
            j -= j2;
        }
    }

    public final ByteString snapshot(int i) {
        if (i == 0) {
            return ByteString.EMPTY;
        }
        return new SegmentedByteString(this, i);
    }

    @Override // okio.BufferedSink
    public Buffer write(ByteString byteString) {
        if (byteString != null) {
            byteString.mo13726f(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    @Override // okio.BufferedSink
    public Buffer writeString(String str, int i, int i2, Charset charset) {
        if (str != null) {
            if (i < 0) {
                throw new IllegalAccessError("beginIndex < 0: " + i);
            } else if (i2 >= i) {
                if (i2 <= str.length()) {
                    if (charset != null) {
                        if (charset.equals(Util.UTF_8)) {
                            return writeUtf8(str, i, i2);
                        }
                        byte[] bytes = str.substring(i, i2).getBytes(charset);
                        return write(bytes, 0, bytes.length);
                    }
                    throw new IllegalArgumentException("charset == null");
                }
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            } else {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    @Override // okio.BufferedSink
    public Buffer writeUtf8(String str, int i, int i2) {
        if (str != null) {
            if (i < 0) {
                throw new IllegalArgumentException("beginIndex < 0: " + i);
            } else if (i2 >= i) {
                if (i2 > str.length()) {
                    throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
                }
                while (i < i2) {
                    char charAt = str.charAt(i);
                    if (charAt < 128) {
                        Segment m13739h = m13739h(1);
                        byte[] bArr = m13739h.f19761a;
                        int i3 = m13739h.f19763c - i;
                        int min = Math.min(i2, 8192 - i3);
                        int i4 = i + 1;
                        bArr[i + i3] = (byte) charAt;
                        while (i4 < min) {
                            char charAt2 = str.charAt(i4);
                            if (charAt2 >= 128) {
                                break;
                            }
                            bArr[i4 + i3] = (byte) charAt2;
                            i4++;
                        }
                        int i5 = m13739h.f19763c;
                        int i6 = (i3 + i4) - i5;
                        m13739h.f19763c = i5 + i6;
                        this.f19734b += i6;
                        i = i4;
                    } else {
                        if (charAt < 2048) {
                            writeByte((charAt >> 6) | 192);
                            writeByte((charAt & '?') | 128);
                        } else if (charAt >= 55296 && charAt <= 57343) {
                            int i7 = i + 1;
                            char charAt3 = i7 < i2 ? str.charAt(i7) : (char) 0;
                            if (charAt <= 56319 && charAt3 >= 56320 && charAt3 <= 57343) {
                                int i8 = (((charAt & 10239) << 10) | (9215 & charAt3)) + 65536;
                                writeByte((i8 >> 18) | 240);
                                writeByte(((i8 >> 12) & 63) | 128);
                                writeByte(((i8 >> 6) & 63) | 128);
                                writeByte((i8 & 63) | 128);
                                i += 2;
                            } else {
                                writeByte(63);
                                i = i7;
                            }
                        } else {
                            writeByte((charAt >> '\f') | 224);
                            writeByte(((charAt >> 6) & 63) | 128);
                            writeByte((charAt & '?') | 128);
                        }
                        i++;
                    }
                }
                return this;
            } else {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    private boolean rangeEquals(Segment segment, int i, ByteString byteString, int i2, int i3) {
        int i4 = segment.f19763c;
        byte[] bArr = segment.f19761a;
        while (i2 < i3) {
            if (i == i4) {
                segment = segment.f19766f;
                byte[] bArr2 = segment.f19761a;
                bArr = bArr2;
                i = segment.f19762b;
                i4 = segment.f19763c;
            }
            if (bArr[i] != byteString.getByte(i2)) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            int read = read(bArr, i, bArr.length - i);
            if (read == -1) {
                throw new EOFException();
            }
            i += read;
        }
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // okio.BufferedSink
    public Buffer write(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            Util.checkOffsetAndCount(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                Segment m13739h = m13739h(1);
                int min = Math.min(i3 - i, 8192 - m13739h.f19763c);
                System.arraycopy(bArr, i, m13739h.f19761a, m13739h.f19763c, min);
                i += min;
                m13739h.f19763c += min;
            }
            this.f19734b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public final Buffer copyTo(Buffer buffer, long j, long j2) {
        if (buffer != null) {
            Util.checkOffsetAndCount(this.f19734b, j, j2);
            if (j2 == 0) {
                return this;
            }
            buffer.f19734b += j2;
            Segment segment = this.f19733a;
            while (true) {
                int i = segment.f19763c;
                int i2 = segment.f19762b;
                if (j < i - i2) {
                    break;
                }
                j -= i - i2;
                segment = segment.f19766f;
            }
            while (j2 > 0) {
                Segment m13731a = segment.m13731a();
                int i3 = (int) (m13731a.f19762b + j);
                m13731a.f19762b = i3;
                m13731a.f19763c = Math.min(i3 + ((int) j2), m13731a.f19763c);
                Segment segment2 = buffer.f19733a;
                if (segment2 == null) {
                    m13731a.f19767g = m13731a;
                    m13731a.f19766f = m13731a;
                    buffer.f19733a = m13731a;
                } else {
                    segment2.f19767g.push(m13731a);
                }
                j2 -= m13731a.f19763c - m13731a.f19762b;
                segment = segment.f19766f;
                j = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        Segment segment = this.f19733a;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), segment.f19763c - segment.f19762b);
        byteBuffer.put(segment.f19761a, segment.f19762b, min);
        int i = segment.f19762b + min;
        segment.f19762b = i;
        this.f19734b -= min;
        if (i == segment.f19763c) {
            this.f19733a = segment.pop();
            SegmentPool.m13729a(segment);
        }
        return min;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                Segment m13739h = m13739h(1);
                int min = Math.min(i, 8192 - m13739h.f19763c);
                byteBuffer.get(m13739h.f19761a, m13739h.f19763c, min);
                i -= min;
                m13739h.f19763c += min;
            }
            this.f19734b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString) {
        return indexOf(byteString, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString byteString, long j) {
        byte[] bArr;
        if (byteString.size() != 0) {
            long j2 = 0;
            if (j >= 0) {
                Segment segment = this.f19733a;
                long j3 = -1;
                if (segment == null) {
                    return -1L;
                }
                long j4 = this.f19734b;
                if (j4 - j < j) {
                    while (j4 > j) {
                        segment = segment.f19767g;
                        j4 -= segment.f19763c - segment.f19762b;
                    }
                } else {
                    while (true) {
                        long j5 = (segment.f19763c - segment.f19762b) + j2;
                        if (j5 >= j) {
                            break;
                        }
                        segment = segment.f19766f;
                        j2 = j5;
                    }
                    j4 = j2;
                }
                byte b = byteString.getByte(0);
                int size = byteString.size();
                long j6 = 1 + (this.f19734b - size);
                long j7 = j;
                Segment segment2 = segment;
                long j8 = j4;
                while (j8 < j6) {
                    byte[] bArr2 = segment2.f19761a;
                    int min = (int) Math.min(segment2.f19763c, (segment2.f19762b + j6) - j8);
                    int i = (int) ((segment2.f19762b + j7) - j8);
                    while (i < min) {
                        if (bArr2[i] == b) {
                            bArr = bArr2;
                            if (rangeEquals(segment2, i + 1, byteString, 1, size)) {
                                return (i - segment2.f19762b) + j8;
                            }
                        } else {
                            bArr = bArr2;
                        }
                        i++;
                        bArr2 = bArr;
                    }
                    j8 += segment2.f19763c - segment2.f19762b;
                    segment2 = segment2.f19766f;
                    j7 = j8;
                    j3 = -1;
                }
                return j3;
            }
            throw new IllegalArgumentException("fromIndex < 0");
        }
        throw new IllegalArgumentException("bytes is empty");
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) {
        if (buffer != null) {
            if (j >= 0) {
                long j2 = this.f19734b;
                if (j2 == 0) {
                    return -1L;
                }
                if (j > j2) {
                    j = j2;
                }
                buffer.write(this, j);
                return j;
            }
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // okio.BufferedSink
    public BufferedSink write(Source source, long j) {
        while (j > 0) {
            long read = source.read(this, j);
            if (read == -1) {
                throw new EOFException();
            }
            j -= read;
        }
        return this;
    }

    @Override // okio.Sink
    public void write(Buffer buffer, long j) {
        if (buffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (buffer != this) {
            Util.checkOffsetAndCount(buffer.f19734b, 0L, j);
            while (j > 0) {
                Segment segment = buffer.f19733a;
                if (j < segment.f19763c - segment.f19762b) {
                    Segment segment2 = this.f19733a;
                    Segment segment3 = segment2 != null ? segment2.f19767g : null;
                    if (segment3 != null && segment3.f19765e) {
                        if ((segment3.f19763c + j) - (segment3.f19764d ? 0 : segment3.f19762b) <= 8192) {
                            segment.writeTo(segment3, (int) j);
                            buffer.f19734b -= j;
                            this.f19734b += j;
                            return;
                        }
                    }
                    buffer.f19733a = segment.split((int) j);
                }
                Segment segment4 = buffer.f19733a;
                long j2 = segment4.f19763c - segment4.f19762b;
                buffer.f19733a = segment4.pop();
                Segment segment5 = this.f19733a;
                if (segment5 == null) {
                    this.f19733a = segment4;
                    segment4.f19767g = segment4;
                    segment4.f19766f = segment4;
                } else {
                    segment5.f19767g.push(segment4).compact();
                }
                buffer.f19734b -= j2;
                this.f19734b += j2;
                j -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }
}
