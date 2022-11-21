package okio;

import java.util.zip.Inflater;
import net.bytebuddy.description.type.TypeDescription;
/* loaded from: classes.dex */
public final class InflaterSource implements Source {
    private int bufferBytesHeldByInflater;
    private boolean closed;
    private final Inflater inflater;
    private final BufferedSource source;

    public InflaterSource(Source source, Inflater inflater) {
        this(Okio.buffer(source), inflater);
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }

    public InflaterSource(BufferedSource bufferedSource, Inflater inflater) {
        if (bufferedSource == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater != null) {
            this.source = bufferedSource;
            this.inflater = inflater;
            return;
        }
        throw new IllegalArgumentException("inflater == null");
    }

    private void releaseInflatedBytes() {
        int i = this.bufferBytesHeldByInflater;
        if (i == 0) {
            return;
        }
        int remaining = i - this.inflater.getRemaining();
        this.bufferBytesHeldByInflater -= remaining;
        this.source.skip(remaining);
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            return;
        }
        this.inflater.end();
        this.closed = true;
        this.source.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
        releaseInflatedBytes();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
        if (r1.f19762b != r1.f19763c) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
        r7.f19733a = r1.pop();
        okio.SegmentPool.m13729a(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0068, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:?, code lost:
        return -1;
     */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(okio.Buffer r7, long r8) {
        /*
            r6 = this;
            r0 = 0
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 < 0) goto L7a
            boolean r2 = r6.closed
            if (r2 != 0) goto L72
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 != 0) goto Lf
            return r0
        Lf:
            boolean r0 = r6.refill()
            r1 = 1
            okio.Segment r1 = r7.m13739h(r1)     // Catch: java.util.zip.DataFormatException -> L6b
            int r2 = r1.f19763c     // Catch: java.util.zip.DataFormatException -> L6b
            int r2 = 8192 - r2
            long r2 = (long) r2     // Catch: java.util.zip.DataFormatException -> L6b
            long r2 = java.lang.Math.min(r8, r2)     // Catch: java.util.zip.DataFormatException -> L6b
            int r3 = (int) r2     // Catch: java.util.zip.DataFormatException -> L6b
            java.util.zip.Inflater r2 = r6.inflater     // Catch: java.util.zip.DataFormatException -> L6b
            byte[] r4 = r1.f19761a     // Catch: java.util.zip.DataFormatException -> L6b
            int r5 = r1.f19763c     // Catch: java.util.zip.DataFormatException -> L6b
            int r2 = r2.inflate(r4, r5, r3)     // Catch: java.util.zip.DataFormatException -> L6b
            if (r2 <= 0) goto L3a
            int r8 = r1.f19763c     // Catch: java.util.zip.DataFormatException -> L6b
            int r8 = r8 + r2
            r1.f19763c = r8     // Catch: java.util.zip.DataFormatException -> L6b
            long r8 = r7.f19734b     // Catch: java.util.zip.DataFormatException -> L6b
            long r0 = (long) r2     // Catch: java.util.zip.DataFormatException -> L6b
            long r8 = r8 + r0
            r7.f19734b = r8     // Catch: java.util.zip.DataFormatException -> L6b
            return r0
        L3a:
            java.util.zip.Inflater r2 = r6.inflater     // Catch: java.util.zip.DataFormatException -> L6b
            boolean r2 = r2.finished()     // Catch: java.util.zip.DataFormatException -> L6b
            if (r2 != 0) goto L56
            java.util.zip.Inflater r2 = r6.inflater     // Catch: java.util.zip.DataFormatException -> L6b
            boolean r2 = r2.needsDictionary()     // Catch: java.util.zip.DataFormatException -> L6b
            if (r2 == 0) goto L4b
            goto L56
        L4b:
            if (r0 != 0) goto L4e
            goto Lf
        L4e:
            java.io.EOFException r7 = new java.io.EOFException     // Catch: java.util.zip.DataFormatException -> L6b
            java.lang.String r8 = "source exhausted prematurely"
            r7.<init>(r8)     // Catch: java.util.zip.DataFormatException -> L6b
            throw r7     // Catch: java.util.zip.DataFormatException -> L6b
        L56:
            r6.releaseInflatedBytes()     // Catch: java.util.zip.DataFormatException -> L6b
            int r8 = r1.f19762b     // Catch: java.util.zip.DataFormatException -> L6b
            int r9 = r1.f19763c     // Catch: java.util.zip.DataFormatException -> L6b
            if (r8 != r9) goto L68
            okio.Segment r8 = r1.pop()     // Catch: java.util.zip.DataFormatException -> L6b
            r7.f19733a = r8     // Catch: java.util.zip.DataFormatException -> L6b
            okio.SegmentPool.m13729a(r1)     // Catch: java.util.zip.DataFormatException -> L6b
        L68:
            r7 = -1
            return r7
        L6b:
            r7 = move-exception
            java.io.IOException r8 = new java.io.IOException
            r8.<init>(r7)
            throw r8
        L72:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "closed"
            r7.<init>(r8)
            throw r7
        L7a:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "byteCount < 0: "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            r7.<init>(r8)
            goto L92
        L91:
            throw r7
        L92:
            goto L91
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.InflaterSource.read(okio.Buffer, long):long");
    }

    public final boolean refill() {
        if (!this.inflater.needsInput()) {
            return false;
        }
        releaseInflatedBytes();
        if (this.inflater.getRemaining() == 0) {
            if (this.source.exhausted()) {
                return true;
            }
            Segment segment = this.source.buffer().f19733a;
            int i = segment.f19763c;
            int i2 = segment.f19762b;
            int i3 = i - i2;
            this.bufferBytesHeldByInflater = i3;
            this.inflater.setInput(segment.f19761a, i2, i3);
            return false;
        }
        throw new IllegalStateException(TypeDescription.Generic.OfWildcardType.SYMBOL);
    }
}
