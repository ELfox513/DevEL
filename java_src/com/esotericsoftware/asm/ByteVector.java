package com.esotericsoftware.asm;

import com.badlogic.gdx.graphics.g3d.utils.MeshBuilder;
/* loaded from: classes.dex */
public class ByteVector {

    /* renamed from: a */
    public byte[] f6985a;

    /* renamed from: b */
    public int f6986b;

    public ByteVector() {
        this.f6985a = new byte[64];
    }

    public ByteVector(int i) {
        this.f6985a = new byte[i];
    }

    /* renamed from: a */
    public ByteVector m23424a(int i, int i2) {
        int i3 = this.f6986b;
        if (i3 + 2 > this.f6985a.length) {
            m23423b(2);
        }
        byte[] bArr = this.f6985a;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        bArr[i4] = (byte) i2;
        this.f6986b = i4 + 1;
        return this;
    }

    /* renamed from: b */
    public final void m23423b(int i) {
        byte[] bArr = this.f6985a;
        int length = bArr.length * 2;
        int i2 = this.f6986b;
        int i3 = i + i2;
        if (length <= i3) {
            length = i3;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        this.f6985a = bArr2;
    }

    /* renamed from: c */
    public ByteVector m23422c(int i, int i2) {
        int i3 = this.f6986b;
        if (i3 + 3 > this.f6985a.length) {
            m23423b(3);
        }
        byte[] bArr = this.f6985a;
        int i4 = i3 + 1;
        bArr[i3] = (byte) i;
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        bArr[i5] = (byte) i2;
        this.f6986b = i5 + 1;
        return this;
    }

    /* renamed from: d */
    public ByteVector m23421d(String str, int i, int i2) {
        int i3;
        int length = str.length();
        int i4 = i;
        int i5 = i4;
        while (i4 < length) {
            char charAt = str.charAt(i4);
            i5 = (charAt < 1 || charAt > 127) ? charAt > 2047 ? i5 + 3 : i5 + 2 : i5 + 1;
            i4++;
        }
        if (i5 <= i2) {
            int i6 = this.f6986b;
            int i7 = (i6 - i) - 2;
            if (i7 >= 0) {
                byte[] bArr = this.f6985a;
                bArr[i7] = (byte) (i5 >>> 8);
                bArr[i7 + 1] = (byte) i5;
            }
            if ((i6 + i5) - i > this.f6985a.length) {
                m23423b(i5 - i);
            }
            int i8 = this.f6986b;
            while (i < length) {
                char charAt2 = str.charAt(i);
                if (charAt2 < 1 || charAt2 > 127) {
                    byte[] bArr2 = this.f6985a;
                    int i9 = i8 + 1;
                    if (charAt2 > 2047) {
                        bArr2[i8] = (byte) (((charAt2 >> '\f') & 15) | 224);
                        int i10 = i9 + 1;
                        bArr2[i9] = (byte) (((charAt2 >> 6) & 63) | 128);
                        i3 = i10 + 1;
                        bArr2[i10] = (byte) ((charAt2 & '?') | 128);
                    } else {
                        bArr2[i8] = (byte) (((charAt2 >> 6) & 31) | 192);
                        i8 = i9 + 1;
                        bArr2[i9] = (byte) ((charAt2 & '?') | 128);
                        i++;
                    }
                } else {
                    i3 = i8 + 1;
                    this.f6985a[i8] = (byte) charAt2;
                }
                i8 = i3;
                i++;
            }
            this.f6986b = i8;
            return this;
        }
        throw new IllegalArgumentException();
    }

    public ByteVector putByte(int i) {
        int i2 = this.f6986b;
        int i3 = i2 + 1;
        if (i3 > this.f6985a.length) {
            m23423b(1);
        }
        this.f6985a[i2] = (byte) i;
        this.f6986b = i3;
        return this;
    }

    public ByteVector putByteArray(byte[] bArr, int i, int i2) {
        if (this.f6986b + i2 > this.f6985a.length) {
            m23423b(i2);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i, this.f6985a, this.f6986b, i2);
        }
        this.f6986b += i2;
        return this;
    }

    public ByteVector putInt(int i) {
        int i2 = this.f6986b;
        if (i2 + 4 > this.f6985a.length) {
            m23423b(4);
        }
        byte[] bArr = this.f6985a;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i >>> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i >>> 8);
        bArr[i5] = (byte) i;
        this.f6986b = i5 + 1;
        return this;
    }

    public ByteVector putLong(long j) {
        int i = this.f6986b;
        if (i + 8 > this.f6985a.length) {
            m23423b(8);
        }
        byte[] bArr = this.f6985a;
        int i2 = (int) (j >>> 32);
        int i3 = i + 1;
        bArr[i] = (byte) (i2 >>> 24);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (i2 >>> 16);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (i2 >>> 8);
        int i6 = i5 + 1;
        bArr[i5] = (byte) i2;
        int i7 = (int) j;
        int i8 = i6 + 1;
        bArr[i6] = (byte) (i7 >>> 24);
        int i9 = i8 + 1;
        bArr[i8] = (byte) (i7 >>> 16);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i7 >>> 8);
        bArr[i10] = (byte) i7;
        this.f6986b = i10 + 1;
        return this;
    }

    public ByteVector putShort(int i) {
        int i2 = this.f6986b;
        if (i2 + 2 > this.f6985a.length) {
            m23423b(2);
        }
        byte[] bArr = this.f6985a;
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i >>> 8);
        bArr[i3] = (byte) i;
        this.f6986b = i3 + 1;
        return this;
    }

    public ByteVector putUTF8(String str) {
        int length = str.length();
        if (length <= 65535) {
            int i = this.f6986b;
            if (i + 2 + length > this.f6985a.length) {
                m23423b(length + 2);
            }
            byte[] bArr = this.f6985a;
            int i2 = i + 1;
            bArr[i] = (byte) (length >>> 8);
            int i3 = i2 + 1;
            bArr[i2] = (byte) length;
            int i4 = 0;
            while (i4 < length) {
                char charAt = str.charAt(i4);
                if (charAt < 1 || charAt > 127) {
                    this.f6986b = i3;
                    return m23421d(str, i4, MeshBuilder.MAX_INDEX);
                }
                bArr[i3] = (byte) charAt;
                i4++;
                i3++;
            }
            this.f6986b = i3;
            return this;
        }
        throw new IllegalArgumentException();
    }
}
