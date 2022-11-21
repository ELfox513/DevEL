package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.util.Pool;
import com.esotericsoftware.kryo.util.Util;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.esotericsoftware.kryo.io.Output */
/* loaded from: classes.dex */
public class Output extends OutputStream implements AutoCloseable, Pool.Poolable {
    public byte[] buffer;
    public int capacity;
    public int maxCapacity;
    public OutputStream outputStream;
    public int position;
    public long total;
    public boolean varEncoding;

    public Output() {
        this.varEncoding = true;
    }

    public static int varIntLength(int i, boolean z) {
        if (!z) {
            i = (i >> 31) ^ (i << 1);
        }
        if ((i >>> 7) == 0) {
            return 1;
        }
        if ((i >>> 14) == 0) {
            return 2;
        }
        if ((i >>> 21) == 0) {
            return 3;
        }
        return (i >>> 28) == 0 ? 4 : 5;
    }

    public static int varLongLength(long j, boolean z) {
        if (!z) {
            j = (j >> 63) ^ (j << 1);
        }
        if ((j >>> 7) == 0) {
            return 1;
        }
        if ((j >>> 14) == 0) {
            return 2;
        }
        if ((j >>> 21) == 0) {
            return 3;
        }
        if ((j >>> 28) == 0) {
            return 4;
        }
        if ((j >>> 35) == 0) {
            return 5;
        }
        if ((j >>> 42) == 0) {
            return 6;
        }
        if ((j >>> 49) == 0) {
            return 7;
        }
        return (j >>> 56) == 0 ? 8 : 9;
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    public int getMaxCapacity() {
        return this.maxCapacity;
    }

    public OutputStream getOutputStream() {
        return this.outputStream;
    }

    public boolean getVariableLengthEncoding() {
        return this.varEncoding;
    }

    public int intLength(int i, boolean z) {
        if (this.varEncoding) {
            return varIntLength(i, z);
        }
        return 4;
    }

    public int longLength(int i, boolean z) {
        if (this.varEncoding) {
            return varLongLength(i, z);
        }
        return 8;
    }

    public int position() {
        return this.position;
    }

    public void reset() {
        this.position = 0;
        this.total = 0L;
    }

    public void setBuffer(byte[] bArr) {
        setBuffer(bArr, bArr.length);
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setVariableLengthEncoding(boolean z) {
        this.varEncoding = z;
    }

    public long total() {
        return this.total + this.position;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        if (this.position == this.capacity) {
            require(1);
        }
        byte[] bArr = this.buffer;
        int i2 = this.position;
        this.position = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public void writeByte(byte b) {
        if (this.position == this.capacity) {
            require(1);
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        bArr[i] = b;
    }

    public void writeBytes(byte[] bArr) {
        if (bArr != null) {
            writeBytes(bArr, 0, bArr.length);
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    public void writeChar(char c) {
        require(2);
        int i = this.position;
        this.position = i + 2;
        byte[] bArr = this.buffer;
        bArr[i] = (byte) c;
        bArr[i + 1] = (byte) (c >>> '\b');
    }

    public void writeFloat(float f) {
        require(4);
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 4;
        int floatToIntBits = Float.floatToIntBits(f);
        bArr[i] = (byte) floatToIntBits;
        bArr[i + 1] = (byte) (floatToIntBits >> 8);
        bArr[i + 2] = (byte) (floatToIntBits >> 16);
        bArr[i + 3] = (byte) (floatToIntBits >> 24);
    }

    public void writeInt(int i) {
        require(4);
        byte[] bArr = this.buffer;
        int i2 = this.position;
        this.position = i2 + 4;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
    }

    public void writeInts(int[] iArr, int i, int i2) {
        int i3 = i2 << 2;
        if (this.capacity < i3) {
            int i4 = i2 + i;
            while (i < i4) {
                writeInt(iArr[i]);
                i++;
            }
            return;
        }
        require(i3);
        byte[] bArr = this.buffer;
        int i5 = this.position;
        int i6 = i2 + i;
        while (i < i6) {
            int i7 = iArr[i];
            bArr[i5] = (byte) i7;
            bArr[i5 + 1] = (byte) (i7 >> 8);
            bArr[i5 + 2] = (byte) (i7 >> 16);
            bArr[i5 + 3] = (byte) (i7 >> 24);
            i++;
            i5 += 4;
        }
        this.position = i5;
    }

    public void writeLong(long j) {
        require(8);
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 8;
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >>> 8);
        bArr[i + 2] = (byte) (j >>> 16);
        bArr[i + 3] = (byte) (j >>> 24);
        bArr[i + 4] = (byte) (j >>> 32);
        bArr[i + 5] = (byte) (j >>> 40);
        bArr[i + 6] = (byte) (j >>> 48);
        bArr[i + 7] = (byte) (j >>> 56);
    }

    public void writeLongs(long[] jArr, int i, int i2) {
        int i3 = i2 << 3;
        if (this.capacity < i3) {
            int i4 = i2 + i;
            while (i < i4) {
                writeLong(jArr[i]);
                i++;
            }
            return;
        }
        require(i3);
        byte[] bArr = this.buffer;
        int i5 = this.position;
        int i6 = i2 + i;
        while (i < i6) {
            long j = jArr[i];
            bArr[i5] = (byte) j;
            bArr[i5 + 1] = (byte) (j >>> 8);
            bArr[i5 + 2] = (byte) (j >>> 16);
            bArr[i5 + 3] = (byte) (j >>> 24);
            bArr[i5 + 4] = (byte) (j >>> 32);
            bArr[i5 + 5] = (byte) (j >>> 40);
            bArr[i5 + 6] = (byte) (j >>> 48);
            bArr[i5 + 7] = (byte) (j >>> 56);
            i++;
            i5 += 8;
        }
        this.position = i5;
    }

    public void writeShort(int i) {
        require(2);
        int i2 = this.position;
        this.position = i2 + 2;
        byte[] bArr = this.buffer;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
    }

    public int writeVarDouble(double d, double d2, boolean z) {
        return writeVarLong((long) (d * d2), z);
    }

    public int writeVarFloat(float f, float f2, boolean z) {
        return writeVarInt((int) (f * f2), z);
    }

    /* renamed from: c */
    public final void m23260c(String str, int i) {
        if (i == 0) {
            return;
        }
        if (this.position == this.capacity) {
            require(1);
        }
        int i2 = 0;
        byte[] bArr = this.buffer;
        int min = Math.min(i, this.capacity - this.position);
        while (i2 < i) {
            int i3 = i2 + min;
            str.getBytes(i2, i3, bArr, this.position);
            this.position += min;
            min = Math.min(i - i3, this.capacity);
            if (require(min)) {
                bArr = this.buffer;
            }
            i2 = i3;
        }
    }

    /* renamed from: d */
    public final void m23259d(String str, int i, int i2) {
        while (i2 < i) {
            int i3 = this.position;
            int i4 = this.capacity;
            if (i3 == i4) {
                require(Math.min(i4, i - i2));
            }
            char charAt = str.charAt(i2);
            if (charAt <= 127) {
                byte[] bArr = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                bArr[i5] = (byte) charAt;
            } else if (charAt > 2047) {
                byte[] bArr2 = this.buffer;
                int i6 = this.position;
                this.position = i6 + 1;
                bArr2[i6] = (byte) (((charAt >> '\f') & 15) | 224);
                require(2);
                byte[] bArr3 = this.buffer;
                int i7 = this.position;
                int i8 = i7 + 1;
                bArr3[i7] = (byte) (((charAt >> 6) & 63) | 128);
                this.position = i8 + 1;
                bArr3[i8] = (byte) ((charAt & '?') | 128);
            } else {
                byte[] bArr4 = this.buffer;
                int i9 = this.position;
                int i10 = i9 + 1;
                this.position = i10;
                bArr4[i9] = (byte) (((charAt >> 6) & 31) | 192);
                if (i10 == this.capacity) {
                    require(1);
                }
                byte[] bArr5 = this.buffer;
                int i11 = this.position;
                this.position = i11 + 1;
                bArr5[i11] = (byte) ((charAt & '?') | 128);
            }
            i2++;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        OutputStream outputStream = this.outputStream;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.write(this.buffer, 0, this.position);
            this.outputStream.flush();
            this.total += this.position;
            this.position = 0;
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    public boolean require(int i) {
        int min;
        int i2;
        if (this.capacity - this.position >= i) {
            return false;
        }
        flush();
        int i3 = this.capacity;
        int i4 = this.position;
        if (i3 - i4 >= i) {
            return true;
        }
        int i5 = this.maxCapacity;
        if (i > i5 - i4) {
            if (i > i5) {
                throw new KryoBufferOverflowException("Buffer overflow. Max capacity: " + this.maxCapacity + ", required: " + i);
            }
            throw new KryoBufferOverflowException("Buffer overflow. Available: " + (this.maxCapacity - this.position) + ", required: " + i);
        }
        if (i3 == 0) {
            this.capacity = 16;
        }
        do {
            min = Math.min(this.capacity * 2, this.maxCapacity);
            this.capacity = min;
            i2 = this.position;
        } while (min - i2 < i);
        byte[] bArr = new byte[min];
        System.arraycopy(this.buffer, 0, bArr, 0, i2);
        this.buffer = bArr;
        return true;
    }

    public void setBuffer(byte[] bArr, int i) {
        if (bArr != null) {
            if (bArr.length > i && i != -1) {
                throw new IllegalArgumentException("buffer has length: " + bArr.length + " cannot be greater than maxBufferSize: " + i);
            } else if (i >= -1) {
                this.buffer = bArr;
                if (i == -1) {
                    i = Util.maxArraySize;
                }
                this.maxCapacity = i;
                this.capacity = bArr.length;
                this.position = 0;
                this.total = 0L;
                this.outputStream = null;
                return;
            } else {
                throw new IllegalArgumentException("maxBufferSize cannot be < -1: " + i);
            }
        }
        throw new IllegalArgumentException("buffer cannot be null.");
    }

    public void setOutputStream(OutputStream outputStream) {
        this.outputStream = outputStream;
        reset();
    }

    public byte[] toBytes() {
        int i = this.position;
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, 0, bArr, 0, i);
        return bArr;
    }

    public void writeAscii(String str) {
        if (str == null) {
            writeByte(128);
            return;
        }
        int length = str.length();
        if (length != 0) {
            if (length != 1) {
                int i = this.capacity;
                int i2 = this.position;
                if (i - i2 < length) {
                    m23260c(str, length);
                } else {
                    str.getBytes(0, length, this.buffer, i2);
                    this.position += length;
                }
                byte[] bArr = this.buffer;
                int i3 = this.position - 1;
                bArr[i3] = (byte) (128 | bArr[i3]);
                return;
            }
            require(2);
            byte[] bArr2 = this.buffer;
            int i4 = this.position;
            int i5 = i4 + 1;
            bArr2[i4] = -126;
            this.position = i5 + 1;
            bArr2[i5] = (byte) str.charAt(0);
            return;
        }
        writeByte(129);
    }

    public void writeBoolean(boolean z) {
        if (this.position == this.capacity) {
            require(1);
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        bArr[i] = z ? (byte) 1 : (byte) 0;
    }

    public void writeBooleans(boolean[] zArr, int i, int i2) {
        if (this.capacity >= i2) {
            require(i2);
            byte[] bArr = this.buffer;
            int i3 = this.position;
            int i4 = i2 + i;
            while (i < i4) {
                bArr[i3] = zArr[i] ? (byte) 1 : (byte) 0;
                i++;
                i3++;
            }
            this.position = i3;
            return;
        }
        int i5 = i2 + i;
        while (i < i5) {
            writeBoolean(zArr[i]);
            i++;
        }
    }

    public void writeChars(char[] cArr, int i, int i2) {
        int i3 = i2 << 1;
        if (this.capacity >= i3) {
            require(i3);
            byte[] bArr = this.buffer;
            int i4 = this.position;
            int i5 = i2 + i;
            while (i < i5) {
                char c = cArr[i];
                bArr[i4] = (byte) c;
                bArr[i4 + 1] = (byte) (c >>> '\b');
                i++;
                i4 += 2;
            }
            this.position = i4;
            return;
        }
        int i6 = i2 + i;
        while (i < i6) {
            writeChar(cArr[i]);
            i++;
        }
    }

    public void writeDouble(double d) {
        require(8);
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 8;
        long doubleToLongBits = Double.doubleToLongBits(d);
        bArr[i] = (byte) doubleToLongBits;
        bArr[i + 1] = (byte) (doubleToLongBits >>> 8);
        bArr[i + 2] = (byte) (doubleToLongBits >>> 16);
        bArr[i + 3] = (byte) (doubleToLongBits >>> 24);
        bArr[i + 4] = (byte) (doubleToLongBits >>> 32);
        bArr[i + 5] = (byte) (doubleToLongBits >>> 40);
        bArr[i + 6] = (byte) (doubleToLongBits >>> 48);
        bArr[i + 7] = (byte) (doubleToLongBits >>> 56);
    }

    public void writeDoubles(double[] dArr, int i, int i2) {
        int i3 = i2 << 3;
        if (this.capacity >= i3) {
            require(i3);
            byte[] bArr = this.buffer;
            int i4 = this.position;
            int i5 = i2 + i;
            while (i < i5) {
                long doubleToLongBits = Double.doubleToLongBits(dArr[i]);
                bArr[i4] = (byte) doubleToLongBits;
                bArr[i4 + 1] = (byte) (doubleToLongBits >>> 8);
                bArr[i4 + 2] = (byte) (doubleToLongBits >>> 16);
                bArr[i4 + 3] = (byte) (doubleToLongBits >>> 24);
                bArr[i4 + 4] = (byte) (doubleToLongBits >>> 32);
                bArr[i4 + 5] = (byte) (doubleToLongBits >>> 40);
                bArr[i4 + 6] = (byte) (doubleToLongBits >>> 48);
                bArr[i4 + 7] = (byte) (doubleToLongBits >>> 56);
                i++;
                i4 += 8;
            }
            this.position = i4;
            return;
        }
        int i6 = i2 + i;
        while (i < i6) {
            writeDouble(dArr[i]);
            i++;
        }
    }

    public void writeFloats(float[] fArr, int i, int i2) {
        int i3 = i2 << 2;
        if (this.capacity >= i3) {
            require(i3);
            byte[] bArr = this.buffer;
            int i4 = this.position;
            int i5 = i2 + i;
            while (i < i5) {
                int floatToIntBits = Float.floatToIntBits(fArr[i]);
                bArr[i4] = (byte) floatToIntBits;
                bArr[i4 + 1] = (byte) (floatToIntBits >> 8);
                bArr[i4 + 2] = (byte) (floatToIntBits >> 16);
                bArr[i4 + 3] = (byte) (floatToIntBits >> 24);
                i++;
                i4 += 4;
            }
            this.position = i4;
            return;
        }
        int i6 = i2 + i;
        while (i < i6) {
            writeFloat(fArr[i]);
            i++;
        }
    }

    public void writeShorts(short[] sArr, int i, int i2) {
        int i3 = i2 << 1;
        if (this.capacity >= i3) {
            require(i3);
            byte[] bArr = this.buffer;
            int i4 = this.position;
            int i5 = i2 + i;
            while (i < i5) {
                short s = sArr[i];
                bArr[i4] = (byte) s;
                bArr[i4 + 1] = (byte) (s >>> 8);
                i++;
                i4 += 2;
            }
            this.position = i4;
            return;
        }
        int i6 = i2 + i;
        while (i < i6) {
            writeShort(sArr[i]);
            i++;
        }
    }

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
            int i3 = this.capacity;
            int i4 = this.position;
            if (i3 - i4 < length) {
                m23260c(str, length);
            } else {
                str.getBytes(0, length, this.buffer, i4);
                this.position += length;
            }
            byte[] bArr = this.buffer;
            int i5 = this.position - 1;
            bArr[i5] = (byte) (128 | bArr[i5]);
            return;
        }
        writeVarIntFlag(true, length + 1, true);
        int i6 = this.capacity;
        int i7 = this.position;
        if (i6 - i7 >= length) {
            byte[] bArr2 = this.buffer;
            while (true) {
                char charAt = str.charAt(i);
                if (charAt > 127) {
                    this.position = i7;
                    break;
                }
                int i8 = i7 + 1;
                bArr2[i7] = (byte) charAt;
                i++;
                if (i == length) {
                    this.position = i8;
                    return;
                }
                i7 = i8;
            }
        }
        if (i < length) {
            m23259d(str, length, i);
        }
    }

    public int writeVarInt(int i, boolean z) {
        if (!z) {
            i = (i >> 31) ^ (i << 1);
        }
        int i2 = i >>> 7;
        if (i2 == 0) {
            if (this.position == this.capacity) {
                require(1);
            }
            byte[] bArr = this.buffer;
            int i3 = this.position;
            this.position = i3 + 1;
            bArr[i3] = (byte) i;
            return 1;
        }
        int i4 = i >>> 14;
        if (i4 == 0) {
            require(2);
            int i5 = this.position;
            this.position = i5 + 2;
            byte[] bArr2 = this.buffer;
            bArr2[i5] = (byte) ((i & 127) | 128);
            bArr2[i5 + 1] = (byte) i2;
            return 2;
        }
        int i6 = i >>> 21;
        if (i6 == 0) {
            require(3);
            int i7 = this.position;
            this.position = i7 + 3;
            byte[] bArr3 = this.buffer;
            bArr3[i7] = (byte) ((i & 127) | 128);
            bArr3[i7 + 1] = (byte) (i2 | 128);
            bArr3[i7 + 2] = (byte) i4;
            return 3;
        }
        int i8 = i >>> 28;
        if (i8 == 0) {
            require(4);
            int i9 = this.position;
            this.position = i9 + 4;
            byte[] bArr4 = this.buffer;
            bArr4[i9] = (byte) ((i & 127) | 128);
            bArr4[i9 + 1] = (byte) (i2 | 128);
            bArr4[i9 + 2] = (byte) (i4 | 128);
            bArr4[i9 + 3] = (byte) i6;
            return 4;
        }
        require(5);
        int i10 = this.position;
        this.position = i10 + 5;
        byte[] bArr5 = this.buffer;
        bArr5[i10] = (byte) ((i & 127) | 128);
        bArr5[i10 + 1] = (byte) (i2 | 128);
        bArr5[i10 + 2] = (byte) (i4 | 128);
        bArr5[i10 + 3] = (byte) (i6 | 128);
        bArr5[i10 + 4] = (byte) i8;
        return 5;
    }

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
            byte[] bArr = this.buffer;
            int i6 = this.position;
            this.position = i6 + 1;
            bArr[i6] = (byte) i4;
            return 1;
        }
        int i7 = i >>> 13;
        if (i7 == 0) {
            require(2);
            int i8 = this.position;
            this.position = i8 + 2;
            byte[] bArr2 = this.buffer;
            bArr2[i8] = (byte) (i4 | 64);
            bArr2[i8 + 1] = (byte) i5;
            return 2;
        }
        int i9 = i >>> 20;
        if (i9 == 0) {
            require(3);
            byte[] bArr3 = this.buffer;
            int i10 = this.position;
            this.position = i10 + 3;
            bArr3[i10] = (byte) (i4 | 64);
            bArr3[i10 + 1] = (byte) (i5 | 128);
            bArr3[i10 + 2] = (byte) i7;
            return 3;
        }
        int i11 = i >>> 27;
        if (i11 == 0) {
            require(4);
            byte[] bArr4 = this.buffer;
            int i12 = this.position;
            this.position = i12 + 4;
            bArr4[i12] = (byte) (i4 | 64);
            bArr4[i12 + 1] = (byte) (i5 | 128);
            bArr4[i12 + 2] = (byte) (i7 | 128);
            bArr4[i12 + 3] = (byte) i9;
            return 4;
        }
        require(5);
        byte[] bArr5 = this.buffer;
        int i13 = this.position;
        this.position = i13 + 5;
        bArr5[i13] = (byte) (i4 | 64);
        bArr5[i13 + 1] = (byte) (i5 | 128);
        bArr5[i13 + 2] = (byte) (i7 | 128);
        bArr5[i13 + 3] = (byte) (i9 | 128);
        bArr5[i13 + 4] = (byte) i11;
        return 5;
    }

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
            byte[] bArr = this.buffer;
            int i = this.position;
            this.position = i + 1;
            bArr[i] = (byte) j2;
            return 1;
        }
        long j4 = j2 >>> 14;
        if (j4 == 0) {
            require(2);
            int i2 = this.position;
            this.position = i2 + 2;
            byte[] bArr2 = this.buffer;
            bArr2[i2] = (byte) ((j2 & 127) | 128);
            bArr2[i2 + 1] = (byte) j3;
            return 2;
        }
        long j5 = j2 >>> 21;
        if (j5 == 0) {
            require(3);
            int i3 = this.position;
            this.position = i3 + 3;
            byte[] bArr3 = this.buffer;
            bArr3[i3] = (byte) ((j2 & 127) | 128);
            bArr3[i3 + 1] = (byte) (j3 | 128);
            bArr3[i3 + 2] = (byte) j4;
            return 3;
        }
        long j6 = j2 >>> 28;
        if (j6 == 0) {
            require(4);
            int i4 = this.position;
            this.position = i4 + 4;
            byte[] bArr4 = this.buffer;
            bArr4[i4] = (byte) ((j2 & 127) | 128);
            bArr4[i4 + 1] = (byte) (j3 | 128);
            bArr4[i4 + 2] = (byte) (j4 | 128);
            bArr4[i4 + 3] = (byte) j5;
            return 4;
        }
        long j7 = j2 >>> 35;
        if (j7 == 0) {
            require(5);
            int i5 = this.position;
            this.position = i5 + 5;
            byte[] bArr5 = this.buffer;
            bArr5[i5] = (byte) ((j2 & 127) | 128);
            bArr5[i5 + 1] = (byte) (j3 | 128);
            bArr5[i5 + 2] = (byte) (j4 | 128);
            bArr5[i5 + 3] = (byte) (j5 | 128);
            bArr5[i5 + 4] = (byte) j6;
            return 5;
        }
        long j8 = j2 >>> 42;
        if (j8 == 0) {
            require(6);
            int i6 = this.position;
            this.position = i6 + 6;
            byte[] bArr6 = this.buffer;
            bArr6[i6] = (byte) ((j2 & 127) | 128);
            bArr6[i6 + 1] = (byte) (j3 | 128);
            bArr6[i6 + 2] = (byte) (j4 | 128);
            bArr6[i6 + 3] = (byte) (j5 | 128);
            bArr6[i6 + 4] = (byte) (j6 | 128);
            bArr6[i6 + 5] = (byte) j7;
            return 6;
        }
        long j9 = j2 >>> 49;
        if (j9 == 0) {
            require(7);
            int i7 = this.position;
            this.position = i7 + 7;
            byte[] bArr7 = this.buffer;
            bArr7[i7] = (byte) ((j2 & 127) | 128);
            bArr7[i7 + 1] = (byte) (j3 | 128);
            bArr7[i7 + 2] = (byte) (j4 | 128);
            bArr7[i7 + 3] = (byte) (j5 | 128);
            bArr7[i7 + 4] = (byte) (j6 | 128);
            bArr7[i7 + 5] = (byte) (j7 | 128);
            bArr7[i7 + 6] = (byte) j8;
            return 7;
        }
        long j10 = j2 >>> 56;
        if (j10 == 0) {
            require(8);
            int i8 = this.position;
            this.position = i8 + 8;
            byte[] bArr8 = this.buffer;
            bArr8[i8] = (byte) ((j2 & 127) | 128);
            bArr8[i8 + 1] = (byte) (j3 | 128);
            bArr8[i8 + 2] = (byte) (j4 | 128);
            bArr8[i8 + 3] = (byte) (j5 | 128);
            bArr8[i8 + 4] = (byte) (j6 | 128);
            bArr8[i8 + 5] = (byte) (j7 | 128);
            bArr8[i8 + 6] = (byte) (j8 | 128);
            bArr8[i8 + 7] = (byte) j9;
            return 8;
        }
        require(9);
        int i9 = this.position;
        this.position = i9 + 9;
        byte[] bArr9 = this.buffer;
        bArr9[i9] = (byte) ((j2 & 127) | 128);
        bArr9[i9 + 1] = (byte) (j3 | 128);
        bArr9[i9 + 2] = (byte) (j4 | 128);
        bArr9[i9 + 3] = (byte) (j5 | 128);
        bArr9[i9 + 4] = (byte) (j6 | 128);
        bArr9[i9 + 5] = (byte) (j7 | 128);
        bArr9[i9 + 6] = (byte) (j8 | 128);
        bArr9[i9 + 7] = (byte) (j9 | 128);
        bArr9[i9 + 8] = (byte) j10;
        return 9;
    }

    public Output(int i) {
        this(i, i);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
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

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        if (bArr != null) {
            writeBytes(bArr, 0, bArr.length);
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    public void writeByte(int i) {
        if (this.position == this.capacity) {
            require(1);
        }
        byte[] bArr = this.buffer;
        int i2 = this.position;
        this.position = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public void writeBytes(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int min = Math.min(this.capacity - this.position, i2);
            while (true) {
                System.arraycopy(bArr, i, this.buffer, this.position, min);
                this.position += min;
                i2 -= min;
                if (i2 == 0) {
                    return;
                }
                i += min;
                min = Math.min(Math.max(this.capacity, 1), i2);
                require(min);
            }
        } else {
            throw new IllegalArgumentException("bytes cannot be null.");
        }
    }

    public Output(int i, int i2) {
        this.varEncoding = true;
        if (i > i2 && i2 != -1) {
            throw new IllegalArgumentException("bufferSize: " + i + " cannot be greater than maxBufferSize: " + i2);
        } else if (i2 >= -1) {
            this.capacity = i;
            this.maxCapacity = i2 == -1 ? Util.maxArraySize : i2;
            this.buffer = new byte[i];
        } else {
            throw new IllegalArgumentException("maxBufferSize cannot be < -1: " + i2);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        writeBytes(bArr, i, i2);
    }

    public int writeInt(int i, boolean z) {
        if (this.varEncoding) {
            return writeVarInt(i, z);
        }
        writeInt(i);
        return 4;
    }

    public Output(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public Output(byte[] bArr, int i) {
        this.varEncoding = true;
        if (bArr != null) {
            setBuffer(bArr, i);
            return;
        }
        throw new IllegalArgumentException("buffer cannot be null.");
    }

    public void writeInts(int[] iArr, int i, int i2, boolean z) {
        if (!this.varEncoding) {
            writeInts(iArr, i, i2);
            return;
        }
        int i3 = i2 + i;
        while (i < i3) {
            writeVarInt(iArr[i], z);
            i++;
        }
    }

    public int writeLong(long j, boolean z) {
        if (this.varEncoding) {
            return writeVarLong(j, z);
        }
        writeLong(j);
        return 8;
    }

    public Output(OutputStream outputStream) {
        this(4096, 4096);
        if (outputStream != null) {
            this.outputStream = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }

    public void writeLongs(long[] jArr, int i, int i2, boolean z) {
        if (!this.varEncoding) {
            writeLongs(jArr, i, i2);
            return;
        }
        int i3 = i2 + i;
        while (i < i3) {
            writeVarLong(jArr[i], z);
            i++;
        }
    }

    public Output(OutputStream outputStream, int i) {
        this(i, i);
        if (outputStream != null) {
            this.outputStream = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }
}
