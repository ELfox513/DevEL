package com.prineside.tdi2.ibxm;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public class Data {

    /* renamed from: a */
    public int f9428a;

    /* renamed from: b */
    public byte[] f9429b;

    /* renamed from: c */
    public InputStream f9430c;

    public Data(InputStream inputStream) {
        this.f9428a = 65536;
        byte[] bArr = new byte[65536];
        this.f9429b = bArr;
        this.f9430c = inputStream;
        m21753b(inputStream, bArr, 0, 65536);
    }

    /* renamed from: b */
    public static void m21753b(InputStream inputStream, byte[] bArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = 1;
        while (i4 > 0) {
            i4 = inputStream.read(bArr, i, i3 - i);
            i += i4;
        }
    }

    public byte sByte(int i) {
        m21754a(i, 1);
        return this.f9429b[i];
    }

    public int uByte(int i) {
        m21754a(i, 1);
        return this.f9429b[i] & DefaultClassResolver.NAME;
    }

    public int ubeShort(int i) {
        m21754a(i, 2);
        byte[] bArr = this.f9429b;
        return (bArr[i + 1] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 8);
    }

    public int uleInt(int i) {
        m21754a(i, 4);
        byte[] bArr = this.f9429b;
        return ((bArr[i + 3] & Byte.MAX_VALUE) << 24) | (bArr[i] & DefaultClassResolver.NAME) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 16);
    }

    public int uleShort(int i) {
        m21754a(i, 2);
        byte[] bArr = this.f9429b;
        return ((bArr[i + 1] & DefaultClassResolver.NAME) << 8) | (bArr[i] & DefaultClassResolver.NAME);
    }

    /* renamed from: a */
    public final void m21754a(int i, int i2) {
        while (true) {
            int i3 = i + i2;
            int i4 = this.f9428a;
            if (i3 > i4) {
                int i5 = i4 << 1;
                byte[] bArr = new byte[i5];
                System.arraycopy(this.f9429b, 0, bArr, 0, i4);
                InputStream inputStream = this.f9430c;
                if (inputStream != null) {
                    int i6 = this.f9428a;
                    m21753b(inputStream, bArr, i6, i5 - i6);
                }
                this.f9428a = i5;
                this.f9429b = bArr;
            } else {
                return;
            }
        }
    }

    public short[] samS16(int i, int i2) {
        m21754a(i, i2 * 2);
        short[] sArr = new short[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr = this.f9429b;
            int i4 = (i3 * 2) + i;
            sArr[i3] = (short) ((bArr[i4 + 1] << 8) | (bArr[i4] & DefaultClassResolver.NAME));
        }
        return sArr;
    }

    public short[] samS16D(int i, int i2) {
        m21754a(i, i2 * 2);
        short[] sArr = new short[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr = this.f9429b;
            int i5 = (i4 * 2) + i;
            i3 += (bArr[i5 + 1] << 8) | (bArr[i5] & DefaultClassResolver.NAME);
            sArr[i4] = (short) i3;
        }
        return sArr;
    }

    public short[] samU16(int i, int i2) {
        m21754a(i, i2 * 2);
        short[] sArr = new short[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr = this.f9429b;
            int i4 = (i3 * 2) + i;
            sArr[i3] = (short) ((((bArr[i4 + 1] & DefaultClassResolver.NAME) << 8) | (bArr[i4] & DefaultClassResolver.NAME)) - 32768);
        }
        return sArr;
    }

    public short[] samS8(int i, int i2) {
        m21754a(i, i2);
        short[] sArr = new short[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            sArr[i3] = (short) (this.f9429b[i + i3] << 8);
        }
        return sArr;
    }

    public short[] samS8D(int i, int i2) {
        m21754a(i, i2);
        short[] sArr = new short[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += this.f9429b[i + i4];
            sArr[i4] = (short) (i3 << 8);
        }
        return sArr;
    }

    public short[] samU8(int i, int i2) {
        m21754a(i, i2);
        short[] sArr = new short[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            sArr[i3] = (short) (((this.f9429b[i + i3] & DefaultClassResolver.NAME) - 128) << 8);
        }
        return sArr;
    }

    public String strCp850(int i, int i2) {
        m21754a(i, i2);
        try {
            char[] charArray = new String(this.f9429b, i, i2, "Cp850").toCharArray();
            for (int i3 = 0; i3 < charArray.length; i3++) {
                char c = charArray[i3];
                if (c < ' ') {
                    c = ' ';
                }
                charArray[i3] = c;
            }
            return new String(charArray);
        } catch (UnsupportedEncodingException unused) {
            return strLatin1(i, i2);
        }
    }

    public String strLatin1(int i, int i2) {
        m21754a(i, i2);
        char[] cArr = new char[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.f9429b[i + i3] & DefaultClassResolver.NAME;
            char c = ' ';
            if (i4 >= 32) {
                c = (char) i4;
            }
            cArr[i3] = c;
        }
        return new String(cArr);
    }

    public Data(byte[] bArr) {
        this.f9428a = bArr.length;
        this.f9429b = bArr;
    }
}
