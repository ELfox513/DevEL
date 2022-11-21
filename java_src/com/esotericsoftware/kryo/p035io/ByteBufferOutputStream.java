package com.esotericsoftware.kryo.p035io;

import java.io.OutputStream;
import java.nio.ByteBuffer;
/* renamed from: com.esotericsoftware.kryo.io.ByteBufferOutputStream */
/* loaded from: classes.dex */
public class ByteBufferOutputStream extends OutputStream {

    /* renamed from: a */
    public ByteBuffer f7275a;

    public ByteBufferOutputStream() {
    }

    public ByteBuffer getByteBuffer() {
        return this.f7275a;
    }

    public void setByteBuffer(ByteBuffer byteBuffer) {
        this.f7275a = byteBuffer;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        if (!this.f7275a.hasRemaining()) {
            flush();
        }
        this.f7275a.put((byte) i);
    }

    public ByteBufferOutputStream(int i) {
        this(ByteBuffer.allocate(i));
    }

    public ByteBufferOutputStream(ByteBuffer byteBuffer) {
        this.f7275a = byteBuffer;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (this.f7275a.remaining() < i2) {
            flush();
        }
        this.f7275a.put(bArr, i, i2);
    }
}
