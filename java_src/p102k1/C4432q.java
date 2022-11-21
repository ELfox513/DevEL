package p102k1;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.UTFDataFormatException;
import p111l1.InterfaceC4555b;
/* renamed from: k1.q */
/* loaded from: classes.dex */
public final class C4432q {
    /* renamed from: b */
    public static String m16504b(InterfaceC4555b interfaceC4555b, char[] cArr) {
        int i;
        int i2 = 0;
        while (true) {
            char readByte = (char) (interfaceC4555b.readByte() & DefaultClassResolver.NAME);
            if (readByte == 0) {
                return new String(cArr, 0, i2);
            }
            cArr[i2] = readByte;
            if (readByte < 128) {
                i2++;
            } else {
                if ((readByte & 224) == 192) {
                    int readByte2 = interfaceC4555b.readByte() & DefaultClassResolver.NAME;
                    if ((readByte2 & 192) == 128) {
                        i = i2 + 1;
                        cArr[i2] = (char) (((readByte & 31) << 6) | (readByte2 & 63));
                    } else {
                        throw new UTFDataFormatException("bad second byte");
                    }
                } else if ((readByte & 240) == 224) {
                    int readByte3 = interfaceC4555b.readByte() & DefaultClassResolver.NAME;
                    int readByte4 = interfaceC4555b.readByte() & DefaultClassResolver.NAME;
                    if ((readByte3 & 192) != 128 || (readByte4 & 192) != 128) {
                        break;
                    }
                    i = i2 + 1;
                    cArr[i2] = (char) (((readByte & 15) << 12) | ((readByte3 & 63) << 6) | (readByte4 & 63));
                } else {
                    throw new UTFDataFormatException("bad byte");
                }
                i2 = i;
            }
        }
        throw new UTFDataFormatException("bad second or third byte");
    }

    /* renamed from: d */
    public static byte[] m16502d(String str) {
        byte[] bArr = new byte[(int) m16505a(str, true)];
        m16503c(bArr, 0, str);
        return bArr;
    }

    /* renamed from: a */
    public static long m16505a(String str, boolean z) {
        long j;
        int length = str.length();
        long j2 = 0;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != 0 && charAt <= 127) {
                j = 1;
            } else if (charAt <= 2047) {
                j = 2;
            } else {
                j = 3;
            }
            j2 += j;
            if (z && j2 > 65535) {
                throw new UTFDataFormatException("String more than 65535 UTF bytes long");
            }
        }
        return j2;
    }

    /* renamed from: c */
    public static void m16503c(byte[] bArr, int i, String str) {
        int i2;
        int length = str.length();
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            if (charAt != 0 && charAt <= 127) {
                i2 = i + 1;
                bArr[i] = (byte) charAt;
            } else if (charAt <= 2047) {
                int i4 = i + 1;
                bArr[i] = (byte) (((charAt >> 6) & 31) | 192);
                i = i4 + 1;
                bArr[i4] = (byte) ((charAt & '?') | 128);
            } else {
                int i5 = i + 1;
                bArr[i] = (byte) (((charAt >> '\f') & 15) | 224);
                int i6 = i5 + 1;
                bArr[i5] = (byte) (((charAt >> 6) & 63) | 128);
                i2 = i6 + 1;
                bArr[i6] = (byte) ((charAt & '?') | 128);
            }
            i = i2;
        }
    }
}
