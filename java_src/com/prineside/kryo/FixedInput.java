package com.prineside.kryo;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class FixedInput extends InputStream {

    /* renamed from: a */
    public byte[] f7918a;

    /* renamed from: b */
    public int f7919b;

    /* renamed from: d */
    public int f7920d;

    /* renamed from: k */
    public int f7921k;

    /* renamed from: p */
    public long f7922p;

    /* renamed from: q */
    public char[] f7923q;

    /* renamed from: r */
    public InputStream f7924r;

    public FixedInput() {
        this.f7923q = new char[32];
    }

    @Override // java.io.InputStream
    public int available() {
        int i = this.f7921k - this.f7919b;
        InputStream inputStream = this.f7924r;
        return i + (inputStream != null ? inputStream.available() : 0);
    }

    public boolean eof() {
        return m22842d(1) <= 0;
    }

    public byte[] getBuffer() {
        return this.f7918a;
    }

    public InputStream getInputStream() {
        return this.f7924r;
    }

    public final int limit() {
        return this.f7921k;
    }

    public final int position() {
        return this.f7919b;
    }

    @Override // java.io.InputStream
    public int read() {
        if (m22842d(1) <= 0) {
            return -1;
        }
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        this.f7919b = i + 1;
        return bArr[i] & DefaultClassResolver.NAME;
    }

    public boolean readBoolean() {
        m22833n(1);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        this.f7919b = i + 1;
        return bArr[i] == 1;
    }

    public byte readByte() {
        m22833n(1);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        this.f7919b = i + 1;
        return bArr[i];
    }

    public int readByteUnsigned() {
        m22833n(1);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        this.f7919b = i + 1;
        return bArr[i] & DefaultClassResolver.NAME;
    }

    public byte[] readBytes(int i) {
        byte[] bArr = new byte[i];
        readBytes(bArr, 0, i);
        return bArr;
    }

    public char readChar() {
        m22833n(2);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        int i2 = i + 1;
        this.f7919b = i2 + 1;
        return (char) ((bArr[i2] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 8));
    }

    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    public int readInt() {
        m22833n(4);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        this.f7919b = i + 4;
        return (bArr[i + 3] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 24) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 16) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 8);
    }

    public int[] readInts(int i, boolean z) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = readInt(z);
        }
        return iArr;
    }

    public long readLong() {
        m22833n(8);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        int i2 = i + 1;
        int i3 = i2 + 1;
        int i4 = i3 + 1;
        int i5 = i4 + 1;
        int i6 = i5 + 1;
        int i7 = i6 + 1;
        int i8 = i7 + 1;
        this.f7919b = i8 + 1;
        return (bArr[i8] & DefaultClassResolver.NAME) | (bArr[i] << 56) | ((bArr[i2] & DefaultClassResolver.NAME) << 48) | ((bArr[i3] & DefaultClassResolver.NAME) << 40) | ((bArr[i4] & DefaultClassResolver.NAME) << 32) | ((bArr[i5] & DefaultClassResolver.NAME) << 24) | ((bArr[i6] & DefaultClassResolver.NAME) << 16) | ((bArr[i7] & DefaultClassResolver.NAME) << 8);
    }

    public long[] readLongs(int i, boolean z) {
        long[] jArr = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = readLong(z);
        }
        return jArr;
    }

    public short readShort() {
        m22833n(2);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        int i2 = i + 1;
        this.f7919b = i2 + 1;
        return (short) ((bArr[i2] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 8));
    }

    public int readShortUnsigned() {
        m22833n(2);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        int i2 = i + 1;
        this.f7919b = i2 + 1;
        return (bArr[i2] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 8);
    }

    public String readString() {
        int m22835k;
        int m22833n = m22833n(1);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        this.f7919b = i + 1;
        byte b = bArr[i];
        if ((b & 128) == 0) {
            return m22841e();
        }
        if (m22833n >= 5) {
            m22835k = m22836j(b);
        } else {
            m22835k = m22835k(b);
        }
        if (m22835k != 0) {
            if (m22835k != 1) {
                int i2 = m22835k - 1;
                if (this.f7923q.length < i2) {
                    this.f7923q = new char[i2];
                }
                m22837i(i2);
                return new String(this.f7923q, 0, i2);
            }
            return "";
        }
        return null;
    }

    public StringBuilder readStringBuilder() {
        int m22835k;
        int m22833n = m22833n(1);
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        this.f7919b = i + 1;
        byte b = bArr[i];
        if ((b & 128) == 0) {
            return new StringBuilder(m22841e());
        }
        if (m22833n >= 5) {
            m22835k = m22836j(b);
        } else {
            m22835k = m22835k(b);
        }
        if (m22835k != 0) {
            if (m22835k != 1) {
                int i2 = m22835k - 1;
                if (this.f7923q.length < i2) {
                    this.f7923q = new char[i2];
                }
                m22837i(i2);
                StringBuilder sb = new StringBuilder(i2);
                sb.append(this.f7923q, 0, i2);
                return sb;
            }
            return new StringBuilder("");
        }
        return null;
    }

    public int readVarInt(boolean z) {
        if (m22833n(1) < 5) {
            return m22839g(z);
        }
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        int i2 = i + 1;
        this.f7919b = i2;
        byte b = bArr[i];
        int i3 = b & Byte.MAX_VALUE;
        if ((b & 128) != 0) {
            int i4 = i2 + 1;
            this.f7919b = i4;
            byte b2 = bArr[i2];
            i3 |= (b2 & Byte.MAX_VALUE) << 7;
            if ((b2 & 128) != 0) {
                int i5 = i4 + 1;
                this.f7919b = i5;
                byte b3 = bArr[i4];
                i3 |= (b3 & Byte.MAX_VALUE) << 14;
                if ((b3 & 128) != 0) {
                    int i6 = i5 + 1;
                    this.f7919b = i6;
                    byte b4 = bArr[i5];
                    i3 |= (b4 & Byte.MAX_VALUE) << 21;
                    if ((b4 & 128) != 0) {
                        this.f7919b = i6 + 1;
                        i3 |= (bArr[i6] & Byte.MAX_VALUE) << 28;
                    }
                }
            }
        }
        if (!z) {
            return (i3 >>> 1) ^ (-(i3 & 1));
        }
        return i3;
    }

    public long readVarLong(boolean z) {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte b7;
        if (m22833n(1) < 9) {
            return m22838h(z);
        }
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        int i2 = i + 1;
        this.f7919b = i2;
        byte b8 = bArr[i];
        long j = b8 & Byte.MAX_VALUE;
        if ((b8 & 128) != 0) {
            int i3 = i2 + 1;
            this.f7919b = i3;
            j |= (b & Byte.MAX_VALUE) << 7;
            if ((bArr[i2] & 128) != 0) {
                int i4 = i3 + 1;
                this.f7919b = i4;
                j |= (b2 & Byte.MAX_VALUE) << 14;
                if ((bArr[i3] & 128) != 0) {
                    int i5 = i4 + 1;
                    this.f7919b = i5;
                    j |= (b3 & Byte.MAX_VALUE) << 21;
                    if ((bArr[i4] & 128) != 0) {
                        int i6 = i5 + 1;
                        this.f7919b = i6;
                        j |= (b4 & Byte.MAX_VALUE) << 28;
                        if ((bArr[i5] & 128) != 0) {
                            int i7 = i6 + 1;
                            this.f7919b = i7;
                            j |= (b5 & Byte.MAX_VALUE) << 35;
                            if ((bArr[i6] & 128) != 0) {
                                int i8 = i7 + 1;
                                this.f7919b = i8;
                                j |= (b6 & Byte.MAX_VALUE) << 42;
                                if ((bArr[i7] & 128) != 0) {
                                    int i9 = i8 + 1;
                                    this.f7919b = i9;
                                    j |= (b7 & Byte.MAX_VALUE) << 49;
                                    if ((bArr[i8] & 128) != 0) {
                                        this.f7919b = i9 + 1;
                                        j |= bArr[i9] << 56;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!z) {
            return (j >>> 1) ^ (-(1 & j));
        }
        return j;
    }

    public void rewind() {
        this.f7919b = 0;
        this.f7922p = 0L;
    }

    public void setBuffer(byte[] bArr) {
        setBuffer(bArr, 0, bArr.length);
    }

    public void setLimit(int i) {
        this.f7921k = i;
    }

    public void setPosition(int i) {
        this.f7919b = i;
    }

    public void setTotal(int i) {
        this.f7922p = i;
    }

    public void skip(int i) {
        int min = Math.min(this.f7921k - this.f7919b, i);
        while (true) {
            this.f7919b += min;
            i -= min;
            if (i == 0) {
                return;
            }
            min = Math.min(i, this.f7920d);
            m22833n(min);
        }
    }

    public long total() {
        return this.f7922p + this.f7919b;
    }

    /* renamed from: c */
    public int m22843c(byte[] bArr, int i, int i2) {
        InputStream inputStream = this.f7924r;
        if (inputStream == null) {
            return -1;
        }
        try {
            return inputStream.read(bArr, i, i2);
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    public boolean canReadInt() {
        if (this.f7921k - this.f7919b >= 5) {
            return true;
        }
        if (m22842d(5) <= 0) {
            return false;
        }
        int i = this.f7919b;
        byte[] bArr = this.f7918a;
        int i2 = i + 1;
        if ((bArr[i] & 128) == 0) {
            return true;
        }
        int i3 = this.f7921k;
        if (i2 == i3) {
            return false;
        }
        int i4 = i2 + 1;
        if ((bArr[i2] & 128) == 0) {
            return true;
        }
        if (i4 == i3) {
            return false;
        }
        int i5 = i4 + 1;
        if ((bArr[i4] & 128) == 0) {
            return true;
        }
        if (i5 == i3) {
            return false;
        }
        int i6 = i5 + 1;
        if ((bArr[i5] & 128) == 0 || i6 != i3) {
            return true;
        }
        return false;
    }

    public boolean canReadLong() {
        if (this.f7921k - this.f7919b >= 9) {
            return true;
        }
        if (m22842d(5) <= 0) {
            return false;
        }
        int i = this.f7919b;
        byte[] bArr = this.f7918a;
        int i2 = i + 1;
        if ((bArr[i] & 128) == 0) {
            return true;
        }
        int i3 = this.f7921k;
        if (i2 == i3) {
            return false;
        }
        int i4 = i2 + 1;
        if ((bArr[i2] & 128) == 0) {
            return true;
        }
        if (i4 == i3) {
            return false;
        }
        int i5 = i4 + 1;
        if ((bArr[i4] & 128) == 0) {
            return true;
        }
        if (i5 == i3) {
            return false;
        }
        int i6 = i5 + 1;
        if ((bArr[i5] & 128) == 0) {
            return true;
        }
        if (i6 == i3) {
            return false;
        }
        int i7 = i6 + 1;
        if ((bArr[i6] & 128) == 0) {
            return true;
        }
        if (i7 == i3) {
            return false;
        }
        int i8 = i7 + 1;
        if ((bArr[i7] & 128) == 0) {
            return true;
        }
        if (i8 == i3) {
            return false;
        }
        int i9 = i8 + 1;
        if ((bArr[i8] & 128) == 0) {
            return true;
        }
        if (i9 == i3) {
            return false;
        }
        int i10 = i9 + 1;
        if ((bArr[i9] & 128) == 0 || i10 != i3) {
            return true;
        }
        return false;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        InputStream inputStream = this.f7924r;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: d */
    public final int m22842d(int i) {
        int i2 = this.f7921k - this.f7919b;
        if (i2 >= i) {
            return i;
        }
        int min = Math.min(i, this.f7920d);
        byte[] bArr = this.f7918a;
        int i3 = this.f7921k;
        int m22843c = m22843c(bArr, i3, this.f7920d - i3);
        if (m22843c == -1) {
            if (i2 == 0) {
                return -1;
            }
            return Math.min(i2, min);
        }
        int i4 = i2 + m22843c;
        if (i4 >= min) {
            this.f7921k += m22843c;
            return min;
        }
        byte[] bArr2 = this.f7918a;
        System.arraycopy(bArr2, this.f7919b, bArr2, 0, i4);
        this.f7922p += this.f7919b;
        this.f7919b = 0;
        do {
            int m22843c2 = m22843c(this.f7918a, i4, this.f7920d - i4);
            if (m22843c2 == -1) {
                break;
            }
            i4 += m22843c2;
        } while (i4 < min);
        this.f7921k = i4;
        if (i4 == 0) {
            return -1;
        }
        return Math.min(i4, min);
    }

    /* renamed from: e */
    public final String m22841e() {
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        int i2 = i - 1;
        int i3 = this.f7921k;
        while (i != i3) {
            int i4 = i + 1;
            if ((bArr[i] & 128) != 0) {
                int i5 = i4 - 1;
                bArr[i5] = (byte) (bArr[i5] & Byte.MAX_VALUE);
                String str = new String(bArr, 0, i2, i4 - i2);
                bArr[i5] = (byte) (bArr[i5] | 128);
                this.f7919b = i4;
                return str;
            }
            i = i4;
        }
        return m22840f();
    }

    /* renamed from: f */
    public final String m22840f() {
        int i = this.f7919b - 1;
        this.f7919b = i;
        int i2 = this.f7921k;
        int i3 = i2 - i;
        if (i3 > this.f7923q.length) {
            this.f7923q = new char[i3 * 2];
        }
        char[] cArr = this.f7923q;
        byte[] bArr = this.f7918a;
        int i4 = 0;
        while (i < i2) {
            cArr[i4] = (char) bArr[i];
            i++;
            i4++;
        }
        this.f7919b = this.f7921k;
        while (true) {
            m22833n(1);
            int i5 = this.f7919b;
            this.f7919b = i5 + 1;
            byte b = bArr[i5];
            if (i3 == cArr.length) {
                char[] cArr2 = new char[i3 * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i3);
                this.f7923q = cArr2;
                cArr = cArr2;
            }
            if ((b & 128) == 128) {
                cArr[i3] = (char) (b & Byte.MAX_VALUE);
                return new String(cArr, 0, i3 + 1);
            }
            cArr[i3] = (char) b;
            i3++;
        }
    }

    /* renamed from: g */
    public final int m22839g(boolean z) {
        byte[] bArr = this.f7918a;
        int i = this.f7919b;
        this.f7919b = i + 1;
        byte b = bArr[i];
        int i2 = b & Byte.MAX_VALUE;
        if ((b & 128) != 0) {
            m22833n(1);
            byte[] bArr2 = this.f7918a;
            int i3 = this.f7919b;
            this.f7919b = i3 + 1;
            byte b2 = bArr2[i3];
            i2 |= (b2 & Byte.MAX_VALUE) << 7;
            if ((b2 & 128) != 0) {
                m22833n(1);
                int i4 = this.f7919b;
                this.f7919b = i4 + 1;
                byte b3 = bArr2[i4];
                i2 |= (b3 & Byte.MAX_VALUE) << 14;
                if ((b3 & 128) != 0) {
                    m22833n(1);
                    int i5 = this.f7919b;
                    this.f7919b = i5 + 1;
                    byte b4 = bArr2[i5];
                    i2 |= (b4 & Byte.MAX_VALUE) << 21;
                    if ((b4 & 128) != 0) {
                        m22833n(1);
                        int i6 = this.f7919b;
                        this.f7919b = i6 + 1;
                        i2 |= (bArr2[i6] & Byte.MAX_VALUE) << 28;
                    }
                }
            }
        }
        if (!z) {
            return (i2 >>> 1) ^ (-(i2 & 1));
        }
        return i2;
    }

    /* renamed from: h */
    public final long m22838h(boolean z) {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        byte b6;
        byte b7;
        int i;
        byte[] bArr = this.f7918a;
        int i2 = this.f7919b;
        this.f7919b = i2 + 1;
        byte b8 = bArr[i2];
        long j = b8 & Byte.MAX_VALUE;
        if ((b8 & 128) != 0) {
            m22833n(1);
            byte[] bArr2 = this.f7918a;
            int i3 = this.f7919b;
            this.f7919b = i3 + 1;
            j |= (b & Byte.MAX_VALUE) << 7;
            if ((bArr2[i3] & 128) != 0) {
                m22833n(1);
                int i4 = this.f7919b;
                this.f7919b = i4 + 1;
                j |= (b2 & Byte.MAX_VALUE) << 14;
                if ((bArr2[i4] & 128) != 0) {
                    m22833n(1);
                    int i5 = this.f7919b;
                    this.f7919b = i5 + 1;
                    j |= (b3 & Byte.MAX_VALUE) << 21;
                    if ((bArr2[i5] & 128) != 0) {
                        m22833n(1);
                        int i6 = this.f7919b;
                        this.f7919b = i6 + 1;
                        j |= (b4 & Byte.MAX_VALUE) << 28;
                        if ((bArr2[i6] & 128) != 0) {
                            m22833n(1);
                            int i7 = this.f7919b;
                            this.f7919b = i7 + 1;
                            j |= (b5 & Byte.MAX_VALUE) << 35;
                            if ((bArr2[i7] & 128) != 0) {
                                m22833n(1);
                                int i8 = this.f7919b;
                                this.f7919b = i8 + 1;
                                j |= (b6 & Byte.MAX_VALUE) << 42;
                                if ((bArr2[i8] & 128) != 0) {
                                    m22833n(1);
                                    int i9 = this.f7919b;
                                    this.f7919b = i9 + 1;
                                    j |= (b7 & Byte.MAX_VALUE) << 49;
                                    if ((bArr2[i9] & 128) != 0) {
                                        m22833n(1);
                                        this.f7919b = this.f7919b + 1;
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
            return (-(j & 1)) ^ (j >>> 1);
        }
        return j;
    }

    /* renamed from: i */
    public final void m22837i(int i) {
        byte[] bArr = this.f7918a;
        char[] cArr = this.f7923q;
        int min = Math.min(m22833n(1), i);
        int i2 = this.f7919b;
        int i3 = 0;
        while (true) {
            if (i3 >= min) {
                break;
            }
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b < 0) {
                i2 = i4 - 1;
                break;
            }
            cArr[i3] = (char) b;
            i2 = i4;
            i3++;
        }
        this.f7919b = i2;
        if (i3 < i) {
            m22834m(i, i3);
        }
    }

    /* renamed from: j */
    public final int m22836j(int i) {
        int i2 = i & 63;
        if ((i & 64) != 0) {
            byte[] bArr = this.f7918a;
            int i3 = this.f7919b;
            int i4 = i3 + 1;
            this.f7919b = i4;
            byte b = bArr[i3];
            int i5 = i2 | ((b & Byte.MAX_VALUE) << 6);
            if ((b & 128) != 0) {
                int i6 = i4 + 1;
                this.f7919b = i6;
                byte b2 = bArr[i4];
                int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 13);
                if ((b2 & 128) != 0) {
                    int i8 = i6 + 1;
                    this.f7919b = i8;
                    byte b3 = bArr[i6];
                    int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 20);
                    if ((b3 & 128) != 0) {
                        this.f7919b = i8 + 1;
                        return i9 | ((bArr[i8] & Byte.MAX_VALUE) << 27);
                    }
                    return i9;
                }
                return i7;
            }
            return i5;
        }
        return i2;
    }

    /* renamed from: k */
    public final int m22835k(int i) {
        int i2 = i & 63;
        if ((i & 64) != 0) {
            m22833n(1);
            byte[] bArr = this.f7918a;
            int i3 = this.f7919b;
            this.f7919b = i3 + 1;
            byte b = bArr[i3];
            int i4 = i2 | ((b & Byte.MAX_VALUE) << 6);
            if ((b & 128) != 0) {
                m22833n(1);
                int i5 = this.f7919b;
                this.f7919b = i5 + 1;
                byte b2 = bArr[i5];
                int i6 = i4 | ((b2 & Byte.MAX_VALUE) << 13);
                if ((b2 & 128) != 0) {
                    m22833n(1);
                    int i7 = this.f7919b;
                    this.f7919b = i7 + 1;
                    byte b3 = bArr[i7];
                    int i8 = i6 | ((b3 & Byte.MAX_VALUE) << 20);
                    if ((b3 & 128) != 0) {
                        m22833n(1);
                        int i9 = this.f7919b;
                        this.f7919b = i9 + 1;
                        return i8 | ((bArr[i9] & Byte.MAX_VALUE) << 27);
                    }
                    return i8;
                }
                return i6;
            }
            return i4;
        }
        return i2;
    }

    /* renamed from: m */
    public final void m22834m(int i, int i2) {
        char[] cArr = this.f7923q;
        byte[] bArr = this.f7918a;
        while (i2 < i) {
            if (this.f7919b == this.f7921k) {
                m22833n(1);
            }
            int i3 = this.f7919b;
            int i4 = i3 + 1;
            this.f7919b = i4;
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
                    if (i4 == this.f7921k) {
                        m22833n(1);
                    }
                    int i6 = this.f7919b;
                    this.f7919b = i6 + 1;
                    cArr[i2] = (char) (((i5 & 31) << 6) | (bArr[i6] & 63));
                    break;
                case 14:
                    m22833n(2);
                    int i7 = this.f7919b;
                    int i8 = i7 + 1;
                    int i9 = ((i5 & 15) << 12) | ((bArr[i7] & 63) << 6);
                    this.f7919b = i8 + 1;
                    cArr[i2] = (char) (i9 | (bArr[i8] & 63));
                    break;
            }
            i2++;
        }
    }

    /* renamed from: n */
    public int m22833n(int i) {
        int i2 = this.f7921k;
        int i3 = i2 - this.f7919b;
        if (i3 >= i) {
            return i3;
        }
        int i4 = this.f7920d;
        if (i <= i4) {
            if (i3 > 0) {
                int m22843c = m22843c(this.f7918a, i2, i4 - i2);
                if (m22843c != -1) {
                    i3 += m22843c;
                    if (i3 >= i) {
                        this.f7921k += m22843c;
                        return i3;
                    }
                } else {
                    throw new KryoException("Buffer underflow.");
                }
            }
            byte[] bArr = this.f7918a;
            System.arraycopy(bArr, this.f7919b, bArr, 0, i3);
            this.f7922p += this.f7919b;
            this.f7919b = 0;
            while (true) {
                int m22843c2 = m22843c(this.f7918a, i3, this.f7920d - i3);
                if (m22843c2 == -1) {
                    if (i3 >= i) {
                        break;
                    }
                    throw new KryoException("Buffer underflow.");
                }
                i3 += m22843c2;
                if (i3 >= i) {
                    break;
                }
            }
            this.f7921k = i3;
            return i3;
        }
        throw new KryoException("Buffer too small: capacity: " + this.f7920d + ", required: " + i);
    }

    public char[] readChars(int i) {
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = readChar();
        }
        return cArr;
    }

    public double readDouble(double d, boolean z) {
        double readLong = readLong(z);
        Double.isNaN(readLong);
        return readLong / d;
    }

    public double[] readDoubles(int i) {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = readDouble();
        }
        return dArr;
    }

    public float readFloat(float f, boolean z) {
        return readInt(z) / f;
    }

    public float[] readFloats(int i) {
        float[] fArr = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = readFloat();
        }
        return fArr;
    }

    public short[] readShorts(int i) {
        short[] sArr = new short[i];
        for (int i2 = 0; i2 < i; i2++) {
            sArr[i2] = readShort();
        }
        return sArr;
    }

    public void setBuffer(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            this.f7918a = bArr;
            this.f7919b = i;
            this.f7921k = i + i2;
            this.f7920d = bArr.length;
            this.f7922p = 0L;
            this.f7924r = null;
            return;
        }
        throw new IllegalArgumentException("bytes cannot be null.");
    }

    public void setInputStream(InputStream inputStream) {
        this.f7924r = inputStream;
        this.f7921k = 0;
        rewind();
    }

    public FixedInput(int i) {
        this.f7923q = new char[32];
        this.f7920d = i;
        this.f7918a = new byte[i];
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public void readBytes(byte[] bArr) {
        readBytes(bArr, 0, bArr.length);
    }

    public int[] readInts(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = readInt();
        }
        return iArr;
    }

    public long[] readLongs(int i) {
        long[] jArr = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = readLong();
        }
        return jArr;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int min = Math.min(this.f7921k - this.f7919b, i2);
            int i3 = i2;
            while (true) {
                System.arraycopy(this.f7918a, this.f7919b, bArr, i, min);
                this.f7919b += min;
                i3 -= min;
                if (i3 != 0) {
                    i += min;
                    min = m22842d(i3);
                    if (min != -1) {
                        if (this.f7919b == this.f7921k) {
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
            int min = Math.min(this.f7921k - this.f7919b, i2);
            while (true) {
                System.arraycopy(this.f7918a, this.f7919b, bArr, i, min);
                this.f7919b += min;
                i2 -= min;
                if (i2 == 0) {
                    return;
                }
                i += min;
                min = Math.min(i2, this.f7920d);
                m22833n(min);
            }
        } else {
            throw new IllegalArgumentException("bytes cannot be null.");
        }
    }

    public long readLong(boolean z) {
        return readVarLong(z);
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        long j2 = j;
        while (j2 > 0) {
            int min = (int) Math.min(2147483647L, j2);
            skip(min);
            j2 -= min;
        }
        return j;
    }

    public int readInt(boolean z) {
        return readVarInt(z);
    }

    public FixedInput(byte[] bArr) {
        this.f7923q = new char[32];
        setBuffer(bArr, 0, bArr.length);
    }

    public FixedInput(byte[] bArr, int i, int i2) {
        this.f7923q = new char[32];
        setBuffer(bArr, i, i2);
    }

    public FixedInput(InputStream inputStream) {
        this(4096);
        if (inputStream != null) {
            this.f7924r = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }

    public FixedInput(InputStream inputStream, int i) {
        this(i);
        if (inputStream != null) {
            this.f7924r = inputStream;
            return;
        }
        throw new IllegalArgumentException("inputStream cannot be null.");
    }
}
