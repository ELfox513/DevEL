package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.util.Util;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.esotericsoftware.kryo.io.ByteBufferOutput */
/* loaded from: classes.dex */
public class ByteBufferOutput extends Output {

    /* renamed from: a */
    public static final ByteOrder f7274a = ByteOrder.nativeOrder();
    public ByteBuffer byteBuffer;

    public ByteBufferOutput() {
    }

    /* renamed from: e */
    public final int m23271e(Buffer buffer) {
        return buffer.position();
    }

    /* renamed from: f */
    public final void m23270f(Buffer buffer, int i) {
        buffer.limit(i);
    }

    /* renamed from: g */
    public final void m23269g(Buffer buffer, int i) {
        buffer.position(i);
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public byte[] getBuffer() {
        throw new UnsupportedOperationException("This buffer does not used a byte[], see #getByteBuffer().");
    }

    public ByteBuffer getByteBuffer() {
        return this.byteBuffer;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public OutputStream getOutputStream() {
        return this.outputStream;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void setBuffer(byte[] bArr) {
        throw new UnsupportedOperationException("This buffer does not used a byte[], see #setByteBuffer(ByteBuffer).");
    }

    @Override // com.esotericsoftware.kryo.p035io.Output, java.io.OutputStream
    public void write(int i) {
        if (this.position == this.capacity) {
            require(1);
        }
        this.byteBuffer.put((byte) i);
        this.position++;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeByte(byte b) {
        if (this.position == this.capacity) {
            require(1);
        }
        this.byteBuffer.put(b);
        this.position++;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeBytes(byte[] bArr) {
        if (bArr != null) {
            writeBytes(bArr, 0, bArr.length);
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeChar(char c) {
        require(2);
        this.position += 2;
        this.byteBuffer.put((byte) c);
        this.byteBuffer.put((byte) (c >>> '\b'));
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeFloat(float f) {
        require(4);
        ByteBuffer byteBuffer = this.byteBuffer;
        this.position += 4;
        int floatToIntBits = Float.floatToIntBits(f);
        byteBuffer.put((byte) floatToIntBits);
        byteBuffer.put((byte) (floatToIntBits >> 8));
        byteBuffer.put((byte) (floatToIntBits >> 16));
        byteBuffer.put((byte) (floatToIntBits >> 24));
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeInt(int i) {
        require(4);
        this.position += 4;
        ByteBuffer byteBuffer = this.byteBuffer;
        byteBuffer.put((byte) i);
        byteBuffer.put((byte) (i >> 8));
        byteBuffer.put((byte) (i >> 16));
        byteBuffer.put((byte) (i >> 24));
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeShort(int i) {
        require(2);
        this.position += 2;
        this.byteBuffer.put((byte) i);
        this.byteBuffer.put((byte) (i >>> 8));
    }

    public ByteBufferOutput(int i) {
        this(i, i);
    }

    /* renamed from: c */
    private void m23273c(String str, int i) {
        ByteBuffer byteBuffer = this.byteBuffer;
        int min = Math.min(i, this.capacity - this.position);
        int i2 = 0;
        while (i2 < i) {
            byte[] bArr = new byte[i];
            int i3 = i2 + min;
            str.getBytes(i2, i3, bArr, 0);
            byteBuffer.put(bArr, 0, min);
            this.position += min;
            min = Math.min(i - i3, this.capacity);
            if (require(min)) {
                byteBuffer = this.byteBuffer;
            }
            i2 = i3;
        }
    }

    /* renamed from: d */
    private void m23272d(String str, int i, int i2) {
        while (i2 < i) {
            int i3 = this.position;
            int i4 = this.capacity;
            if (i3 == i4) {
                require(Math.min(i4, i - i2));
            }
            this.position++;
            char charAt = str.charAt(i2);
            if (charAt <= 127) {
                this.byteBuffer.put((byte) charAt);
            } else if (charAt > 2047) {
                this.byteBuffer.put((byte) (((charAt >> '\f') & 15) | 224));
                require(2);
                this.position += 2;
                this.byteBuffer.put((byte) (((charAt >> 6) & 63) | 128));
                this.byteBuffer.put((byte) ((charAt & '?') | 128));
            } else {
                this.byteBuffer.put((byte) (((charAt >> 6) & 31) | 192));
                if (this.position == this.capacity) {
                    require(1);
                }
                this.position++;
                this.byteBuffer.put((byte) ((charAt & '?') | 128));
            }
            i2++;
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output, java.io.OutputStream, java.io.Flushable
    public void flush() {
        if (this.outputStream == null) {
            return;
        }
        try {
            byte[] bArr = new byte[this.position];
            m23269g(this.byteBuffer, 0);
            this.byteBuffer.get(bArr);
            m23269g(this.byteBuffer, 0);
            this.outputStream.write(bArr, 0, this.position);
            this.total += this.position;
            this.position = 0;
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public boolean require(int i) {
        int min;
        ByteBuffer allocateDirect;
        if (this.capacity - this.position >= i) {
            return false;
        }
        flush();
        int i2 = this.capacity;
        int i3 = this.position;
        if (i2 - i3 >= i) {
            return true;
        }
        int i4 = this.maxCapacity;
        if (i > i4 - i3) {
            if (i > i4) {
                throw new KryoBufferOverflowException("Buffer overflow. Max capacity: " + this.maxCapacity + ", required: " + i);
            }
            throw new KryoBufferOverflowException("Buffer overflow. Available: " + (this.maxCapacity - this.position) + ", required: " + i);
        }
        if (i2 == 0) {
            this.capacity = 16;
        }
        do {
            min = Math.min(this.capacity * 2, this.maxCapacity);
            this.capacity = min;
        } while (min - this.position < i);
        if (!this.byteBuffer.isDirect()) {
            allocateDirect = ByteBuffer.allocate(this.capacity);
        } else {
            allocateDirect = ByteBuffer.allocateDirect(this.capacity);
        }
        m23269g(this.byteBuffer, 0);
        m23270f(this.byteBuffer, this.position);
        allocateDirect.put(this.byteBuffer);
        allocateDirect.order(this.byteBuffer.order());
        this.byteBuffer = allocateDirect;
        return true;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void setBuffer(byte[] bArr, int i) {
        throw new UnsupportedOperationException("This buffer does not used a byte[], see #setByteBuffer(ByteBuffer).");
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void setPosition(int i) {
        this.position = i;
        m23269g(this.byteBuffer, i);
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public byte[] toBytes() {
        byte[] bArr = new byte[this.position];
        m23269g(this.byteBuffer, 0);
        this.byteBuffer.get(bArr, 0, this.position);
        return bArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeAscii(String str) {
        if (str == null) {
            writeByte(128);
            return;
        }
        int length = str.length();
        if (length == 0) {
            writeByte(129);
            return;
        }
        if (this.capacity - this.position < length) {
            m23273c(str, length);
        } else {
            ByteBuffer byteBuffer = this.byteBuffer;
            int length2 = str.length();
            for (int i = 0; i < length2; i++) {
                byteBuffer.put((byte) str.charAt(i));
            }
            this.position += length;
        }
        ByteBuffer byteBuffer2 = this.byteBuffer;
        int i2 = this.position;
        byteBuffer2.put(i2 - 1, (byte) (128 | byteBuffer2.get(i2 - 1)));
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeBoolean(boolean z) {
        if (this.position == this.capacity) {
            require(1);
        }
        this.byteBuffer.put(z ? (byte) 1 : (byte) 0);
        this.position++;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeBooleans(boolean[] zArr, int i, int i2) {
        if (this.capacity >= i2) {
            require(i2);
            int i3 = i2 + i;
            while (i < i3) {
                this.byteBuffer.put(zArr[i] ? (byte) 1 : (byte) 0);
                i++;
            }
            this.position = m23271e(this.byteBuffer);
            return;
        }
        int i4 = i2 + i;
        while (i < i4) {
            writeBoolean(zArr[i]);
            i++;
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeChars(char[] cArr, int i, int i2) {
        int i3 = i2 << 1;
        if (this.capacity >= i3) {
            require(i3);
            int i4 = i2 + i;
            while (i < i4) {
                char c = cArr[i];
                this.byteBuffer.put((byte) c);
                this.byteBuffer.put((byte) (c >>> '\b'));
                i++;
            }
            this.position = m23271e(this.byteBuffer);
            return;
        }
        int i5 = i2 + i;
        while (i < i5) {
            writeChar(cArr[i]);
            i++;
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeDouble(double d) {
        long doubleToLongBits;
        require(8);
        this.position += 8;
        ByteBuffer byteBuffer = this.byteBuffer;
        byteBuffer.put((byte) Double.doubleToLongBits(d));
        byteBuffer.put((byte) (doubleToLongBits >>> 8));
        byteBuffer.put((byte) (doubleToLongBits >>> 16));
        byteBuffer.put((byte) (doubleToLongBits >>> 24));
        byteBuffer.put((byte) (doubleToLongBits >>> 32));
        byteBuffer.put((byte) (doubleToLongBits >>> 40));
        byteBuffer.put((byte) (doubleToLongBits >>> 48));
        byteBuffer.put((byte) (doubleToLongBits >>> 56));
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeDoubles(double[] dArr, int i, int i2) {
        int i3 = i2 << 3;
        if (this.capacity >= i3) {
            require(i3);
            ByteBuffer byteBuffer = this.byteBuffer;
            int i4 = i2 + i;
            while (i < i4) {
                long doubleToLongBits = Double.doubleToLongBits(dArr[i]);
                byteBuffer.put((byte) doubleToLongBits);
                byteBuffer.put((byte) (doubleToLongBits >>> 8));
                byteBuffer.put((byte) (doubleToLongBits >>> 16));
                byteBuffer.put((byte) (doubleToLongBits >>> 24));
                byteBuffer.put((byte) (doubleToLongBits >>> 32));
                byteBuffer.put((byte) (doubleToLongBits >>> 40));
                byteBuffer.put((byte) (doubleToLongBits >>> 48));
                byteBuffer.put((byte) (doubleToLongBits >>> 56));
                i++;
            }
            this.position = m23271e(byteBuffer);
            return;
        }
        int i5 = i2 + i;
        while (i < i5) {
            writeDouble(dArr[i]);
            i++;
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeFloats(float[] fArr, int i, int i2) {
        int i3 = i2 << 2;
        if (this.capacity >= i3) {
            require(i3);
            ByteBuffer byteBuffer = this.byteBuffer;
            int i4 = i2 + i;
            while (i < i4) {
                int floatToIntBits = Float.floatToIntBits(fArr[i]);
                byteBuffer.put((byte) floatToIntBits);
                byteBuffer.put((byte) (floatToIntBits >> 8));
                byteBuffer.put((byte) (floatToIntBits >> 16));
                byteBuffer.put((byte) (floatToIntBits >> 24));
                i++;
            }
            this.position = m23271e(byteBuffer);
            return;
        }
        int i5 = i2 + i;
        while (i < i5) {
            writeFloat(fArr[i]);
            i++;
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeInts(int[] iArr, int i, int i2) {
        int i3 = i2 << 2;
        if (this.capacity >= i3) {
            require(i3);
            ByteBuffer byteBuffer = this.byteBuffer;
            int i4 = i2 + i;
            while (i < i4) {
                int i5 = iArr[i];
                byteBuffer.put((byte) i5);
                byteBuffer.put((byte) (i5 >> 8));
                byteBuffer.put((byte) (i5 >> 16));
                byteBuffer.put((byte) (i5 >> 24));
                i++;
            }
            this.position = m23271e(byteBuffer);
            return;
        }
        int i6 = i2 + i;
        while (i < i6) {
            writeInt(iArr[i]);
            i++;
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeLong(long j) {
        require(8);
        this.position += 8;
        ByteBuffer byteBuffer = this.byteBuffer;
        byteBuffer.put((byte) j);
        byteBuffer.put((byte) (j >>> 8));
        byteBuffer.put((byte) (j >>> 16));
        byteBuffer.put((byte) (j >>> 24));
        byteBuffer.put((byte) (j >>> 32));
        byteBuffer.put((byte) (j >>> 40));
        byteBuffer.put((byte) (j >>> 48));
        byteBuffer.put((byte) (j >>> 56));
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeLongs(long[] jArr, int i, int i2) {
        int i3 = i2 << 3;
        if (this.capacity >= i3) {
            require(i3);
            ByteBuffer byteBuffer = this.byteBuffer;
            int i4 = i2 + i;
            while (i < i4) {
                long j = jArr[i];
                byteBuffer.put((byte) j);
                byteBuffer.put((byte) (j >>> 8));
                byteBuffer.put((byte) (j >>> 16));
                byteBuffer.put((byte) (j >>> 24));
                byteBuffer.put((byte) (j >>> 32));
                byteBuffer.put((byte) (j >>> 40));
                byteBuffer.put((byte) (j >>> 48));
                byteBuffer.put((byte) (j >>> 56));
                i++;
            }
            this.position = m23271e(byteBuffer);
            return;
        }
        int i5 = i2 + i;
        while (i < i5) {
            writeLong(jArr[i]);
            i++;
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeShorts(short[] sArr, int i, int i2) {
        int i3 = i2 << 1;
        if (this.capacity >= i3) {
            require(i3);
            int i4 = i2 + i;
            while (i < i4) {
                short s = sArr[i];
                this.byteBuffer.put((byte) s);
                this.byteBuffer.put((byte) (s >>> 8));
                i++;
            }
            this.position = m23271e(this.byteBuffer);
            return;
        }
        int i5 = i2 + i;
        while (i < i5) {
            writeShort(sArr[i]);
            i++;
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeString(String str) {
        if (str == null) {
            writeByte(128);
            return;
        }
        int length = str.length();
        if (length == 0) {
            writeByte(129);
            return;
        }
        int i = 0;
        if (length > 1 && length <= 32) {
            for (int i2 = 0; i2 < length; i2++) {
                if (str.charAt(i2) <= 127) {
                }
            }
            if (this.capacity - this.position < length) {
                m23273c(str, length);
            } else {
                int length2 = str.length();
                while (i < length2) {
                    this.byteBuffer.put((byte) str.charAt(i));
                    i++;
                }
                this.position += length;
            }
            ByteBuffer byteBuffer = this.byteBuffer;
            int i3 = this.position;
            byteBuffer.put(i3 - 1, (byte) (128 | byteBuffer.get(i3 - 1)));
            return;
        }
        writeVarIntFlag(true, length + 1, true);
        if (this.capacity - this.position >= length) {
            ByteBuffer byteBuffer2 = this.byteBuffer;
            do {
                char charAt = str.charAt(i);
                if (charAt > 127) {
                    this.position = m23271e(byteBuffer2);
                } else {
                    byteBuffer2.put((byte) charAt);
                    i++;
                }
            } while (i != length);
            this.position = m23271e(byteBuffer2);
            return;
        }
        if (i < length) {
            m23272d(str, length, i);
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public int writeVarInt(int i, boolean z) {
        if (!z) {
            i = (i >> 31) ^ (i << 1);
        }
        int i2 = i >>> 7;
        if (i2 == 0) {
            if (this.position == this.capacity) {
                require(1);
            }
            this.position++;
            this.byteBuffer.put((byte) i);
            return 1;
        }
        int i3 = i >>> 14;
        if (i3 == 0) {
            require(2);
            this.position += 2;
            this.byteBuffer.put((byte) ((i & 127) | 128));
            this.byteBuffer.put((byte) i2);
            return 2;
        }
        int i4 = i >>> 21;
        if (i4 == 0) {
            require(3);
            this.position += 3;
            ByteBuffer byteBuffer = this.byteBuffer;
            byteBuffer.put((byte) ((i & 127) | 128));
            byteBuffer.put((byte) (i2 | 128));
            byteBuffer.put((byte) i3);
            return 3;
        }
        int i5 = i >>> 28;
        if (i5 == 0) {
            require(4);
            this.position += 4;
            ByteBuffer byteBuffer2 = this.byteBuffer;
            byteBuffer2.put((byte) ((i & 127) | 128));
            byteBuffer2.put((byte) (i2 | 128));
            byteBuffer2.put((byte) (i3 | 128));
            byteBuffer2.put((byte) i4);
            return 4;
        }
        require(5);
        this.position += 5;
        ByteBuffer byteBuffer3 = this.byteBuffer;
        byteBuffer3.put((byte) ((i & 127) | 128));
        byteBuffer3.put((byte) (i2 | 128));
        byteBuffer3.put((byte) (i3 | 128));
        byteBuffer3.put((byte) (i4 | 128));
        byteBuffer3.put((byte) i5);
        return 5;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public int writeVarIntFlag(boolean z, int i, boolean z2) {
        int i2;
        if (!z2) {
            i = (i >> 31) ^ (i << 1);
        }
        int i3 = i & 63;
        if (z) {
            i2 = 128;
        } else {
            i2 = 0;
        }
        int i4 = i2 | i3;
        int i5 = i >>> 6;
        if (i5 == 0) {
            if (this.position == this.capacity) {
                require(1);
            }
            this.byteBuffer.put((byte) i4);
            this.position++;
            return 1;
        }
        int i6 = i >>> 13;
        if (i6 == 0) {
            require(2);
            this.position += 2;
            this.byteBuffer.put((byte) (i4 | 64));
            this.byteBuffer.put((byte) i5);
            return 2;
        }
        int i7 = i >>> 20;
        if (i7 == 0) {
            require(3);
            this.position += 3;
            ByteBuffer byteBuffer = this.byteBuffer;
            byteBuffer.put((byte) (i4 | 64));
            byteBuffer.put((byte) (i5 | 128));
            byteBuffer.put((byte) i6);
            return 3;
        }
        int i8 = i >>> 27;
        if (i8 == 0) {
            require(4);
            this.position += 4;
            ByteBuffer byteBuffer2 = this.byteBuffer;
            byteBuffer2.put((byte) (i4 | 64));
            byteBuffer2.put((byte) (i5 | 128));
            byteBuffer2.put((byte) (i6 | 128));
            byteBuffer2.put((byte) i7);
            return 4;
        }
        require(5);
        this.position += 5;
        ByteBuffer byteBuffer3 = this.byteBuffer;
        byteBuffer3.put((byte) (i4 | 64));
        byteBuffer3.put((byte) (i5 | 128));
        byteBuffer3.put((byte) (i6 | 128));
        byteBuffer3.put((byte) (i7 | 128));
        byteBuffer3.put((byte) i8);
        return 5;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public int writeVarLong(long j, boolean z) {
        long j2;
        if (!z) {
            j2 = (j << 1) ^ (j >> 63);
        } else {
            j2 = j;
        }
        long j3 = j2 >>> 7;
        if (j3 == 0) {
            if (this.position == this.capacity) {
                require(1);
            }
            this.position++;
            this.byteBuffer.put((byte) j2);
            return 1;
        }
        long j4 = j2 >>> 14;
        if (j4 == 0) {
            require(2);
            this.position += 2;
            this.byteBuffer.put((byte) ((j2 & 127) | 128));
            this.byteBuffer.put((byte) j3);
            return 2;
        }
        long j5 = j2 >>> 21;
        if (j5 == 0) {
            require(3);
            this.position += 3;
            ByteBuffer byteBuffer = this.byteBuffer;
            byteBuffer.put((byte) ((j2 & 127) | 128));
            byteBuffer.put((byte) (j3 | 128));
            byteBuffer.put((byte) j4);
            return 3;
        }
        long j6 = j2 >>> 28;
        if (j6 == 0) {
            require(4);
            this.position += 4;
            ByteBuffer byteBuffer2 = this.byteBuffer;
            byteBuffer2.put((byte) ((j2 & 127) | 128));
            byteBuffer2.put((byte) (j3 | 128));
            byteBuffer2.put((byte) (j4 | 128));
            byteBuffer2.put((byte) j5);
            return 4;
        }
        long j7 = j2 >>> 35;
        if (j7 == 0) {
            require(5);
            this.position += 5;
            ByteBuffer byteBuffer3 = this.byteBuffer;
            byteBuffer3.put((byte) ((j2 & 127) | 128));
            byteBuffer3.put((byte) (j3 | 128));
            byteBuffer3.put((byte) (j4 | 128));
            byteBuffer3.put((byte) (j5 | 128));
            byteBuffer3.put((byte) j6);
            return 5;
        }
        long j8 = j2 >>> 42;
        if (j8 == 0) {
            require(6);
            this.position += 6;
            ByteBuffer byteBuffer4 = this.byteBuffer;
            byteBuffer4.put((byte) ((j2 & 127) | 128));
            byteBuffer4.put((byte) (j3 | 128));
            byteBuffer4.put((byte) (j4 | 128));
            byteBuffer4.put((byte) (j5 | 128));
            byteBuffer4.put((byte) (j6 | 128));
            byteBuffer4.put((byte) j7);
            return 6;
        }
        long j9 = j2 >>> 49;
        if (j9 == 0) {
            require(7);
            this.position += 7;
            ByteBuffer byteBuffer5 = this.byteBuffer;
            byteBuffer5.put((byte) ((j2 & 127) | 128));
            byteBuffer5.put((byte) (j3 | 128));
            byteBuffer5.put((byte) (j4 | 128));
            byteBuffer5.put((byte) (j5 | 128));
            byteBuffer5.put((byte) (j6 | 128));
            byteBuffer5.put((byte) (j7 | 128));
            byteBuffer5.put((byte) j8);
            return 7;
        }
        long j10 = j2 >>> 56;
        if (j10 == 0) {
            require(8);
            this.position += 8;
            ByteBuffer byteBuffer6 = this.byteBuffer;
            byteBuffer6.put((byte) ((j2 & 127) | 128));
            byteBuffer6.put((byte) (j3 | 128));
            byteBuffer6.put((byte) (j4 | 128));
            byteBuffer6.put((byte) (j5 | 128));
            byteBuffer6.put((byte) (j6 | 128));
            byteBuffer6.put((byte) (j7 | 128));
            byteBuffer6.put((byte) (j8 | 128));
            byteBuffer6.put((byte) j9);
            return 8;
        }
        require(9);
        this.position += 9;
        ByteBuffer byteBuffer7 = this.byteBuffer;
        byteBuffer7.put((byte) ((j2 & 127) | 128));
        byteBuffer7.put((byte) (j3 | 128));
        byteBuffer7.put((byte) (j4 | 128));
        byteBuffer7.put((byte) (j5 | 128));
        byteBuffer7.put((byte) (j6 | 128));
        byteBuffer7.put((byte) (j7 | 128));
        byteBuffer7.put((byte) (j8 | 128));
        byteBuffer7.put((byte) (j9 | 128));
        byteBuffer7.put((byte) j10);
        return 9;
    }

    public ByteBufferOutput(int i, int i2) {
        if (i2 >= -1) {
            this.capacity = i;
            this.maxCapacity = i2 == -1 ? Util.maxArraySize : i2;
            this.byteBuffer = ByteBuffer.allocateDirect(i);
            return;
        }
        throw new IllegalArgumentException("maxBufferSize cannot be < -1: " + i2);
    }

    @Override // com.esotericsoftware.kryo.p035io.Output, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        flush();
        OutputStream outputStream = this.outputStream;
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output, com.esotericsoftware.kryo.util.Pool.Poolable
    public void reset() {
        super.reset();
        m23269g(this.byteBuffer, 0);
    }

    public void setBuffer(byte[] bArr, int i, int i2) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bArr.length);
        allocateDirect.put(bArr, i, i2);
        m23269g(allocateDirect, 0);
        m23270f(allocateDirect, bArr.length);
        setBuffer(allocateDirect);
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeBytes(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int min = Math.min(this.capacity - this.position, i2);
            while (true) {
                this.byteBuffer.put(bArr, i, min);
                this.position += min;
                i2 -= min;
                if (i2 == 0) {
                    return;
                }
                i += min;
                min = Math.min(this.capacity, i2);
                require(min);
            }
        } else {
            throw new IllegalArgumentException("bytes cannot be null.");
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Output, java.io.OutputStream
    public void write(byte[] bArr) {
        if (bArr != null) {
            writeBytes(bArr, 0, bArr.length);
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    @Override // com.esotericsoftware.kryo.p035io.Output
    public void writeByte(int i) {
        if (this.position == this.capacity) {
            require(1);
        }
        this.byteBuffer.put((byte) i);
        this.position++;
    }

    @Override // com.esotericsoftware.kryo.p035io.Output, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        writeBytes(bArr, i, i2);
    }

    public ByteBufferOutput(ByteBuffer byteBuffer) {
        setBuffer(byteBuffer);
    }

    public void setBuffer(ByteBuffer byteBuffer) {
        setBuffer(byteBuffer, byteBuffer.capacity());
    }

    public void setBuffer(ByteBuffer byteBuffer, int i) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("buffer cannot be null.");
        }
        if (i >= -1) {
            this.byteBuffer = byteBuffer;
            if (i == -1) {
                i = Util.maxArraySize;
            }
            this.maxCapacity = i;
            this.capacity = byteBuffer.capacity();
            this.position = byteBuffer.position();
            this.total = 0L;
            this.outputStream = null;
            return;
        }
        throw new IllegalArgumentException("maxBufferSize cannot be < -1: " + i);
    }

    public ByteBufferOutput(ByteBuffer byteBuffer, int i) {
        setBuffer(byteBuffer, i);
    }

    public ByteBufferOutput(OutputStream outputStream) {
        this(4096, 4096);
        if (outputStream != null) {
            this.outputStream = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }

    public ByteBufferOutput(OutputStream outputStream, int i) {
        this(i, i);
        if (outputStream != null) {
            this.outputStream = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }
}
