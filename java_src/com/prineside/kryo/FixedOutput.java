package com.prineside.kryo;

import com.esotericsoftware.kryo.KryoException;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class FixedOutput extends OutputStream {

    /* renamed from: a */
    public int f7925a;

    /* renamed from: b */
    public long f7926b;

    /* renamed from: d */
    public int f7927d;

    /* renamed from: k */
    public int f7928k;

    /* renamed from: p */
    public byte[] f7929p;

    /* renamed from: q */
    public OutputStream f7930q;

    public FixedOutput() {
    }

    public static int intLength(int i, boolean z) {
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

    public static int longLength(long j, boolean z) {
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

    public void clear() {
        this.f7927d = 0;
        this.f7926b = 0L;
    }

    public byte[] getBuffer() {
        return this.f7929p;
    }

    public OutputStream getOutputStream() {
        return this.f7930q;
    }

    public final int position() {
        return this.f7927d;
    }

    public void setBuffer(byte[] bArr) {
        setBuffer(bArr, bArr.length);
    }

    public void setPosition(int i) {
        this.f7927d = i;
    }

    public final long total() {
        return this.f7926b + this.f7927d;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        if (this.f7927d == this.f7928k) {
            m22832c(1);
        }
        byte[] bArr = this.f7929p;
        int i2 = this.f7927d;
        this.f7927d = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public void writeByte(byte b) {
        if (this.f7927d == this.f7928k) {
            m22832c(1);
        }
        byte[] bArr = this.f7929p;
        int i = this.f7927d;
        this.f7927d = i + 1;
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
        m22832c(2);
        byte[] bArr = this.f7929p;
        int i = this.f7927d;
        int i2 = i + 1;
        bArr[i] = (byte) (c >>> '\b');
        this.f7927d = i2 + 1;
        bArr[i2] = (byte) c;
    }

    public void writeChars(char[] cArr) {
        for (char c : cArr) {
            writeChar(c);
        }
    }

    public void writeDouble(double d) {
        writeLong(Double.doubleToLongBits(d));
    }

    public void writeDoubles(double[] dArr) {
        for (double d : dArr) {
            writeDouble(d);
        }
    }

    public void writeFloat(float f) {
        writeInt(Float.floatToIntBits(f));
    }

    public void writeFloats(float[] fArr) {
        for (float f : fArr) {
            writeFloat(f);
        }
    }

    public void writeInt(int i) {
        m22832c(4);
        byte[] bArr = this.f7929p;
        int i2 = this.f7927d;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i >> 8);
        this.f7927d = i5 + 1;
        bArr[i5] = (byte) i;
    }

    public void writeInts(int[] iArr, boolean z) {
        for (int i : iArr) {
            writeInt(i, z);
        }
    }

    public void writeLong(long j) {
        m22832c(8);
        byte[] bArr = this.f7929p;
        int i = this.f7927d;
        int i2 = i + 1;
        bArr[i] = (byte) (j >>> 56);
        int i3 = i2 + 1;
        bArr[i2] = (byte) (j >>> 48);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (j >>> 40);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (j >>> 32);
        int i6 = i5 + 1;
        bArr[i5] = (byte) (j >>> 24);
        int i7 = i6 + 1;
        bArr[i6] = (byte) (j >>> 16);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (j >>> 8);
        this.f7927d = i8 + 1;
        bArr[i8] = (byte) j;
    }

    public void writeLongs(long[] jArr, boolean z) {
        for (long j : jArr) {
            writeLong(j, z);
        }
    }

    public void writeShort(int i) {
        m22832c(2);
        byte[] bArr = this.f7929p;
        int i2 = this.f7927d;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 8);
        this.f7927d = i3 + 1;
        bArr[i3] = (byte) i;
    }

    public void writeShorts(short[] sArr) {
        for (short s : sArr) {
            writeShort(s);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeString(java.lang.String r8) {
        /*
            r7 = this;
            r0 = 128(0x80, float:1.794E-43)
            if (r8 != 0) goto L8
            r7.writeByte(r0)
            return
        L8:
            int r1 = r8.length()
            if (r1 != 0) goto L14
            r8 = 129(0x81, float:1.81E-43)
            r7.writeByte(r8)
            return
        L14:
            r2 = 127(0x7f, float:1.78E-43)
            r3 = 0
            r4 = 1
            if (r1 <= r4) goto L2d
            r5 = 64
            if (r1 >= r5) goto L2d
            r5 = 0
        L1f:
            if (r5 >= r1) goto L2b
            char r6 = r8.charAt(r5)
            if (r6 <= r2) goto L28
            goto L2d
        L28:
            int r5 = r5 + 1
            goto L1f
        L2b:
            r5 = 1
            goto L2e
        L2d:
            r5 = 0
        L2e:
            if (r5 == 0) goto L51
            int r2 = r7.f7928k
            int r5 = r7.f7927d
            int r2 = r2 - r5
            if (r2 >= r1) goto L3b
            r7.m22831d(r8, r1)
            goto L45
        L3b:
            byte[] r2 = r7.f7929p
            r8.getBytes(r3, r1, r2, r5)
            int r8 = r7.f7927d
            int r8 = r8 + r1
            r7.f7927d = r8
        L45:
            byte[] r8 = r7.f7929p
            int r1 = r7.f7927d
            int r1 = r1 - r4
            r2 = r8[r1]
            r0 = r0 | r2
            byte r0 = (byte) r0
            r8[r1] = r0
            goto L78
        L51:
            int r0 = r1 + 1
            r7.m22829f(r0)
            int r0 = r7.f7928k
            int r4 = r7.f7927d
            int r0 = r0 - r4
            if (r0 < r1) goto L73
            byte[] r0 = r7.f7929p
        L5f:
            if (r3 >= r1) goto L71
            char r5 = r8.charAt(r3)
            if (r5 <= r2) goto L68
            goto L71
        L68:
            int r6 = r4 + 1
            byte r5 = (byte) r5
            r0[r4] = r5
            int r3 = r3 + 1
            r4 = r6
            goto L5f
        L71:
            r7.f7927d = r4
        L73:
            if (r3 >= r1) goto L78
            r7.m22830e(r8, r1, r3)
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.prineside.kryo.FixedOutput.writeString(java.lang.String):void");
    }

    public FixedOutput(int i) {
        this(i, i);
    }

    /* renamed from: c */
    public boolean m22832c(int i) {
        if (this.f7928k - this.f7927d >= i) {
            return false;
        }
        if (i <= this.f7925a) {
            flush();
            while (true) {
                int i2 = this.f7928k;
                if (i2 - this.f7927d >= i) {
                    return true;
                }
                int i3 = this.f7925a;
                if (i2 != i3) {
                    if (i2 == 0) {
                        this.f7928k = 1;
                    }
                    int min = Math.min(this.f7928k * 2, i3);
                    this.f7928k = min;
                    if (min < 0) {
                        this.f7928k = this.f7925a;
                    }
                    byte[] bArr = new byte[this.f7928k];
                    System.arraycopy(this.f7929p, 0, bArr, 0, this.f7927d);
                    this.f7929p = bArr;
                } else {
                    throw new KryoException("Buffer overflow. Available: " + (this.f7928k - this.f7927d) + ", required: " + i);
                }
            }
        } else {
            throw new KryoException("Buffer overflow. Max capacity: " + this.f7925a + ", required: " + i);
        }
    }

    /* renamed from: d */
    public final void m22831d(String str, int i) {
        byte[] bArr = this.f7929p;
        int min = Math.min(i, this.f7928k - this.f7927d);
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + min;
            str.getBytes(i2, i3, bArr, this.f7927d);
            this.f7927d += min;
            min = Math.min(i - i3, this.f7928k);
            if (m22832c(min)) {
                bArr = this.f7929p;
            }
            i2 = i3;
        }
    }

    /* renamed from: e */
    public final void m22830e(CharSequence charSequence, int i, int i2) {
        while (i2 < i) {
            int i3 = this.f7927d;
            int i4 = this.f7928k;
            if (i3 == i4) {
                m22832c(Math.min(i4, i - i2));
            }
            char charAt = charSequence.charAt(i2);
            if (charAt <= 127) {
                byte[] bArr = this.f7929p;
                int i5 = this.f7927d;
                this.f7927d = i5 + 1;
                bArr[i5] = (byte) charAt;
            } else if (charAt > 2047) {
                byte[] bArr2 = this.f7929p;
                int i6 = this.f7927d;
                this.f7927d = i6 + 1;
                bArr2[i6] = (byte) (((charAt >> '\f') & 15) | 224);
                m22832c(2);
                byte[] bArr3 = this.f7929p;
                int i7 = this.f7927d;
                int i8 = i7 + 1;
                bArr3[i7] = (byte) (((charAt >> 6) & 63) | 128);
                this.f7927d = i8 + 1;
                bArr3[i8] = (byte) ((charAt & '?') | 128);
            } else {
                byte[] bArr4 = this.f7929p;
                int i9 = this.f7927d;
                this.f7927d = i9 + 1;
                bArr4[i9] = (byte) (((charAt >> 6) & 31) | 192);
                m22832c(1);
                byte[] bArr5 = this.f7929p;
                int i10 = this.f7927d;
                this.f7927d = i10 + 1;
                bArr5[i10] = (byte) ((charAt & '?') | 128);
            }
            i2++;
        }
    }

    /* renamed from: f */
    public final void m22829f(int i) {
        int i2 = i >>> 6;
        if (i2 == 0) {
            m22832c(1);
            byte[] bArr = this.f7929p;
            int i3 = this.f7927d;
            this.f7927d = i3 + 1;
            bArr[i3] = (byte) (i | 128);
            return;
        }
        int i4 = i >>> 13;
        if (i4 == 0) {
            m22832c(2);
            byte[] bArr2 = this.f7929p;
            int i5 = this.f7927d;
            int i6 = i5 + 1;
            bArr2[i5] = (byte) (i | 64 | 128);
            this.f7927d = i6 + 1;
            bArr2[i6] = (byte) i2;
            return;
        }
        int i7 = i >>> 20;
        if (i7 == 0) {
            m22832c(3);
            byte[] bArr3 = this.f7929p;
            int i8 = this.f7927d;
            int i9 = i8 + 1;
            bArr3[i8] = (byte) (i | 64 | 128);
            int i10 = i9 + 1;
            bArr3[i9] = (byte) (i2 | 128);
            this.f7927d = i10 + 1;
            bArr3[i10] = (byte) i4;
            return;
        }
        int i11 = i >>> 27;
        if (i11 == 0) {
            m22832c(4);
            byte[] bArr4 = this.f7929p;
            int i12 = this.f7927d;
            int i13 = i12 + 1;
            bArr4[i12] = (byte) (i | 64 | 128);
            int i14 = i13 + 1;
            bArr4[i13] = (byte) (i2 | 128);
            int i15 = i14 + 1;
            bArr4[i14] = (byte) (i4 | 128);
            this.f7927d = i15 + 1;
            bArr4[i15] = (byte) i7;
            return;
        }
        m22832c(5);
        byte[] bArr5 = this.f7929p;
        int i16 = this.f7927d;
        int i17 = i16 + 1;
        bArr5[i16] = (byte) (i | 64 | 128);
        int i18 = i17 + 1;
        bArr5[i17] = (byte) (i2 | 128);
        int i19 = i18 + 1;
        bArr5[i18] = (byte) (i4 | 128);
        int i20 = i19 + 1;
        bArr5[i19] = (byte) (i7 | 128);
        this.f7927d = i20 + 1;
        bArr5[i20] = (byte) i11;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        OutputStream outputStream = this.f7930q;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.write(this.f7929p, 0, this.f7927d);
            this.f7926b += this.f7927d;
            this.f7927d = 0;
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    public void setBuffer(byte[] bArr, int i) {
        if (bArr == null) {
            throw new IllegalArgumentException("buffer cannot be null.");
        }
        if (i >= -1) {
            this.f7929p = bArr;
            if (i == -1) {
                i = Integer.MAX_VALUE;
            }
            this.f7925a = i;
            this.f7928k = bArr.length;
            this.f7927d = 0;
            this.f7926b = 0L;
            this.f7930q = null;
            return;
        }
        throw new IllegalArgumentException("maxBufferSize cannot be < -1: " + i);
    }

    public void setOutputStream(OutputStream outputStream) {
        this.f7930q = outputStream;
        this.f7927d = 0;
        this.f7926b = 0L;
    }

    public byte[] toBytes() {
        int i = this.f7927d;
        byte[] bArr = new byte[i];
        System.arraycopy(this.f7929p, 0, bArr, 0, i);
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
                int i = this.f7928k;
                int i2 = this.f7927d;
                if (i - i2 < length) {
                    m22831d(str, length);
                } else {
                    str.getBytes(0, length, this.f7929p, i2);
                    this.f7927d += length;
                }
                byte[] bArr = this.f7929p;
                int i3 = this.f7927d - 1;
                bArr[i3] = (byte) (128 | bArr[i3]);
                return;
            }
            writeByte(130);
            writeByte(str.charAt(0));
            return;
        }
        writeByte(129);
    }

    public void writeBoolean(boolean z) {
        if (this.f7927d == this.f7928k) {
            m22832c(1);
        }
        byte[] bArr = this.f7929p;
        int i = this.f7927d;
        this.f7927d = i + 1;
        bArr[i] = z ? (byte) 1 : (byte) 0;
    }

    public int writeDouble(double d, double d2, boolean z) {
        return writeLong((long) (d * d2), z);
    }

    public int writeFloat(float f, float f2, boolean z) {
        return writeInt((int) (f * f2), z);
    }

    public int writeVarInt(int i, boolean z) {
        if (!z) {
            i = (i >> 31) ^ (i << 1);
        }
        int i2 = i >>> 7;
        if (i2 == 0) {
            m22832c(1);
            byte[] bArr = this.f7929p;
            int i3 = this.f7927d;
            this.f7927d = i3 + 1;
            bArr[i3] = (byte) i;
            return 1;
        }
        int i4 = i >>> 14;
        if (i4 == 0) {
            m22832c(2);
            byte[] bArr2 = this.f7929p;
            int i5 = this.f7927d;
            int i6 = i5 + 1;
            bArr2[i5] = (byte) ((i & 127) | 128);
            this.f7927d = i6 + 1;
            bArr2[i6] = (byte) i2;
            return 2;
        }
        int i7 = i >>> 21;
        if (i7 == 0) {
            m22832c(3);
            byte[] bArr3 = this.f7929p;
            int i8 = this.f7927d;
            int i9 = i8 + 1;
            bArr3[i8] = (byte) ((i & 127) | 128);
            int i10 = i9 + 1;
            bArr3[i9] = (byte) (i2 | 128);
            this.f7927d = i10 + 1;
            bArr3[i10] = (byte) i4;
            return 3;
        }
        int i11 = i >>> 28;
        if (i11 == 0) {
            m22832c(4);
            byte[] bArr4 = this.f7929p;
            int i12 = this.f7927d;
            int i13 = i12 + 1;
            bArr4[i12] = (byte) ((i & 127) | 128);
            int i14 = i13 + 1;
            bArr4[i13] = (byte) (i2 | 128);
            int i15 = i14 + 1;
            bArr4[i14] = (byte) (i4 | 128);
            this.f7927d = i15 + 1;
            bArr4[i15] = (byte) i7;
            return 4;
        }
        m22832c(5);
        byte[] bArr5 = this.f7929p;
        int i16 = this.f7927d;
        int i17 = i16 + 1;
        bArr5[i16] = (byte) ((i & 127) | 128);
        int i18 = i17 + 1;
        bArr5[i17] = (byte) (i2 | 128);
        int i19 = i18 + 1;
        bArr5[i18] = (byte) (i4 | 128);
        int i20 = i19 + 1;
        bArr5[i19] = (byte) (i7 | 128);
        this.f7927d = i20 + 1;
        bArr5[i20] = (byte) i11;
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
            m22832c(1);
            byte[] bArr = this.f7929p;
            int i = this.f7927d;
            this.f7927d = i + 1;
            bArr[i] = (byte) j2;
            return 1;
        }
        long j4 = j2 >>> 14;
        if (j4 == 0) {
            m22832c(2);
            byte[] bArr2 = this.f7929p;
            int i2 = this.f7927d;
            int i3 = i2 + 1;
            bArr2[i2] = (byte) ((j2 & 127) | 128);
            this.f7927d = i3 + 1;
            bArr2[i3] = (byte) j3;
            return 2;
        }
        long j5 = j2 >>> 21;
        if (j5 == 0) {
            m22832c(3);
            byte[] bArr3 = this.f7929p;
            int i4 = this.f7927d;
            int i5 = i4 + 1;
            bArr3[i4] = (byte) ((j2 & 127) | 128);
            int i6 = i5 + 1;
            bArr3[i5] = (byte) (j3 | 128);
            this.f7927d = i6 + 1;
            bArr3[i6] = (byte) j4;
            return 3;
        }
        long j6 = j2 >>> 28;
        if (j6 == 0) {
            m22832c(4);
            byte[] bArr4 = this.f7929p;
            int i7 = this.f7927d;
            int i8 = i7 + 1;
            bArr4[i7] = (byte) ((j2 & 127) | 128);
            int i9 = i8 + 1;
            bArr4[i8] = (byte) (j3 | 128);
            int i10 = i9 + 1;
            bArr4[i9] = (byte) (j4 | 128);
            this.f7927d = i10 + 1;
            bArr4[i10] = (byte) j5;
            return 4;
        }
        long j7 = j2 >>> 35;
        if (j7 == 0) {
            m22832c(5);
            byte[] bArr5 = this.f7929p;
            int i11 = this.f7927d;
            int i12 = i11 + 1;
            bArr5[i11] = (byte) ((j2 & 127) | 128);
            int i13 = i12 + 1;
            bArr5[i12] = (byte) (j3 | 128);
            int i14 = i13 + 1;
            bArr5[i13] = (byte) (j4 | 128);
            int i15 = i14 + 1;
            bArr5[i14] = (byte) (j5 | 128);
            this.f7927d = i15 + 1;
            bArr5[i15] = (byte) j6;
            return 5;
        }
        long j8 = j2 >>> 42;
        if (j8 == 0) {
            m22832c(6);
            byte[] bArr6 = this.f7929p;
            int i16 = this.f7927d;
            int i17 = i16 + 1;
            bArr6[i16] = (byte) ((j2 & 127) | 128);
            int i18 = i17 + 1;
            bArr6[i17] = (byte) (j3 | 128);
            int i19 = i18 + 1;
            bArr6[i18] = (byte) (j4 | 128);
            int i20 = i19 + 1;
            bArr6[i19] = (byte) (j5 | 128);
            int i21 = i20 + 1;
            bArr6[i20] = (byte) (j6 | 128);
            this.f7927d = i21 + 1;
            bArr6[i21] = (byte) j7;
            return 6;
        }
        long j9 = j2 >>> 49;
        if (j9 == 0) {
            m22832c(7);
            byte[] bArr7 = this.f7929p;
            int i22 = this.f7927d;
            int i23 = i22 + 1;
            bArr7[i22] = (byte) ((j2 & 127) | 128);
            int i24 = i23 + 1;
            bArr7[i23] = (byte) (j3 | 128);
            int i25 = i24 + 1;
            bArr7[i24] = (byte) (j4 | 128);
            int i26 = i25 + 1;
            bArr7[i25] = (byte) (j5 | 128);
            int i27 = i26 + 1;
            bArr7[i26] = (byte) (j6 | 128);
            int i28 = i27 + 1;
            bArr7[i27] = (byte) (j7 | 128);
            this.f7927d = i28 + 1;
            bArr7[i28] = (byte) j8;
            return 7;
        }
        long j10 = j2 >>> 56;
        if (j10 == 0) {
            m22832c(8);
            byte[] bArr8 = this.f7929p;
            int i29 = this.f7927d;
            int i30 = i29 + 1;
            bArr8[i29] = (byte) ((j2 & 127) | 128);
            int i31 = i30 + 1;
            bArr8[i30] = (byte) (j3 | 128);
            int i32 = i31 + 1;
            bArr8[i31] = (byte) (j4 | 128);
            int i33 = i32 + 1;
            bArr8[i32] = (byte) (j5 | 128);
            int i34 = i33 + 1;
            bArr8[i33] = (byte) (j6 | 128);
            int i35 = i34 + 1;
            bArr8[i34] = (byte) (j7 | 128);
            int i36 = i35 + 1;
            bArr8[i35] = (byte) (j8 | 128);
            this.f7927d = i36 + 1;
            bArr8[i36] = (byte) j9;
            return 8;
        }
        m22832c(9);
        byte[] bArr9 = this.f7929p;
        int i37 = this.f7927d;
        int i38 = i37 + 1;
        bArr9[i37] = (byte) ((j2 & 127) | 128);
        int i39 = i38 + 1;
        bArr9[i38] = (byte) (j3 | 128);
        int i40 = i39 + 1;
        bArr9[i39] = (byte) (j4 | 128);
        int i41 = i40 + 1;
        bArr9[i40] = (byte) (j5 | 128);
        int i42 = i41 + 1;
        bArr9[i41] = (byte) (j6 | 128);
        int i43 = i42 + 1;
        bArr9[i42] = (byte) (j7 | 128);
        int i44 = i43 + 1;
        bArr9[i43] = (byte) (j8 | 128);
        int i45 = i44 + 1;
        bArr9[i44] = (byte) (j9 | 128);
        this.f7927d = i45 + 1;
        bArr9[i45] = (byte) j10;
        return 9;
    }

    public FixedOutput(int i, int i2) {
        if (i2 >= -1) {
            this.f7928k = i;
            this.f7925a = i2 == -1 ? Integer.MAX_VALUE : i2;
            this.f7929p = new byte[i];
            return;
        }
        throw new IllegalArgumentException("maxBufferSize cannot be < -1: " + i2);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        flush();
        OutputStream outputStream = this.f7930q;
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
        if (this.f7927d == this.f7928k) {
            m22832c(1);
        }
        byte[] bArr = this.f7929p;
        int i2 = this.f7927d;
        this.f7927d = i2 + 1;
        bArr[i2] = (byte) i;
    }

    public void writeBytes(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            int min = Math.min(this.f7928k - this.f7927d, i2);
            while (true) {
                System.arraycopy(bArr, i, this.f7929p, this.f7927d, min);
                this.f7927d += min;
                i2 -= min;
                if (i2 == 0) {
                    return;
                }
                i += min;
                min = Math.min(this.f7928k, i2);
                m22832c(min);
            }
        } else {
            throw new IllegalArgumentException("bytes cannot be null.");
        }
    }

    public void writeInts(int[] iArr) {
        for (int i : iArr) {
            writeInt(i);
        }
    }

    public void writeLongs(long[] jArr) {
        for (long j : jArr) {
            writeLong(j);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        writeBytes(bArr, i, i2);
    }

    public int writeInt(int i, boolean z) {
        return writeVarInt(i, z);
    }

    public FixedOutput(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public FixedOutput(byte[] bArr, int i) {
        if (bArr != null) {
            setBuffer(bArr, i);
            return;
        }
        throw new IllegalArgumentException("buffer cannot be null.");
    }

    public int writeLong(long j, boolean z) {
        return writeVarLong(j, z);
    }

    public FixedOutput(OutputStream outputStream) {
        this(4096, 4096);
        if (outputStream != null) {
            this.f7930q = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }

    public FixedOutput(OutputStream outputStream, int i) {
        this(i, i);
        if (outputStream != null) {
            this.f7930q = outputStream;
            return;
        }
        throw new IllegalArgumentException("outputStream cannot be null.");
    }

    public void writeString(CharSequence charSequence) {
        if (charSequence == null) {
            writeByte(128);
            return;
        }
        int length = charSequence.length();
        if (length == 0) {
            writeByte(129);
            return;
        }
        m22829f(length + 1);
        int i = 0;
        int i2 = this.f7928k;
        int i3 = this.f7927d;
        if (i2 - i3 >= length) {
            byte[] bArr = this.f7929p;
            while (i < length) {
                char charAt = charSequence.charAt(i);
                if (charAt > 127) {
                    break;
                }
                bArr[i3] = (byte) charAt;
                i++;
                i3++;
            }
            this.f7927d = i3;
        }
        if (i < length) {
            m22830e(charSequence, length, i);
        }
    }
}
