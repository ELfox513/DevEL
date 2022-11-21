package com.esotericsoftware.kryo.unsafe;

import com.esotericsoftware.kryo.p035io.ByteBufferOutput;
import java.io.OutputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import sun.misc.Unsafe;
import sun.nio.ch.DirectBuffer;
/* loaded from: classes.dex */
public class UnsafeByteBufferOutput extends ByteBufferOutput {

    /* renamed from: b */
    public long f7375b;

    public UnsafeByteBufferOutput() {
    }

    /* renamed from: g */
    private void m23192g(Buffer buffer, int i) {
        buffer.position(i);
    }

    /* renamed from: h */
    public final void m23191h() {
        this.f7375b = this.byteBuffer.address();
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeBooleans(boolean[] zArr, int i, int i2) {
        writeBytes(zArr, UnsafeUtil.booleanArrayBaseOffset, zArr.length);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeByte(byte b) {
        if (this.position == this.capacity) {
            require(1);
        }
        Unsafe unsafe = UnsafeUtil.unsafe;
        long j = this.f7375b;
        int i = this.position;
        this.position = i + 1;
        unsafe.putByte(j + i, b);
        m23192g(this.byteBuffer, this.position);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeBytes(byte[] bArr, int i, int i2) {
        writeBytes(bArr, UnsafeUtil.byteArrayBaseOffset + i, i2);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeChar(char c) {
        require(2);
        UnsafeUtil.unsafe.putChar(this.f7375b + this.position, c);
        int i = this.position + 2;
        this.position = i;
        m23192g(this.byteBuffer, i);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeChars(char[] cArr, int i, int i2) {
        writeBytes(cArr, UnsafeUtil.charArrayBaseOffset, cArr.length << 1);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeDoubles(double[] dArr, int i, int i2) {
        writeBytes(dArr, UnsafeUtil.doubleArrayBaseOffset, dArr.length << 3);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeFloat(float f) {
        require(4);
        UnsafeUtil.unsafe.putFloat(this.f7375b + this.position, f);
        int i = this.position + 4;
        this.position = i;
        m23192g(this.byteBuffer, i);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeFloats(float[] fArr, int i, int i2) {
        writeBytes(fArr, UnsafeUtil.floatArrayBaseOffset, fArr.length << 2);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeInt(int i) {
        require(4);
        UnsafeUtil.unsafe.putInt(this.f7375b + this.position, i);
        int i2 = this.position + 4;
        this.position = i2;
        m23192g(this.byteBuffer, i2);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeInts(int[] iArr, int i, int i2) {
        writeBytes(iArr, UnsafeUtil.intArrayBaseOffset, iArr.length << 2);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeLongs(long[] jArr, int i, int i2) {
        writeBytes(jArr, UnsafeUtil.longArrayBaseOffset, jArr.length << 3);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeShort(int i) {
        require(2);
        UnsafeUtil.unsafe.putShort(this.f7375b + this.position, (short) i);
        int i2 = this.position + 2;
        this.position = i2;
        m23192g(this.byteBuffer, i2);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeShorts(short[] sArr, int i, int i2) {
        writeBytes(sArr, UnsafeUtil.shortArrayBaseOffset, sArr.length << 1);
    }

    public UnsafeByteBufferOutput(int i) {
        super(i);
        m23191h();
    }

    public void dispose() {
        UnsafeUtil.dispose(this.byteBuffer);
        this.byteBuffer = null;
        this.f7375b = 0L;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public boolean require(int i) {
        ByteBuffer byteBuffer = this.byteBuffer;
        boolean require = super.require(i);
        if (this.byteBuffer != byteBuffer) {
            UnsafeUtil.dispose(byteBuffer);
            m23191h();
        }
        return require;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput
    public void setBuffer(ByteBuffer byteBuffer, int i) {
        if (byteBuffer instanceof DirectBuffer) {
            ByteBuffer byteBuffer2 = this.byteBuffer;
            if (byteBuffer != byteBuffer2) {
                UnsafeUtil.dispose(byteBuffer2);
            }
            super.setBuffer(byteBuffer, i);
            m23191h();
            return;
        }
        throw new IllegalArgumentException("buffer must be direct.");
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output, java.io.OutputStream
    public void write(int i) {
        if (this.position == this.capacity) {
            require(1);
        }
        Unsafe unsafe = UnsafeUtil.unsafe;
        long j = this.f7375b;
        int i2 = this.position;
        this.position = i2 + 1;
        unsafe.putByte(j + i2, (byte) i);
        m23192g(this.byteBuffer, this.position);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeBoolean(boolean z) {
        if (this.position == this.capacity) {
            require(1);
        }
        Unsafe unsafe = UnsafeUtil.unsafe;
        long j = this.f7375b;
        int i = this.position;
        this.position = i + 1;
        unsafe.putByte(j + i, z ? (byte) 1 : (byte) 0);
        m23192g(this.byteBuffer, this.position);
    }

    public void writeBytes(Object obj, long j, int i) {
        long j2 = j;
        int min = Math.min(this.capacity - this.position, i);
        int i2 = i;
        while (true) {
            long j3 = min;
            UnsafeUtil.unsafe.copyMemory(obj, j2, (Object) null, this.position + this.f7375b, j3);
            int i3 = this.position + min;
            this.position = i3;
            i2 -= min;
            if (i2 == 0) {
                m23192g(this.byteBuffer, i3);
                return;
            }
            j2 += j3;
            min = Math.min(this.capacity, i2);
            require(min);
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeDouble(double d) {
        require(8);
        UnsafeUtil.unsafe.putDouble(this.f7375b + this.position, d);
        int i = this.position + 8;
        this.position = i;
        m23192g(this.byteBuffer, i);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeLong(long j) {
        require(8);
        UnsafeUtil.unsafe.putLong(this.f7375b + this.position, j);
        int i = this.position + 8;
        this.position = i;
        m23192g(this.byteBuffer, i);
    }

    public UnsafeByteBufferOutput(int i, int i2) {
        super(i, i2);
        m23191h();
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferOutput, com.esotericsoftware.kryo.p035io.Output
    public void writeByte(int i) {
        if (this.position == this.capacity) {
            require(1);
        }
        Unsafe unsafe = UnsafeUtil.unsafe;
        long j = this.f7375b;
        int i2 = this.position;
        this.position = i2 + 1;
        unsafe.putByte(j + i2, (byte) i);
        m23192g(this.byteBuffer, this.position);
    }

    public UnsafeByteBufferOutput(OutputStream outputStream) {
        super(outputStream);
        m23191h();
    }

    public UnsafeByteBufferOutput(OutputStream outputStream, int i) {
        super(outputStream, i);
        m23191h();
    }

    public UnsafeByteBufferOutput(long j, int i) {
        super(UnsafeUtil.newDirectBuffer(j, i));
        m23191h();
    }
}
