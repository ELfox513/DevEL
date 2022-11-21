package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
/* renamed from: com.esotericsoftware.kryo.io.ByteBufferInputStream */
/* loaded from: classes.dex */
public class ByteBufferInputStream extends InputStream {

    /* renamed from: a */
    public ByteBuffer f7273a;

    public ByteBufferInputStream() {
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f7273a.remaining();
    }

    /* renamed from: c */
    public final void m23274c(Buffer buffer) {
        buffer.flip();
    }

    public ByteBuffer getByteBuffer() {
        return this.f7273a;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f7273a.hasRemaining()) {
            return this.f7273a.get() & DefaultClassResolver.NAME;
        }
        return -1;
    }

    public void setByteBuffer(ByteBuffer byteBuffer) {
        this.f7273a = byteBuffer;
    }

    public ByteBufferInputStream(int i) {
        this(ByteBuffer.allocate(i));
        m23274c(this.f7273a);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int min = Math.min(this.f7273a.remaining(), i2);
        if (min == 0) {
            return -1;
        }
        this.f7273a.get(bArr, i, min);
        return min;
    }

    public ByteBufferInputStream(ByteBuffer byteBuffer) {
        this.f7273a = byteBuffer;
    }
}
