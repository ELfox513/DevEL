package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.esotericsoftware.kryo.util.Pool;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.esotericsoftware.kryo.io.Input */
/* loaded from: classes.dex */
public class Input extends InputStream implements Pool.Poolable {
    public byte[] buffer;
    public int capacity;
    public char[] chars;
    public InputStream inputStream;
    public int limit;
    public int position;
    public long total;
    public boolean varEncoding;

    public Input() {
        this.chars = new char[32];
        this.varEncoding = true;
    }

    @Override // java.io.InputStream
    public int available() {
        int i = this.limit - this.position;
        InputStream inputStream = this.inputStream;
        return i + (inputStream != null ? inputStream.available() : 0);
    }

    public boolean end() {
        return optional(1) <= 0;
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    public InputStream getInputStream() {
        return this.inputStream;
    }

    public boolean getVariableLengthEncoding() {
        return this.varEncoding;
    }

    public int limit() {
        return this.limit;
    }

    public int position() {
        return this.position;
    }

    @Override // java.io.InputStream
    public int read() {
        if (optional(1) <= 0) {
            return -1;
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        return bArr[i] & DefaultClassResolver.NAME;
    }

    public byte[] readBytes(int i) {
        byte[] bArr = new byte[i];
        readBytes(bArr, 0, i);
        return bArr;
    }

    public char readChar() {
        require(2);
        int i = this.position;
        this.position = i + 2;
        byte[] bArr = this.buffer;
        return (char) (((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | (bArr[i] & DefaultClassResolver.NAME));
    }

    public float readFloat() {
        require(4);
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 4;
        return Float.intBitsToFloat(((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16));
    }

    public int readInt() {
        require(4);
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 4;
        return ((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16);
    }

    public int[] readInts(int i) {
        int[] iArr = new int[i];
        int i2 = i << 2;
        int i3 = 0;
        if (optional(i2) == i2) {
            byte[] bArr = this.buffer;
            int i4 = this.position;
            while (i3 < i) {
                iArr[i3] = (bArr[i4] & DefaultClassResolver.NAME) | ((bArr[i4 + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i4 + 2] & DefaultClassResolver.NAME) << 16) | ((bArr[i4 + 3] & DefaultClassResolver.NAME) << 24);
                i3++;
                i4 += 4;
            }
            this.position = i4;
        } else {
            while (i3 < i) {
                iArr[i3] = readInt();
                i3++;
            }
        }
        return iArr;
    }

    public long readLong() {
        require(8);
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 8;
        int i2 = bArr[i] & DefaultClassResolver.NAME;
        return (bArr[i + 7] << 56) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | i2 | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16) | ((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | ((bArr[i + 4] & DefaultClassResolver.NAME) << 32) | ((bArr[i + 5] & DefaultClassResolver.NAME) << 40) | ((bArr[i + 6] & DefaultClassResolver.NAME) << 48);
    }

    public long[] readLongs(int i) {
        long[] jArr = new long[i];
        int i2 = i << 3;
        int i3 = 0;
        if (optional(i2) == i2) {
            byte[] bArr = this.buffer;
            int i4 = this.position;
            while (i3 < i) {
                jArr[i3] = (bArr[i4] & DefaultClassResolver.NAME) | ((bArr[i4 + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i4 + 2] & DefaultClassResolver.NAME) << 16) | ((bArr[i4 + 3] & DefaultClassResolver.NAME) << 24) | ((bArr[i4 + 4] & DefaultClassResolver.NAME) << 32) | ((bArr[i4 + 5] & DefaultClassResolver.NAME) << 40) | ((bArr[i4 + 6] & DefaultClassResolver.NAME) << 48) | (bArr[i4 + 7] << 56);
                i3++;
                i4 += 8;
            }
            this.position = i4;
        } else {
            while (i3 < i) {
                jArr[i3] = readLong();
                i3++;
            }
        }
        return jArr;
    }

    public short readShort() {
        require(2);
        int i = this.position;
        this.position = i + 2;
        byte[] bArr = this.buffer;
        return (short) (((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | (bArr[i] & DefaultClassResolver.NAME));
    }

    public int readShortUnsigned() {
        require(2);
        int i = this.position;
        this.position = i + 2;
        byte[] bArr = this.buffer;
        return ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | (bArr[i] & DefaultClassResolver.NAME);
    }

    public double readVarDouble(double d, boolean z) {
        double readVarLong = readVarLong(z);
        Double.isNaN(readVarLong);
        return readVarLong / d;
    }

    public float readVarFloat(float f, boolean z) {
        return readVarInt(z) / f;
    }

    public int readVarInt(boolean z) {
        if (require(1) < 5) {
            return m23263h(z);
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte b = bArr[i];
        int i3 = b & Byte.MAX_VALUE;
        if ((b & 128) != 0) {
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            i3 |= (b2 & Byte.MAX_VALUE) << 7;
            if ((b2 & 128) != 0) {
                int i5 = i4 + 1;
                byte b3 = bArr[i4];
                i3 |= (b3 & Byte.MAX_VALUE) << 14;
                if ((b3 & 128) != 0) {
                    i4 = i5 + 1;
                    byte b4 = bArr[i5];
                    i3 |= (b4 & Byte.MAX_VALUE) << 21;
                    if ((b4 & 128) != 0) {
                        i5 = i4 + 1;
                        i3 = ((bArr[i4] & Byte.MAX_VALUE) << 28) | i3;
                    }
                }
                i4 = i5;
            }
            this.position = i4;
        }
        if (!z) {
            return (i3 >>> 1) ^ (-(i3 & 1));
        }
        return i3;
    }

    public boolean readVarIntFlag() {
        if (this.position == this.limit) {
            require(1);
        }
        return (this.buffer[this.position] & 128) != 0;
    }

    public long readVarLong(boolean z) {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte b7;
        if (require(1) < 9) {
            return m23262i(z);
        }
        int i = this.position;
        byte[] bArr = this.buffer;
        int i2 = i + 1;
        byte b8 = bArr[i];
        long j = b8 & Byte.MAX_VALUE;
        if ((b8 & 128) != 0) {
            int i3 = i2 + 1;
            j |= (b & Byte.MAX_VALUE) << 7;
            if ((bArr[i2] & 128) != 0) {
                i2 = i3 + 1;
                j |= (b2 & Byte.MAX_VALUE) << 14;
                if ((bArr[i3] & 128) != 0) {
                    i3 = i2 + 1;
                    j |= (b3 & Byte.MAX_VALUE) << 21;
                    if ((bArr[i2] & 128) != 0) {
                        i2 = i3 + 1;
                        j |= (b4 & Byte.MAX_VALUE) << 28;
                        if ((bArr[i3] & 128) != 0) {
                            i3 = i2 + 1;
                            j |= (b5 & Byte.MAX_VALUE) << 35;
                            if ((bArr[i2] & 128) != 0) {
                                i2 = i3 + 1;
                                j |= (b6 & Byte.MAX_VALUE) << 42;
                                if ((bArr[i3] & 128) != 0) {
                                    i3 = i2 + 1;
                                    j |= (b7 & Byte.MAX_VALUE) << 49;
                                    if ((bArr[i2] & 128) != 0) {
                                        i2 = i3 + 1;
                                        j |= bArr[i3] << 56;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            i2 = i3;
        }
        this.position = i2;
        if (!z) {
            return (j >>> 1) ^ (-(1 & j));
        }
        return j;
    }

    @Override // java.io.InputStream, com.esotericsoftware.kryo.util.Pool.Poolable
    public void reset() {
        this.position = 0;
        this.total = 0L;
    }

    public void setBuffer(byte[] bArr) {
        setBuffer(bArr, 0, bArr.length);
    }

    public void setLimit(int i) {
        this.limit = i;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setTotal(long j) {
        this.total = j;
    }

    public void setVariableLengthEncoding(boolean z) {
        this.varEncoding = z;
    }

    public void skip(int i) {
        int min = Math.min(this.limit - this.position, i);
        while (true) {
            this.position += min;
            i -= min;
            if (i == 0) {
                return;
            }
            min = Math.min(i, this.capacity);
            require(min);
        }
    }

    public long total() {
        return this.total + this.position;
    }

    /* renamed from: c */
    public final String m23268c() {
        char[] cArr = this.chars;
        byte[] bArr = this.buffer;
        int i = this.position;
        int min = Math.min(cArr.length, this.limit - i);
        int i2 = 0;
        while (i2 < min) {
            byte b = bArr[i];
            if ((b & 128) == 128) {
                this.position = i + 1;
                cArr[i2] = (char) (b & Byte.MAX_VALUE);
                return new String(cArr, 0, i2 + 1);
            }
            cArr[i2] = (char) b;
            i2++;
            i++;
        }
        this.position = i;
        return m23267d(i2);
    }

    public boolean canReadInt() {
        if (this.varEncoding) {
            return canReadVarInt();
        }
        if (this.limit - this.position >= 4 || optional(4) == 4) {
            return true;
        }
        return false;
    }

    public boolean canReadLong() {
        if (this.varEncoding) {
            return canReadVarLong();
        }
        if (this.limit - this.position >= 8 || optional(8) == 8) {
            return true;
        }
        return false;
    }

    public boolean canReadVarInt() {
        if (this.limit - this.position >= 5) {
            return true;
        }
        if (optional(5) <= 0) {
            return false;
        }
        int i = this.position;
        int i2 = this.limit;
        byte[] bArr = this.buffer;
        int i3 = i + 1;
        if ((bArr[i] & 128) == 0) {
            return true;
        }
        if (i3 == i2) {
            return false;
        }
        int i4 = i3 + 1;
        if ((bArr[i3] & 128) == 0) {
            return true;
        }
        if (i4 == i2) {
            return false;
        }
        int i5 = i4 + 1;
        if ((bArr[i4] & 128) == 0) {
            return true;
        }
        if (i5 == i2) {
            return false;
        }
        int i6 = i5 + 1;
        if ((bArr[i5] & 128) == 0 || i6 != i2) {
            return true;
        }
        return false;
    }

    public boolean canReadVarLong() {
        if (this.limit - this.position >= 9) {
            return true;
        }
        if (optional(5) <= 0) {
            return false;
        }
        int i = this.position;
        int i2 = this.limit;
        byte[] bArr = this.buffer;
        int i3 = i + 1;
        if ((bArr[i] & 128) == 0) {
            return true;
        }
        if (i3 == i2) {
            return false;
        }
        int i4 = i3 + 1;
        if ((bArr[i3] & 128) == 0) {
            return true;
        }
        if (i4 == i2) {
            return false;
        }
        int i5 = i4 + 1;
        if ((bArr[i4] & 128) == 0) {
            return true;
        }
        if (i5 == i2) {
            return false;
        }
        int i6 = i5 + 1;
        if ((bArr[i5] & 128) == 0) {
            return true;
        }
        if (i6 == i2) {
            return false;
        }
        int i7 = i6 + 1;
        if ((bArr[i6] & 128) == 0) {
            return true;
        }
        if (i7 == i2) {
            return false;
        }
        int i8 = i7 + 1;
        if ((bArr[i7] & 128) == 0) {
            return true;
        }
        if (i8 == i2) {
            return false;
        }
        int i9 = i8 + 1;
        if ((bArr[i8] & 128) == 0) {
            return true;
        }
        if (i9 == i2) {
            return false;
        }
        int i10 = i9 + 1;
        if ((bArr[i9] & 128) == 0 || i10 != i2) {
            return true;
        }
        return false;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        InputStream inputStream = this.inputStream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: d */
    public final String m23267d(int i) {
        char[] cArr = this.chars;
        byte[] bArr = this.buffer;
        while (true) {
            if (this.position == this.limit) {
                require(1);
            }
            int i2 = this.position;
            this.position = i2 + 1;
            byte b = bArr[i2];
            if (i == cArr.length) {
                char[] cArr2 = new char[i * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i);
                this.chars = cArr2;
                cArr = cArr2;
            }
            if ((b & 128) == 128) {
                cArr[i] = (char) (b & Byte.MAX_VALUE);
                return new String(cArr, 0, i + 1);
            }
            cArr[i] = (char) b;
            i++;
        }
    }

    /* renamed from: e */
    public final void m23266e(int i) {
        if (this.chars.length < i) {
            this.chars = new char[i];
        }
        byte[] bArr = this.buffer;
        char[] cArr = this.chars;
        int i2 = 0;
        int min = Math.min(require(1), i);
        int i3 = this.position;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i4 = i3 + 1;
            byte b = bArr[i3];
            if (b < 0) {
                i3 = i4 - 1;
                break;
            }
            cArr[i2] = (char) b;
            i3 = i4;
            i2++;
        }
        this.position = i3;
        if (i2 < i) {
            m23265f(i, i2);
        }
    }

    /* renamed from: f */
    public final void m23265f(int i, int i2) {
        char[] cArr = this.chars;
        byte[] bArr = this.buffer;
        while (i2 < i) {
            if (this.position == this.limit) {
                require(1);
            }
            int i3 = this.position;
            int i4 = i3 + 1;
            this.position = i4;
            int i5 = bArr[i3] & DefaultClassResolver.NAME;
            switch (i5 >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    cArr[i2] = (char) i5;
                    break;
                case 12:
                case 13:
                    if (i4 == this.limit) {
                        require(1);
                    }
                    int i6 = this.position;
                    this.position = i6 + 1;
                    cArr[i2] = (char) (((i5 & 31) << 6) | (bArr[i6] & 63));
                    break;
                case 14:
                    require(2);
                    int i7 = this.position;
                    this.position = i7 + 2;
                    cArr[i2] = (char) (((i5 & 15) << 12) | ((bArr[i7] & 63) << 6) | (bArr[i7 + 1] & 63));
                    break;
            }
            i2++;
        }
    }

    public int fill(byte[] bArr, int i, int i2) {
        InputStream inputStream = this.inputStream;
        if (inputStream == null) {
            return -1;
        }
        try {
            return inputStream.read(bArr, i, i2);
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    /* renamed from: g */
    public final int m23264g(boolean z) {
        byte[] bArr = this.buffer;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte b = bArr[i];
        int i3 = b & 63;
        if ((b & 64) != 0) {
            if (i2 == this.limit) {
                require(1);
            }
            byte[] bArr2 = this.buffer;
            int i4 = this.position;
            int i5 = i4 + 1;
            this.position = i5;
            byte b2 = bArr2[i4];
            i3 |= (b2 & Byte.MAX_VALUE) << 6;
            if ((b2 & 128) != 0) {
                if (i5 == this.limit) {
                    require(1);
                }
                int i6 = this.position;
                int i7 = i6 + 1;
                this.position = i7;
                byte b3 = bArr2[i6];
                i3 |= (b3 & Byte.MAX_VALUE) << 13;
                if ((b3 & 128) != 0) {
                    if (i7 == this.limit) {
                        require(1);
                    }
                    int i8 = this.position;
                    int i9 = i8 + 1;
                    this.position = i9;
                    byte b4 = bArr2[i8];
                    i3 |= (b4 & Byte.MAX_VALUE) << 20;
                    if ((b4 & 128) != 0) {
                        if (i9 == this.limit) {
                            require(1);
                        }
                        int i10 = this.position;
                        this.position = i10 + 1;
                        i3 |= (bArr2[i10] & Byte.MAX_VALUE) << 27;
                    }
                }
            }
        }
        if (!z) {
            return (i3 >>> 1) ^ (-(i3 & 1));
        }
        return i3;
    }

    /* renamed from: h */
    public final int m23263h(boolean z) {
        byte[] bArr = this.buffer;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte b = bArr[i];
        int i3 = b & Byte.MAX_VALUE;
        if ((b & 128) != 0) {
            if (i2 == this.limit) {
                require(1);
            }
            byte[] bArr2 = this.buffer;
            int i4 = this.position;
            int i5 = i4 + 1;
            this.position = i5;
            byte b2 = bArr2[i4];
            i3 |= (b2 & Byte.MAX_VALUE) << 7;
            if ((b2 & 128) != 0) {
                if (i5 == this.limit) {
                    require(1);
                }
                int i6 = this.position;
                int i7 = i6 + 1;
                this.position = i7;
                byte b3 = bArr2[i6];
                i3 |= (b3 & Byte.MAX_VALUE) << 14;
                if ((b3 & 128) != 0) {
                    if (i7 == this.limit) {
                        require(1);
                    }
                    int i8 = this.position;
                    int i9 = i8 + 1;
                    this.position = i9;
                    byte b4 = bArr2[i8];
                    i3 |= (b4 & Byte.MAX_VALUE) << 21;
                    if ((b4 & 128) != 0) {
                        if (i9 == this.limit) {
                            require(1);
                        }
                        int i10 = this.position;
                        this.position = i10 + 1;
                        i3 |= (bArr2[i10] & Byte.MAX_VALUE) << 28;
                    }
                }
            }
        }
        if (!z) {
            return (i3 >>> 1) ^ (-(i3 & 1));
        }
        return i3;
    }

    /* renamed from: i */
    public final long m23262i(boolean z) {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte b7;
        int i;
        byte[] bArr = this.buffer;
        int i2 = this.position;
        int i3 = i2 + 1;
        this.position = i3;
        byte b8 = bArr[i2];
        long j = b8 & Byte.MAX_VALUE;
        if ((b8 & 128) != 0) {
            if (i3 == this.limit) {
                require(1);
            }
            byte[] bArr2 = this.buffer;
            int i4 = this.position;
            int i5 = i4 + 1;
            this.position = i5;
            j |= (b & Byte.MAX_VALUE) << 7;
            if ((bArr2[i4] & 128) != 0) {
                if (i5 == this.limit) {
                    require(1);
                }
                int i6 = this.position;
                int i7 = i6 + 1;
                this.position = i7;
                j |= (b2 & Byte.MAX_VALUE) << 14;
                if ((bArr2[i6] & 128) != 0) {
                    if (i7 == this.limit) {
                        require(1);
                    }
                    int i8 = this.position;
                    int i9 = i8 + 1;
                    this.position = i9;
                    j |= (b3 & Byte.MAX_VALUE) << 21;
                    if ((bArr2[i8] & 128) != 0) {
                        if (i9 == this.limit) {
                            require(1);
                        }
                        int i10 = this.position;
                        int i11 = i10 + 1;
                        this.position = i11;
                        j |= (b4 & Byte.MAX_VALUE) << 28;
                        if ((bArr2[i10] & 128) != 0) {
                            if (i11 == this.limit) {
                                require(1);
                            }
                            int i12 = this.position;
                            int i13 = i12 + 1;
                            this.position = i13;
                            j |= (b5 & Byte.MAX_VALUE) << 35;
                            if ((bArr2[i12] & 128) != 0) {
                                if (i13 == this.limit) {
                                    require(1);
                                }
                                int i14 = this.position;
                                int i15 = i14 + 1;
                                this.position = i15;
                                j |= (b6 & Byte.MAX_VALUE) << 42;
                                if ((bArr2[i14] & 128) != 0) {
                                    if (i15 == this.limit) {
                                        require(1);
                                    }
                                    int i16 = this.position;
                                    int i17 = i16 + 1;
                                    this.position = i17;
                                    j |= (b7 & Byte.MAX_VALUE) << 49;
                                    if ((bArr2[i16] & 128) != 0) {
                                        if (i17 == this.limit) {
                                            require(1);
                                        }
                                        this.position = this.position + 1;
                                        j |= bArr2[i] << 56;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!z) {
            return (j >>> 1) ^ (-(j & 1));
        }
        return j;
    }

    public int optional(int i) {
        int i2 = this.limit - this.position;
        if (i2 >= i) {
            return i;
        }
        int min = Math.min(i, this.capacity);
        byte[] bArr = this.buffer;
        int i3 = this.limit;
        int fill = fill(bArr, i3, this.capacity - i3);
        if (fill == -1) {
            if (i2 == 0) {
                return -1;
            }
            return Math.min(i2, min);
        }
        int i4 = i2 + fill;
        if (i4 >= min) {
            this.limit += fill;
            return min;
        }
        byte[] bArr2 = this.buffer;
        System.arraycopy(bArr2, this.position, bArr2, 0, i4);
        this.total += this.position;
        this.position = 0;
        do {
            int fill2 = fill(this.buffer, i4, this.capacity - i4);
            if (fill2 == -1) {
                break;
            }
            i4 += fill2;
        } while (i4 < min);
        this.limit = i4;
        if (i4 == 0) {
            return -1;
        }
        return Math.min(i4, min);
    }

    public boolean readBoolean() {
        if (this.position == this.limit) {
            require(1);
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        if (bArr[i] == 1) {
            return true;
        }
        return false;
    }

    public boolean[] readBooleans(int i) {
        boolean z;
        boolean[] zArr = new boolean[i];
        if (optional(i) == i) {
            byte[] bArr = this.buffer;
            int i2 = this.position;
            int i3 = 0;
            while (i3 < i) {
                if (bArr[i2] != 0) {
                    z = true;
                } else {
                    z = false;
                }
                zArr[i3] = z;
                i3++;
                i2++;
            }
            this.position = i2;
        } else {
            for (int i4 = 0; i4 < i; i4++) {
                zArr[i4] = readBoolean();
            }
        }
        return zArr;
    }

    public byte readByte() {
        if (this.position == this.limit) {
            require(1);
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        return bArr[i];
    }

    public int readByteUnsigned() {
        if (this.position == this.limit) {
            require(1);
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        return bArr[i] & DefaultClassResolver.NAME;
    }

    public char[] readChars(int i) {
        char[] cArr = new char[i];
        int i2 = i << 1;
        int i3 = 0;
        if (optional(i2) == i2) {
            byte[] bArr = this.buffer;
            int i4 = this.position;
            while (i3 < i) {
                cArr[i3] = (char) ((bArr[i4] & DefaultClassResolver.NAME) | ((bArr[i4 + 1] & DefaultClassResolver.NAME) << 8));
                i3++;
                i4 += 2;
            }
            this.position = i4;
        } else {
            while (i3 < i) {
                cArr[i3] = readChar();
                i3++;
            }
        }
        return cArr;
    }

    public double readDouble() {
        require(8);
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 8;
        int i2 = bArr[i] & DefaultClassResolver.NAME;
        return Double.longBitsToDouble((bArr[i + 7] << 56) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | i2 | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16) | ((bArr[i + 3] & DefaultClassResolver.NAME) << 24) | ((bArr[i + 4] & DefaultClassResolver.NAME) << 32) | ((bArr[i + 5] & DefaultClassResolver.NAME) << 40) | ((bArr[i + 6] & DefaultClassResolver.NAME) << 48));
    }

    public double[] readDoubles(int i) {
        double[] dArr = new double[i];
        int i2 = i << 3;
        int i3 = 0;
        if (optional(i2) == i2) {
            byte[] bArr = this.buffer;
            int i4 = this.position;
            while (i3 < i) {
                dArr[i3] = Double.longBitsToDouble((bArr[i4] & DefaultClassResolver.NAME) | ((bArr[i4 + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i4 + 2] & DefaultClassResolver.NAME) << 16) | ((bArr[i4 + 3] & DefaultClassResolver.NAME) << 24) | ((bArr[i4 + 4] & DefaultClassResolver.NAME) << 32) | ((bArr[i4 + 5] & DefaultClassResolver.NAME) << 40) | ((bArr[i4 + 6] & DefaultClassResolver.NAME) << 48) | (bArr[i4 + 7] << 56));
                i3++;
                i4 += 8;
            }
            this.position = i4;
        } else {
            while (i3 < i) {
                dArr[i3] = readDouble();
                i3++;
            }
        }
        return dArr;
    }

    public float[] readFloats(int i) {
        float[] fArr = new float[i];
        int i2 = i << 2;
        int i3 = 0;
        if (optional(i2) == i2) {
            byte[] bArr = this.buffer;
            int i4 = this.position;
            while (i3 < i) {
                fArr[i3] = Float.intBitsToFloat((bArr[i4] & DefaultClassResolver.NAME) | ((bArr[i4 + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i4 + 2] & DefaultClassResolver.NAME) << 16) | ((bArr[i4 + 3] & DefaultClassResolver.NAME) << 24));
                i3++;
                i4 += 4;
            }
            this.position = i4;
        } else {
            while (i3 < i) {
                fArr[i3] = readFloat();
                i3++;
            }
        }
        return fArr;
    }

    public short[] readShorts(int i) {
        short[] sArr = new short[i];
        int i2 = i << 1;
        int i3 = 0;
        if (optional(i2) == i2) {
            byte[] bArr = this.buffer;
            int i4 = this.position;
            while (i3 < i) {
                sArr[i3] = (short) ((bArr[i4] & DefaultClassResolver.NAME) | ((bArr[i4 + 1] & DefaultClassResolver.NAME) << 8));
                i3++;
                i4 += 2;
            }
            this.position = i4;
        } else {
            while (i3 < i) {
                sArr[i3] = readShort();
                i3++;
            }
        }
        return sArr;
    }

    public int require(int i) {
        int i2 = this.limit;
        int i3 = i2 - this.position;
        if (i3 >= i) {
            return i3;
        }
        int i4 = this.capacity;
        if (i <= i4) {
            if (i3 > 0) {
                int fill = fill(this.buffer, i2, i4 - i2);
                if (fill != -1) {
                    i3 += fill;
                    if (i3 >= i) {
                        this.limit += fill;
                        return i3;
                    }
                } else {
                    throw new KryoBufferUnderflowException("Buffer underflow.");
                }
            }
            byte[] bArr = this.buffer;
            System.arraycopy(bArr, this.position, bArr, 0, i3);
            this.total += this.position;
            this.position = 0;
            while (true) {
                int fill2 = fill(this.buffer, i3, this.capacity - i3);
                if (fill2 == -1) {
                    if (i3 >= i) {
                        break;
                    }
                    throw new KryoBufferUnderflowException("Buffer underflow.");
                }
                i3 += fill2;
                if (i3 >= i) {
                    break;
                }
            }
            this.limit = i3;
            return i3;
        }
        throw new KryoException("Buffer too small: capacity: " + this.capacity + ", required: " + i);
    }

    public void setBuffer(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            this.buffer = bArr;
            this.position = i;
            this.limit = i + i2;
            this.capacity = bArr.length;
            this.total = 0L;
            this.inputStream = null;
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
        this.limit = 0;
        reset();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public void readBytes(byte[] bArr) {
        readBytes(bArr, 0, bArr.length);
    }

    public String readString() {
        if (!readVarIntFlag()) {
            return m23268c();
        }
        int readVarIntFlag = readVarIntFlag(true);
        if (readVarIntFlag != 0) {
            if (readVarIntFlag != 1) {
                int i = readVarIntFlag - 1;
                m23266e(i);
                return new String(this.chars, 0, i);
            }
            return "";
        }
        return null;
    }

    public StringBuilder readStringBuilder() {
        if (!readVarIntFlag()) {
            return new StringBuilder(m23268c());
        }
        int readVarIntFlag = readVarIntFlag(true);
        if (readVarIntFlag != 0) {
            if (readVarIntFlag != 1) {
                int i = readVarIntFlag - 1;
                m23266e(i);
                StringBuilder sb = new StringBuilder(i);
                sb.append(this.chars, 0, i);
                return sb;
            }
            return new StringBuilder(0);
        }
        return null;
    }

    public int readVarIntFlag(boolean z) {
        if (require(1) < 5) {
            return m23264g(z);
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        byte b = bArr[i];
        int i3 = b & 63;
        if ((b & 64) != 0) {
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            i3 |= (b2 & Byte.MAX_VALUE) << 6;
            if ((b2 & 128) != 0) {
                int i5 = i4 + 1;
                byte b3 = bArr[i4];
                i3 |= (b3 & Byte.MAX_VALUE) << 13;
                if ((b3 & 128) != 0) {
                    i4 = i5 + 1;
                    byte b4 = bArr[i5];
                    i3 |= (b4 & Byte.MAX_VALUE) << 20;
                    if ((b4 & 128) != 0) {
                        i5 = i4 + 1;
                        i3 = ((bArr[i4] & Byte.MAX_VALUE) << 27) | i3;
                    }
                }
                i4 = i5;
            }
            this.position = i4;
        }
        return z ? i3 : (i3 >>> 1) ^ (-(i3 & 1));
    }

    public Input(int i) {
        this.chars = new char[32];
        this.varEncoding = true;
        this.capacity = i;
        this.buffer = new byte[i];
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int min = Math.min(this.limit - this.position, i2);
            int i3 = i2;
            while (true) {
                System.arraycopy(this.buffer, this.position, bArr, i, min);
                this.position += min;
                i3 -= min;
                if (i3 != 0) {
                    i += min;
                    min = optional(i3);
                    if (min != -1) {
                        if (this.position == this.limit) {
                            break;
                        }
                    } else if (i2 == i3) {
                        return -1;
                    }
                } else {
                    break;
                }
            }
            return i2 - i3;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int min = Math.min(this.limit - this.position, i2);
            while (true) {
                System.arraycopy(this.buffer, this.position, bArr, i, min);
                this.position += min;
                i2 -= min;
                if (i2 == 0) {
                    return;
                }
                i += min;
                min = Math.min(i2, this.capacity);
                require(min);
            }
        } else {
            throw new IllegalArgumentException("bytes cannot be null.");
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        long j2 = j;
        while (j2 > 0) {
            int min = (int) Math.min(2147483639L, j2);
            skip(min);
            j2 -= min;
        }
        return j;
    }

    public int readInt(boolean z) {
        return this.varEncoding ? readVarInt(z) : readInt();
    }

    public long readLong(boolean z) {
        return this.varEncoding ? readVarLong(z) : readLong();
    }

    public int[] readInts(int i, boolean z) {
        if (this.varEncoding) {
            int[] iArr = new int[i];
            for (int i2 = 0; i2 < i; i2++) {
                iArr[i2] = readVarInt(z);
            }
            return iArr;
        }
        return readInts(i);
    }

    public long[] readLongs(int i, boolean z) {
        if (this.varEncoding) {
            long[] jArr = new long[i];
            for (int i2 = 0; i2 < i; i2++) {
                jArr[i2] = readVarLong(z);
            }
            return jArr;
        }
        return readLongs(i);
    }

    public Input(byte[] bArr) {
        this.chars = new char[32];
        this.varEncoding = true;
        setBuffer(bArr, 0, bArr.length);
    }

    public Input(byte[] bArr, int i, int i2) {
        this.chars = new char[32];
        this.varEncoding = true;
        setBuffer(bArr, i, i2);
    }

    public Input(InputStream inputStream) {
        this(4096);
        if (inputStream != null) {
            this.inputStream = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }

    public Input(InputStream inputStream, int i) {
        this(i);
        if (inputStream != null) {
            this.inputStream = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }
}
