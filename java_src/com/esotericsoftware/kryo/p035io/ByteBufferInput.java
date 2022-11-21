package com.esotericsoftware.kryo.p035io;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.IOException;
import java.io.InputStream;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: com.esotericsoftware.kryo.io.ByteBufferInput */
/* loaded from: classes.dex */
public class ByteBufferInput extends Input {

    /* renamed from: b */
    public static final ByteOrder f7271b = ByteOrder.nativeOrder();

    /* renamed from: a */
    public byte[] f7272a;
    public ByteBuffer byteBuffer;

    public ByteBufferInput() {
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public byte[] getBuffer() {
        throw new UnsupportedOperationException("This input does not used a byte[], see #getByteBuffer().");
    }

    public ByteBuffer getByteBuffer() {
        return this.byteBuffer;
    }

    /* renamed from: j */
    public final void m23278j(Buffer buffer) {
        buffer.flip();
    }

    /* renamed from: k */
    public final int m23277k(Buffer buffer) {
        return buffer.position();
    }

    /* renamed from: m */
    public final void m23276m(Buffer buffer, int i) {
        buffer.limit(i);
    }

    /* renamed from: n */
    public final void m23275n(Buffer buffer, int i) {
        buffer.position(i);
    }

    @Override // com.esotericsoftware.kryo.p035io.Input, java.io.InputStream
    public int read() {
        if (optional(1) <= 0) {
            return -1;
        }
        this.position++;
        return this.byteBuffer.get() & DefaultClassResolver.NAME;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public byte[] readBytes(int i) {
        byte[] bArr = new byte[i];
        readBytes(bArr, 0, i);
        return bArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public char readChar() {
        require(2);
        this.position += 2;
        return (char) ((this.byteBuffer.get() & DefaultClassResolver.NAME) | ((this.byteBuffer.get() & DefaultClassResolver.NAME) << 8));
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public float readFloat() {
        require(4);
        ByteBuffer byteBuffer = this.byteBuffer;
        this.position += 4;
        return Float.intBitsToFloat((byteBuffer.get() & DefaultClassResolver.NAME) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 16) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 24));
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public int readInt() {
        require(4);
        this.position += 4;
        ByteBuffer byteBuffer = this.byteBuffer;
        return ((byteBuffer.get() & DefaultClassResolver.NAME) << 24) | (byteBuffer.get() & DefaultClassResolver.NAME) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 16);
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public short readShort() {
        require(2);
        this.position += 2;
        return (short) ((this.byteBuffer.get() & DefaultClassResolver.NAME) | ((this.byteBuffer.get() & DefaultClassResolver.NAME) << 8));
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public int readShortUnsigned() {
        require(2);
        this.position += 2;
        return (this.byteBuffer.get() & DefaultClassResolver.NAME) | ((this.byteBuffer.get() & DefaultClassResolver.NAME) << 8);
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public int readVarInt(boolean z) {
        if (require(1) < 5) {
            return m23280h(z);
        }
        byte b = this.byteBuffer.get();
        int i = b & Byte.MAX_VALUE;
        if ((b & 128) != 0) {
            ByteBuffer byteBuffer = this.byteBuffer;
            byte b2 = byteBuffer.get();
            i |= (b2 & Byte.MAX_VALUE) << 7;
            if ((b2 & 128) != 0) {
                byte b3 = byteBuffer.get();
                i |= (b3 & Byte.MAX_VALUE) << 14;
                if ((b3 & 128) != 0) {
                    byte b4 = byteBuffer.get();
                    i |= (b4 & Byte.MAX_VALUE) << 21;
                    if ((b4 & 128) != 0) {
                        i |= (byteBuffer.get() & Byte.MAX_VALUE) << 28;
                    }
                }
            }
        }
        this.position = m23277k(this.byteBuffer);
        if (!z) {
            return (i >>> 1) ^ (-(i & 1));
        }
        return i;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public boolean readVarIntFlag() {
        if (this.position == this.limit) {
            require(1);
        }
        return (this.byteBuffer.get(this.position) & 128) != 0;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public long readVarLong(boolean z) {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte b7;
        if (require(1) < 9) {
            return m23279i(z);
        }
        byte b8 = this.byteBuffer.get();
        long j = b8 & Byte.MAX_VALUE;
        if ((b8 & 128) != 0) {
            ByteBuffer byteBuffer = this.byteBuffer;
            j |= (b & Byte.MAX_VALUE) << 7;
            if ((byteBuffer.get() & 128) != 0) {
                j |= (b2 & Byte.MAX_VALUE) << 14;
                if ((byteBuffer.get() & 128) != 0) {
                    j |= (b3 & Byte.MAX_VALUE) << 21;
                    if ((byteBuffer.get() & 128) != 0) {
                        j |= (b4 & Byte.MAX_VALUE) << 28;
                        if ((byteBuffer.get() & 128) != 0) {
                            j |= (b5 & Byte.MAX_VALUE) << 35;
                            if ((byteBuffer.get() & 128) != 0) {
                                j |= (b6 & Byte.MAX_VALUE) << 42;
                                if ((byteBuffer.get() & 128) != 0) {
                                    j |= (b7 & Byte.MAX_VALUE) << 49;
                                    if ((byteBuffer.get() & 128) != 0) {
                                        j |= byteBuffer.get() << 56;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        this.position = m23277k(this.byteBuffer);
        if (!z) {
            return (-(j & 1)) ^ (j >>> 1);
        }
        return j;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public void setBuffer(byte[] bArr) {
        throw new UnsupportedOperationException("This input does not used a byte[], see #setByteBuffer(ByteBuffer).");
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public void skip(int i) {
        super.skip(i);
        m23275n(this.byteBuffer, this.position);
    }

    public ByteBufferInput(int i) {
        this.capacity = i;
        this.byteBuffer = ByteBuffer.allocateDirect(i);
    }

    /* renamed from: c */
    private String m23285c() {
        char[] cArr = this.chars;
        ByteBuffer byteBuffer = this.byteBuffer;
        int min = Math.min(cArr.length, this.limit - this.position);
        int i = 0;
        while (i < min) {
            byte b = byteBuffer.get();
            if ((b & 128) == 128) {
                this.position = m23277k(byteBuffer);
                cArr[i] = (char) (b & Byte.MAX_VALUE);
                return new String(cArr, 0, i + 1);
            }
            cArr[i] = (char) b;
            i++;
        }
        this.position = m23277k(byteBuffer);
        return m23284d(i);
    }

    /* renamed from: d */
    private String m23284d(int i) {
        char[] cArr = this.chars;
        ByteBuffer byteBuffer = this.byteBuffer;
        while (true) {
            if (this.position == this.limit) {
                require(1);
            }
            this.position++;
            byte b = byteBuffer.get();
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
    private void m23283e(int i) {
        if (this.chars.length < i) {
            this.chars = new char[i];
        }
        char[] cArr = this.chars;
        ByteBuffer byteBuffer = this.byteBuffer;
        int i2 = 0;
        int min = Math.min(require(1), i);
        while (i2 < min) {
            byte b = byteBuffer.get();
            if (b < 0) {
                break;
            }
            cArr[i2] = (char) b;
            i2++;
        }
        int i3 = this.position + i2;
        this.position = i3;
        if (i2 < i) {
            m23275n(byteBuffer, i3);
            m23282f(i, i2);
        }
    }

    /* renamed from: f */
    private void m23282f(int i, int i2) {
        ByteBuffer byteBuffer = this.byteBuffer;
        char[] cArr = this.chars;
        while (i2 < i) {
            if (this.position == this.limit) {
                require(1);
            }
            this.position++;
            int i3 = byteBuffer.get() & DefaultClassResolver.NAME;
            switch (i3 >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    cArr[i2] = (char) i3;
                    break;
                case 12:
                case 13:
                    if (this.position == this.limit) {
                        require(1);
                    }
                    this.position++;
                    cArr[i2] = (char) (((i3 & 31) << 6) | (byteBuffer.get() & 63));
                    break;
                case 14:
                    require(2);
                    this.position += 2;
                    cArr[i2] = (char) (((i3 & 15) << 12) | ((byteBuffer.get() & 63) << 6) | (byteBuffer.get() & 63));
                    break;
            }
            i2++;
        }
    }

    /* renamed from: g */
    private int m23281g(boolean z) {
        this.position++;
        byte b = this.byteBuffer.get();
        int i = b & 63;
        if ((b & 64) != 0) {
            if (this.position == this.limit) {
                require(1);
            }
            this.position++;
            ByteBuffer byteBuffer = this.byteBuffer;
            byte b2 = byteBuffer.get();
            i |= (b2 & Byte.MAX_VALUE) << 6;
            if ((b2 & 128) != 0) {
                if (this.position == this.limit) {
                    require(1);
                }
                this.position++;
                byte b3 = byteBuffer.get();
                i |= (b3 & Byte.MAX_VALUE) << 13;
                if ((b3 & 128) != 0) {
                    if (this.position == this.limit) {
                        require(1);
                    }
                    this.position++;
                    byte b4 = byteBuffer.get();
                    i |= (b4 & Byte.MAX_VALUE) << 20;
                    if ((b4 & 128) != 0) {
                        if (this.position == this.limit) {
                            require(1);
                        }
                        this.position++;
                        i |= (byteBuffer.get() & Byte.MAX_VALUE) << 27;
                    }
                }
            }
        }
        if (!z) {
            return (i >>> 1) ^ (-(i & 1));
        }
        return i;
    }

    /* renamed from: h */
    private int m23280h(boolean z) {
        this.position++;
        byte b = this.byteBuffer.get();
        int i = b & Byte.MAX_VALUE;
        if ((b & 128) != 0) {
            if (this.position == this.limit) {
                require(1);
            }
            ByteBuffer byteBuffer = this.byteBuffer;
            this.position++;
            byte b2 = byteBuffer.get();
            i |= (b2 & Byte.MAX_VALUE) << 7;
            if ((b2 & 128) != 0) {
                if (this.position == this.limit) {
                    require(1);
                }
                this.position++;
                byte b3 = byteBuffer.get();
                i |= (b3 & Byte.MAX_VALUE) << 14;
                if ((b3 & 128) != 0) {
                    if (this.position == this.limit) {
                        require(1);
                    }
                    this.position++;
                    byte b4 = byteBuffer.get();
                    i |= (b4 & Byte.MAX_VALUE) << 21;
                    if ((b4 & 128) != 0) {
                        if (this.position == this.limit) {
                            require(1);
                        }
                        this.position++;
                        i |= (byteBuffer.get() & Byte.MAX_VALUE) << 28;
                    }
                }
            }
        }
        if (!z) {
            return (i >>> 1) ^ (-(i & 1));
        }
        return i;
    }

    /* renamed from: i */
    private long m23279i(boolean z) {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte b7;
        this.position++;
        byte b8 = this.byteBuffer.get();
        long j = b8 & Byte.MAX_VALUE;
        if ((b8 & 128) != 0) {
            if (this.position == this.limit) {
                require(1);
            }
            ByteBuffer byteBuffer = this.byteBuffer;
            this.position++;
            j |= (b & Byte.MAX_VALUE) << 7;
            if ((byteBuffer.get() & 128) != 0) {
                if (this.position == this.limit) {
                    require(1);
                }
                this.position++;
                j |= (b2 & Byte.MAX_VALUE) << 14;
                if ((byteBuffer.get() & 128) != 0) {
                    if (this.position == this.limit) {
                        require(1);
                    }
                    this.position++;
                    j |= (b3 & Byte.MAX_VALUE) << 21;
                    if ((byteBuffer.get() & 128) != 0) {
                        if (this.position == this.limit) {
                            require(1);
                        }
                        this.position++;
                        j |= (b4 & Byte.MAX_VALUE) << 28;
                        if ((byteBuffer.get() & 128) != 0) {
                            if (this.position == this.limit) {
                                require(1);
                            }
                            this.position++;
                            j |= (b5 & Byte.MAX_VALUE) << 35;
                            if ((byteBuffer.get() & 128) != 0) {
                                if (this.position == this.limit) {
                                    require(1);
                                }
                                this.position++;
                                j |= (b6 & Byte.MAX_VALUE) << 42;
                                if ((byteBuffer.get() & 128) != 0) {
                                    if (this.position == this.limit) {
                                        require(1);
                                    }
                                    this.position++;
                                    j |= (b7 & Byte.MAX_VALUE) << 49;
                                    if ((byteBuffer.get() & 128) != 0) {
                                        if (this.position == this.limit) {
                                            require(1);
                                        }
                                        this.position++;
                                        j |= byteBuffer.get() << 56;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!z) {
            return (-(j & 1)) ^ (j >>> 1);
        }
        return j;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public boolean canReadVarInt() {
        if (this.limit - this.position >= 5) {
            return true;
        }
        if (optional(5) <= 0) {
            return false;
        }
        int i = this.position;
        int i2 = this.limit;
        ByteBuffer byteBuffer = this.byteBuffer;
        int i3 = i + 1;
        if ((byteBuffer.get(i) & 128) == 0) {
            return true;
        }
        if (i3 == i2) {
            return false;
        }
        int i4 = i3 + 1;
        if ((byteBuffer.get(i3) & 128) == 0) {
            return true;
        }
        if (i4 == i2) {
            return false;
        }
        int i5 = i4 + 1;
        if ((byteBuffer.get(i4) & 128) == 0) {
            return true;
        }
        if (i5 == i2) {
            return false;
        }
        int i6 = i5 + 1;
        if ((byteBuffer.get(i5) & 128) == 0 || i6 != i2) {
            return true;
        }
        return false;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public boolean canReadVarLong() {
        if (this.limit - this.position >= 9) {
            return true;
        }
        if (optional(5) <= 0) {
            return false;
        }
        int i = this.position;
        int i2 = this.limit;
        ByteBuffer byteBuffer = this.byteBuffer;
        int i3 = i + 1;
        if ((byteBuffer.get(i) & 128) == 0) {
            return true;
        }
        if (i3 == i2) {
            return false;
        }
        int i4 = i3 + 1;
        if ((byteBuffer.get(i3) & 128) == 0) {
            return true;
        }
        if (i4 == i2) {
            return false;
        }
        int i5 = i4 + 1;
        if ((byteBuffer.get(i4) & 128) == 0) {
            return true;
        }
        if (i5 == i2) {
            return false;
        }
        int i6 = i5 + 1;
        if ((byteBuffer.get(i5) & 128) == 0) {
            return true;
        }
        if (i6 == i2) {
            return false;
        }
        int i7 = i6 + 1;
        if ((byteBuffer.get(i6) & 128) == 0) {
            return true;
        }
        if (i7 == i2) {
            return false;
        }
        int i8 = i7 + 1;
        if ((byteBuffer.get(i7) & 128) == 0) {
            return true;
        }
        if (i8 == i2) {
            return false;
        }
        int i9 = i8 + 1;
        if ((byteBuffer.get(i8) & 128) == 0) {
            return true;
        }
        if (i9 == i2) {
            return false;
        }
        int i10 = i9 + 1;
        if ((byteBuffer.get(i9) & 128) == 0 || i10 != i2) {
            return true;
        }
        return false;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        InputStream inputStream = this.inputStream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public int fill(ByteBuffer byteBuffer, int i, int i2) {
        if (this.inputStream == null) {
            return -1;
        }
        try {
            if (this.f7272a == null) {
                this.f7272a = new byte[2048];
            }
            m23275n(byteBuffer, i);
            int i3 = 0;
            while (true) {
                if (i2 <= 0) {
                    break;
                }
                InputStream inputStream = this.inputStream;
                byte[] bArr = this.f7272a;
                int read = inputStream.read(bArr, 0, Math.min(bArr.length, i2));
                if (read == -1) {
                    if (i3 == 0) {
                        return -1;
                    }
                } else {
                    byteBuffer.put(this.f7272a, 0, read);
                    i2 -= read;
                    i3 += read;
                }
            }
            return i3;
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public int optional(int i) {
        int i2 = this.limit - this.position;
        if (i2 >= i) {
            return i;
        }
        int min = Math.min(i, this.capacity);
        ByteBuffer byteBuffer = this.byteBuffer;
        int i3 = this.limit;
        int fill = fill(byteBuffer, i3, this.capacity - i3);
        m23275n(this.byteBuffer, this.position);
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
        this.byteBuffer.compact();
        this.total += this.position;
        this.position = 0;
        do {
            int fill2 = fill(this.byteBuffer, i4, this.capacity - i4);
            if (fill2 == -1) {
                break;
            }
            i4 += fill2;
        } while (i4 < min);
        this.limit = i4;
        m23275n(this.byteBuffer, 0);
        if (i4 == 0) {
            return -1;
        }
        return Math.min(i4, min);
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public boolean readBoolean() {
        if (this.position == this.limit) {
            require(1);
        }
        this.position++;
        if (this.byteBuffer.get() == 1) {
            return true;
        }
        return false;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public boolean[] readBooleans(int i) {
        boolean z;
        boolean[] zArr = new boolean[i];
        if (optional(i) == i) {
            ByteBuffer byteBuffer = this.byteBuffer;
            for (int i2 = 0; i2 < i; i2++) {
                if (byteBuffer.get() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                zArr[i2] = z;
            }
            this.position = m23277k(byteBuffer);
        } else {
            for (int i3 = 0; i3 < i; i3++) {
                zArr[i3] = readBoolean();
            }
        }
        return zArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public byte readByte() {
        if (this.position == this.limit) {
            require(1);
        }
        this.position++;
        return this.byteBuffer.get();
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public int readByteUnsigned() {
        if (this.position == this.limit) {
            require(1);
        }
        this.position++;
        return this.byteBuffer.get() & DefaultClassResolver.NAME;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public char[] readChars(int i) {
        char[] cArr = new char[i];
        int i2 = i << 1;
        int i3 = 0;
        if (optional(i2) == i2) {
            ByteBuffer byteBuffer = this.byteBuffer;
            while (i3 < i) {
                cArr[i3] = (char) ((byteBuffer.get() & DefaultClassResolver.NAME) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8));
                i3++;
            }
            this.position = m23277k(byteBuffer);
        } else {
            while (i3 < i) {
                cArr[i3] = readChar();
                i3++;
            }
        }
        return cArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public double readDouble() {
        require(8);
        ByteBuffer byteBuffer = this.byteBuffer;
        this.position += 8;
        int i = byteBuffer.get() & DefaultClassResolver.NAME;
        return Double.longBitsToDouble((byteBuffer.get() << 56) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8) | i | ((byteBuffer.get() & DefaultClassResolver.NAME) << 16) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 24) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 32) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 40) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 48));
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public double[] readDoubles(int i) {
        double[] dArr = new double[i];
        int i2 = i << 3;
        int i3 = 0;
        if (optional(i2) == i2) {
            ByteBuffer byteBuffer = this.byteBuffer;
            while (i3 < i) {
                dArr[i3] = Double.longBitsToDouble((byteBuffer.get() & DefaultClassResolver.NAME) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 16) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 24) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 32) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 40) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 48) | (byteBuffer.get() << 56));
                i3++;
            }
            this.position = m23277k(byteBuffer);
        } else {
            while (i3 < i) {
                dArr[i3] = readDouble();
                i3++;
            }
        }
        return dArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public float[] readFloats(int i) {
        float[] fArr = new float[i];
        int i2 = i << 2;
        int i3 = 0;
        if (optional(i2) == i2) {
            ByteBuffer byteBuffer = this.byteBuffer;
            while (i3 < i) {
                fArr[i3] = Float.intBitsToFloat((byteBuffer.get() & DefaultClassResolver.NAME) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 16) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 24));
                i3++;
            }
            this.position = m23277k(byteBuffer);
        } else {
            while (i3 < i) {
                fArr[i3] = readFloat();
                i3++;
            }
        }
        return fArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public int[] readInts(int i) {
        int[] iArr = new int[i];
        int i2 = i << 2;
        int i3 = 0;
        if (optional(i2) == i2) {
            ByteBuffer byteBuffer = this.byteBuffer;
            while (i3 < i) {
                iArr[i3] = (byteBuffer.get() & DefaultClassResolver.NAME) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 16) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 24);
                i3++;
            }
            this.position = m23277k(byteBuffer);
        } else {
            while (i3 < i) {
                iArr[i3] = readInt();
                i3++;
            }
        }
        return iArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public long readLong() {
        ByteBuffer byteBuffer;
        require(8);
        this.position += 8;
        int i = this.byteBuffer.get() & DefaultClassResolver.NAME;
        return (byteBuffer.get() << 56) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8) | i | ((byteBuffer.get() & DefaultClassResolver.NAME) << 16) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 24) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 32) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 40) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 48);
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public long[] readLongs(int i) {
        long[] jArr = new long[i];
        int i2 = i << 3;
        int i3 = 0;
        if (optional(i2) == i2) {
            ByteBuffer byteBuffer = this.byteBuffer;
            while (i3 < i) {
                jArr[i3] = (byteBuffer.get() & DefaultClassResolver.NAME) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 16) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 24) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 32) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 40) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 48) | (byteBuffer.get() << 56);
                i3++;
            }
            this.position = m23277k(byteBuffer);
        } else {
            while (i3 < i) {
                jArr[i3] = readLong();
                i3++;
            }
        }
        return jArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public short[] readShorts(int i) {
        short[] sArr = new short[i];
        int i2 = i << 1;
        int i3 = 0;
        if (optional(i2) == i2) {
            ByteBuffer byteBuffer = this.byteBuffer;
            while (i3 < i) {
                sArr[i3] = (short) ((byteBuffer.get() & DefaultClassResolver.NAME) | ((byteBuffer.get() & DefaultClassResolver.NAME) << 8));
                i3++;
            }
            this.position = m23277k(byteBuffer);
        } else {
            while (i3 < i) {
                sArr[i3] = readShort();
                i3++;
            }
        }
        return sArr;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public int require(int i) {
        int i2 = this.limit;
        int i3 = i2 - this.position;
        if (i3 >= i) {
            return i3;
        }
        int i4 = this.capacity;
        if (i <= i4) {
            if (i3 > 0) {
                int fill = fill(this.byteBuffer, i2, i4 - i2);
                if (fill != -1) {
                    m23275n(this.byteBuffer, this.position);
                    i3 += fill;
                    if (i3 >= i) {
                        this.limit += fill;
                        return i3;
                    }
                } else {
                    throw new KryoBufferUnderflowException("Buffer underflow.");
                }
            }
            this.byteBuffer.compact();
            this.total += this.position;
            this.position = 0;
            while (true) {
                int fill2 = fill(this.byteBuffer, i3, this.capacity - i3);
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
            m23275n(this.byteBuffer, 0);
            return i3;
        }
        throw new KryoException("Buffer too small: capacity: " + this.capacity + ", required: " + i);
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public void setBuffer(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException("This input does not used a byte[], see #setByteBufferByteBuffer().");
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
        this.limit = 0;
        reset();
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public void setLimit(int i) {
        this.limit = i;
        m23276m(this.byteBuffer, i);
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public void setPosition(int i) {
        this.position = i;
        m23275n(this.byteBuffer, i);
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public void readBytes(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int min = Math.min(this.limit - this.position, i2);
            while (true) {
                this.byteBuffer.get(bArr, i, min);
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

    @Override // com.esotericsoftware.kryo.p035io.Input
    public String readString() {
        if (!readVarIntFlag()) {
            return m23285c();
        }
        int readVarIntFlag = readVarIntFlag(true);
        if (readVarIntFlag != 0) {
            if (readVarIntFlag != 1) {
                int i = readVarIntFlag - 1;
                m23283e(i);
                return new String(this.chars, 0, i);
            }
            return "";
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public StringBuilder readStringBuilder() {
        if (!readVarIntFlag()) {
            return new StringBuilder(m23285c());
        }
        int readVarIntFlag = readVarIntFlag(true);
        if (readVarIntFlag != 0) {
            if (readVarIntFlag != 1) {
                int i = readVarIntFlag - 1;
                m23283e(i);
                StringBuilder sb = new StringBuilder(i);
                sb.append(this.chars, 0, i);
                return sb;
            }
            return new StringBuilder("");
        }
        return null;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input
    public int readVarIntFlag(boolean z) {
        if (require(1) < 5) {
            return m23281g(z);
        }
        byte b = this.byteBuffer.get();
        int i = b & 63;
        if ((b & 64) != 0) {
            ByteBuffer byteBuffer = this.byteBuffer;
            byte b2 = byteBuffer.get();
            i |= (b2 & Byte.MAX_VALUE) << 6;
            if ((b2 & 128) != 0) {
                byte b3 = byteBuffer.get();
                i |= (b3 & Byte.MAX_VALUE) << 13;
                if ((b3 & 128) != 0) {
                    byte b4 = byteBuffer.get();
                    i |= (b4 & Byte.MAX_VALUE) << 20;
                    if ((b4 & 128) != 0) {
                        i |= (byteBuffer.get() & Byte.MAX_VALUE) << 27;
                    }
                }
            }
        }
        this.position = m23277k(this.byteBuffer);
        return z ? i : (i >>> 1) ^ (-(i & 1));
    }

    @Override // com.esotericsoftware.kryo.p035io.Input, java.io.InputStream, com.esotericsoftware.kryo.util.Pool.Poolable
    public void reset() {
        super.reset();
        m23275n(this.byteBuffer, 0);
    }

    public void setBuffer(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            this.byteBuffer = byteBuffer;
            this.position = byteBuffer.position();
            this.limit = byteBuffer.limit();
            this.capacity = byteBuffer.capacity();
            this.total = 0L;
            this.inputStream = null;
            return;
        }
        throw new IllegalArgumentException("buffer cannot be null.");
    }

    @Override // com.esotericsoftware.kryo.p035io.Input, java.io.InputStream
    public long skip(long j) {
        long j2 = j;
        while (j2 > 0) {
            int min = (int) Math.min(2147483639L, j2);
            skip(min);
            j2 -= min;
        }
        return j;
    }

    @Override // com.esotericsoftware.kryo.p035io.Input, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public ByteBufferInput(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    @Override // com.esotericsoftware.kryo.p035io.Input, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int min = Math.min(this.limit - this.position, i2);
            int i3 = i2;
            while (true) {
                this.byteBuffer.get(bArr, i, min);
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

    public ByteBufferInput(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bArr.length);
            allocateDirect.put(bArr);
            m23278j(allocateDirect);
            setBuffer(allocateDirect);
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    public ByteBufferInput(ByteBuffer byteBuffer) {
        setBuffer(byteBuffer);
    }

    public ByteBufferInput(InputStream inputStream) {
        this(4096);
        if (inputStream != null) {
            this.inputStream = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }

    public ByteBufferInput(InputStream inputStream, int i) {
        this(i);
        if (inputStream != null) {
            this.inputStream = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }
}
