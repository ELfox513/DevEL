package com.badlogic.gdx.utils;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.UnsupportedEncodingException;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class Base64Coder {
    public static final CharMap regularMap = new CharMap(SignatureVisitor.EXTENDS, '/');
    public static final CharMap urlsafeMap = new CharMap(SignatureVisitor.SUPER, '_');

    public static byte[] decode(String str) {
        return decode(str.toCharArray());
    }

    public static byte[] decodeLines(String str) {
        return decodeLines(str, regularMap.f6422b);
    }

    public static String decodeString(String str) {
        return decodeString(str, false);
    }

    public static char[] encode(byte[] bArr) {
        return encode(bArr, regularMap.f6421a);
    }

    public static String encodeLines(byte[] bArr) {
        return encodeLines(bArr, 0, bArr.length, 76, "\n", regularMap.f6421a);
    }

    public static String encodeString(String str) {
        return encodeString(str, false);
    }

    /* loaded from: classes.dex */
    public static class CharMap {

        /* renamed from: a */
        public final char[] f6421a = new char[64];

        /* renamed from: b */
        public final byte[] f6422b = new byte[128];

        public byte[] getDecodingMap() {
            return this.f6422b;
        }

        public char[] getEncodingMap() {
            return this.f6421a;
        }

        public CharMap(char c, char c2) {
            char c3 = 'A';
            int i = 0;
            while (c3 <= 'Z') {
                this.f6421a[i] = c3;
                c3 = (char) (c3 + 1);
                i++;
            }
            char c4 = 'a';
            while (c4 <= 'z') {
                this.f6421a[i] = c4;
                c4 = (char) (c4 + 1);
                i++;
            }
            char c5 = '0';
            while (c5 <= '9') {
                this.f6421a[i] = c5;
                c5 = (char) (c5 + 1);
                i++;
            }
            char[] cArr = this.f6421a;
            cArr[i] = c;
            cArr[i + 1] = c2;
            int i2 = 0;
            while (true) {
                byte[] bArr = this.f6422b;
                if (i2 >= bArr.length) {
                    break;
                }
                bArr[i2] = -1;
                i2++;
            }
            for (int i3 = 0; i3 < 64; i3++) {
                this.f6422b[this.f6421a[i3]] = (byte) i3;
            }
        }
    }

    public static byte[] decode(String str, CharMap charMap) {
        return decode(str.toCharArray(), charMap);
    }

    public static byte[] decodeLines(String str, CharMap charMap) {
        return decodeLines(str, charMap.f6422b);
    }

    public static String decodeString(String str, boolean z) {
        return new String(decode(str.toCharArray(), (z ? urlsafeMap : regularMap).f6422b));
    }

    public static char[] encode(byte[] bArr, CharMap charMap) {
        return encode(bArr, 0, bArr.length, charMap);
    }

    public static String encodeLines(byte[] bArr, int i, int i2, int i3, String str, CharMap charMap) {
        return encodeLines(bArr, i, i2, i3, str, charMap.f6421a);
    }

    public static String encodeString(String str, boolean z) {
        try {
            return new String(encode(str.getBytes("UTF-8"), (z ? urlsafeMap : regularMap).f6421a));
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }

    public static byte[] decode(char[] cArr, byte[] bArr) {
        return decode(cArr, 0, cArr.length, bArr);
    }

    public static byte[] decodeLines(String str, byte[] bArr) {
        char[] cArr = new char[str.length()];
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt != ' ' && charAt != '\r' && charAt != '\n' && charAt != '\t') {
                cArr[i] = charAt;
                i++;
            }
        }
        return decode(cArr, 0, i, bArr);
    }

    public static char[] encode(byte[] bArr, char[] cArr) {
        return encode(bArr, 0, bArr.length, cArr);
    }

    public static String encodeLines(byte[] bArr, int i, int i2, int i3, String str, char[] cArr) {
        int i4 = (i3 * 3) / 4;
        if (i4 > 0) {
            StringBuilder stringBuilder = new StringBuilder((((i2 + 2) / 3) * 4) + ((((i2 + i4) - 1) / i4) * str.length()));
            int i5 = 0;
            while (i5 < i2) {
                int min = Math.min(i2 - i5, i4);
                stringBuilder.append(encode(bArr, i + i5, min, cArr));
                stringBuilder.append(str);
                i5 += min;
            }
            return stringBuilder.toString();
        }
        throw new IllegalArgumentException();
    }

    public static byte[] decode(char[] cArr, CharMap charMap) {
        return decode(cArr, 0, cArr.length, charMap);
    }

    public static char[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, i, regularMap.f6421a);
    }

    public static byte[] decode(char[] cArr) {
        return decode(cArr, 0, cArr.length, regularMap.f6422b);
    }

    public static char[] encode(byte[] bArr, int i, int i2, CharMap charMap) {
        return encode(bArr, i, i2, charMap.f6421a);
    }

    public static byte[] decode(char[] cArr, int i, int i2, CharMap charMap) {
        return decode(cArr, i, i2, charMap.f6422b);
    }

    public static char[] encode(byte[] bArr, int i, int i2, char[] cArr) {
        int i3;
        int i4;
        int i5;
        int i6 = ((i2 * 4) + 2) / 3;
        char[] cArr2 = new char[((i2 + 2) / 3) * 4];
        int i7 = i2 + i;
        int i8 = 0;
        while (i < i7) {
            int i9 = i + 1;
            int i10 = bArr[i] & DefaultClassResolver.NAME;
            if (i9 < i7) {
                i3 = i9 + 1;
                i4 = bArr[i9] & DefaultClassResolver.NAME;
            } else {
                i3 = i9;
                i4 = 0;
            }
            if (i3 < i7) {
                i5 = bArr[i3] & DefaultClassResolver.NAME;
                i3++;
            } else {
                i5 = 0;
            }
            int i11 = i10 >>> 2;
            int i12 = ((i10 & 3) << 4) | (i4 >>> 4);
            int i13 = ((i4 & 15) << 2) | (i5 >>> 6);
            int i14 = i5 & 63;
            int i15 = i8 + 1;
            cArr2[i8] = cArr[i11];
            int i16 = i15 + 1;
            cArr2[i15] = cArr[i12];
            char c = SignatureVisitor.INSTANCEOF;
            cArr2[i16] = i16 < i6 ? cArr[i13] : SignatureVisitor.INSTANCEOF;
            int i17 = i16 + 1;
            if (i17 < i6) {
                c = cArr[i14];
            }
            cArr2[i17] = c;
            i8 = i17 + 1;
            i = i3;
        }
        return cArr2;
    }

    public static byte[] decode(char[] cArr, int i, int i2, byte[] bArr) {
        int i3;
        char c;
        int i4;
        char c2;
        if (i2 % 4 == 0) {
            while (i2 > 0 && cArr[(i + i2) - 1] == '=') {
                i2--;
            }
            int i5 = (i2 * 3) / 4;
            byte[] bArr2 = new byte[i5];
            int i6 = i2 + i;
            int i7 = 0;
            while (i < i6) {
                int i8 = i + 1;
                char c3 = cArr[i];
                int i9 = i8 + 1;
                char c4 = cArr[i8];
                if (i9 < i6) {
                    i3 = i9 + 1;
                    c = cArr[i9];
                } else {
                    i3 = i9;
                    c = 'A';
                }
                if (i3 < i6) {
                    i4 = i3 + 1;
                    c2 = cArr[i3];
                } else {
                    i4 = i3;
                    c2 = 'A';
                }
                if (c3 <= 127 && c4 <= 127 && c <= 127 && c2 <= 127) {
                    byte b = bArr[c3];
                    byte b2 = bArr[c4];
                    byte b3 = bArr[c];
                    byte b4 = bArr[c2];
                    if (b >= 0 && b2 >= 0 && b3 >= 0 && b4 >= 0) {
                        int i10 = (b << 2) | (b2 >>> 4);
                        int i11 = ((b2 & 15) << 4) | (b3 >>> 2);
                        int i12 = ((b3 & 3) << 6) | b4;
                        int i13 = i7 + 1;
                        bArr2[i7] = (byte) i10;
                        if (i13 < i5) {
                            bArr2[i13] = (byte) i11;
                            i13++;
                        }
                        if (i13 < i5) {
                            bArr2[i13] = (byte) i12;
                            i7 = i13 + 1;
                        } else {
                            i7 = i13;
                        }
                        i = i4;
                    } else {
                        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
                    }
                } else {
                    throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
                }
            }
            return bArr2;
        }
        throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    }
}
