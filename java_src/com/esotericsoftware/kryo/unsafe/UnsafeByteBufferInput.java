package com.esotericsoftware.kryo.unsafe;

import com.esotericsoftware.kryo.p035io.ByteBufferInput;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import sun.misc.Unsafe;
import sun.nio.ch.DirectBuffer;
/* loaded from: classes.dex */
public class UnsafeByteBufferInput extends ByteBufferInput {

    /* renamed from: d */
    public long f7374d;

    public UnsafeByteBufferInput() {
    }

    /* renamed from: n */
    private void m23194n(Buffer buffer, int i) {
        buffer.position(i);
    }

    /* renamed from: o */
    public final void m23193o() {
        this.f7374d = this.byteBuffer.address();
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input, java.io.InputStream
    public int read() {
        if (optional(1) <= 0) {
            return -1;
        }
        Unsafe unsafe = UnsafeUtil.unsafe;
        long j = this.f7374d;
        int i = this.position;
        this.position = i + 1;
        int i2 = unsafe.getByte(j + i) & DefaultClassResolver.NAME;
        m23194n(this.byteBuffer, this.position);
        return i2;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public void readBytes(byte[] bArr, int i, int i2) {
        readBytes(bArr, UnsafeUtil.byteArrayBaseOffset + i, i2);
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public char readChar() {
        require(2);
        char c = UnsafeUtil.unsafe.getChar(this.f7374d + this.position);
        int i = this.position + 2;
        this.position = i;
        m23194n(this.byteBuffer, i);
        return c;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public float readFloat() {
        require(4);
        float f = UnsafeUtil.unsafe.getFloat(this.f7374d + this.position);
        int i = this.position + 4;
        this.position = i;
        m23194n(this.byteBuffer, i);
        return f;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public int readInt() {
        require(4);
        int i = UnsafeUtil.unsafe.getInt(this.f7374d + this.position);
        int i2 = this.position + 4;
        this.position = i2;
        m23194n(this.byteBuffer, i2);
        return i;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public short readShort() {
        require(2);
        short s = UnsafeUtil.unsafe.getShort(this.f7374d + this.position);
        int i = this.position + 2;
        this.position = i;
        m23194n(this.byteBuffer, i);
        return s;
    }

    public UnsafeByteBufferInput(int i) {
        super(i);
        m23193o();
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public boolean readBoolean() {
        boolean z = true;
        if (this.position == this.limit) {
            require(1);
        }
        Unsafe unsafe = UnsafeUtil.unsafe;
        long j = this.f7374d;
        int i = this.position;
        this.position = i + 1;
        if (unsafe.getByte(j + i) == 0) {
            z = false;
        }
        m23194n(this.byteBuffer, this.position);
        return z;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public boolean[] readBooleans(int i) {
        boolean[] zArr = new boolean[i];
        readBytes(zArr, UnsafeUtil.booleanArrayBaseOffset, i);
        return zArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public byte readByte() {
        if (this.position == this.limit) {
            require(1);
        }
        Unsafe unsafe = UnsafeUtil.unsafe;
        long j = this.f7374d;
        int i = this.position;
        this.position = i + 1;
        byte b = unsafe.getByte(j + i);
        m23194n(this.byteBuffer, this.position);
        return b;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public int readByteUnsigned() {
        if (this.position == this.limit) {
            require(1);
        }
        Unsafe unsafe = UnsafeUtil.unsafe;
        long j = this.f7374d;
        int i = this.position;
        this.position = i + 1;
        int i2 = unsafe.getByte(j + i) & DefaultClassResolver.NAME;
        m23194n(this.byteBuffer, this.position);
        return i2;
    }

    public void readBytes(Object obj, long j, int i) {
        long j2 = j;
        int min = Math.min(this.limit - this.position, i);
        int i2 = i;
        while (true) {
            long j3 = min;
            UnsafeUtil.unsafe.copyMemory((Object) null, this.f7374d + this.position, obj, j2, j3);
            int i3 = this.position + min;
            this.position = i3;
            i2 -= min;
            if (i2 == 0) {
                m23194n(this.byteBuffer, i3);
                return;
            }
            j2 += j3;
            min = Math.min(i2, this.capacity);
            require(min);
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public char[] readChars(int i) {
        char[] cArr = new char[i];
        readBytes(cArr, UnsafeUtil.charArrayBaseOffset, i << 1);
        return cArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public double readDouble() {
        require(8);
        double d = UnsafeUtil.unsafe.getDouble(this.f7374d + this.position);
        int i = this.position + 8;
        this.position = i;
        m23194n(this.byteBuffer, i);
        return d;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public double[] readDoubles(int i) {
        double[] dArr = new double[i];
        readBytes(dArr, UnsafeUtil.doubleArrayBaseOffset, i << 3);
        return dArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public float[] readFloats(int i) {
        float[] fArr = new float[i];
        readBytes(fArr, UnsafeUtil.floatArrayBaseOffset, i << 2);
        return fArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public int[] readInts(int i) {
        int[] iArr = new int[i];
        readBytes(iArr, UnsafeUtil.intArrayBaseOffset, i << 2);
        return iArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public long readLong() {
        require(8);
        long j = UnsafeUtil.unsafe.getLong(this.f7374d + this.position);
        int i = this.position + 8;
        this.position = i;
        m23194n(this.byteBuffer, i);
        return j;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public long[] readLongs(int i) {
        long[] jArr = new long[i];
        readBytes(jArr, UnsafeUtil.longArrayBaseOffset, i << 3);
        return jArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput, com.esotericsoftware.kryo.p035io.Input
    public short[] readShorts(int i) {
        short[] sArr = new short[i];
        readBytes(sArr, UnsafeUtil.shortArrayBaseOffset, i << 1);
        return sArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.ByteBufferInput
    public void setBuffer(ByteBuffer byteBuffer) {
        if (byteBuffer instanceof DirectBuffer) {
            ByteBuffer byteBuffer2 = this.byteBuffer;
            if (byteBuffer != byteBuffer2) {
                UnsafeUtil.dispose(byteBuffer2);
            }
            super.setBuffer(byteBuffer);
            m23193o();
            return;
        }
        throw new IllegalArgumentException("buffer must be direct.");
    }

    public UnsafeByteBufferInput(byte[] bArr) {
        super(bArr);
        m23193o();
    }

    public UnsafeByteBufferInput(byte[] bArr, int i, int i2) {
        super(bArr, i, i2);
        m23193o();
    }

    public UnsafeByteBufferInput(ByteBuffer byteBuffer) {
        super(byteBuffer);
        m23193o();
    }

    public UnsafeByteBufferInput(long j, int i) {
        super(UnsafeUtil.newDirectBuffer(j, i));
        m23193o();
    }

    public UnsafeByteBufferInput(InputStream inputStream) {
        super(inputStream);
        m23193o();
    }

    public UnsafeByteBufferInput(InputStream inputStream, int i) {
        super(inputStream, i);
        m23193o();
    }
}
