package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: r4.ri3 */
/* loaded from: classes2.dex */
public final class ri3 implements c93 {

    /* renamed from: e */
    public static final ThreadLocal<Cipher> f30586e = new pi3();

    /* renamed from: f */
    public static final ThreadLocal<Cipher> f30587f = new qi3();

    /* renamed from: a */
    public final byte[] f30588a;

    /* renamed from: b */
    public final byte[] f30589b;

    /* renamed from: c */
    public final SecretKeySpec f30590c;

    /* renamed from: d */
    public final int f30591d;

    /* renamed from: b */
    public static byte[] m7488b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    /* renamed from: c */
    public static byte[] m7487c(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        while (i < 15) {
            byte b = bArr[i];
            int i2 = i + 1;
            bArr2[i] = (byte) (((b + b) ^ ((bArr[i2] & DefaultClassResolver.NAME) >>> 7)) & 255);
            i = i2;
        }
        byte b2 = bArr[15];
        bArr2[15] = (byte) (((bArr[0] >> 7) & 135) ^ (b2 + b2));
        return bArr2;
    }

    @Override // p168r4.c93
    /* renamed from: a */
    public final byte[] mo6807a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i = this.f30591d;
        if (length <= (Integer.MAX_VALUE - i) - 16) {
            byte[] bArr3 = new byte[i + length + 16];
            byte[] m12766a = bk3.m12766a(i);
            System.arraycopy(m12766a, 0, bArr3, 0, this.f30591d);
            Cipher cipher = f30586e.get();
            cipher.init(1, this.f30590c);
            byte[] m7486d = m7486d(cipher, 0, m12766a, 0, m12766a.length);
            byte[] m7486d2 = m7486d(cipher, 1, bArr2, 0, 0);
            Cipher cipher2 = f30587f.get();
            cipher2.init(1, this.f30590c, new IvParameterSpec(m7486d));
            cipher2.doFinal(bArr, 0, length, bArr3, this.f30591d);
            byte[] m7486d3 = m7486d(cipher, 2, bArr3, this.f30591d, length);
            int i2 = length + this.f30591d;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[i2 + i3] = (byte) ((m7486d2[i3] ^ m7486d[i3]) ^ m7486d3[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    /* renamed from: d */
    public final byte[] m7486d(Cipher cipher, int i, byte[] bArr, int i2, int i3) {
        int length;
        byte[] bArr2;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i;
        if (i3 == 0) {
            return cipher.doFinal(m7488b(bArr3, this.f30588a));
        }
        byte[] doFinal = cipher.doFinal(bArr3);
        int i4 = 0;
        int i5 = 0;
        while (i3 - i5 > 16) {
            for (int i6 = 0; i6 < 16; i6++) {
                doFinal[i6] = (byte) (doFinal[i6] ^ bArr[(i2 + i5) + i6]);
            }
            doFinal = cipher.doFinal(doFinal);
            i5 += 16;
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i5 + i2, i2 + i3);
        if (copyOfRange.length == 16) {
            bArr2 = m7488b(copyOfRange, this.f30588a);
        } else {
            byte[] copyOf = Arrays.copyOf(this.f30589b, 16);
            while (true) {
                length = copyOfRange.length;
                if (i4 >= length) {
                    break;
                }
                copyOf[i4] = (byte) (copyOf[i4] ^ copyOfRange[i4]);
                i4++;
            }
            copyOf[length] = (byte) (copyOf[length] ^ 128);
            bArr2 = copyOf;
        }
        return cipher.doFinal(m7488b(doFinal, bArr2));
    }

    public ri3(byte[] bArr, int i) {
        if (ub3.m6560a(1)) {
            if (i != 12 && i != 16) {
                throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
            }
            this.f30591d = i;
            dk3.m12124a(bArr.length);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            this.f30590c = secretKeySpec;
            Cipher cipher = f30586e.get();
            cipher.init(1, secretKeySpec);
            byte[] m7487c = m7487c(cipher.doFinal(new byte[16]));
            this.f30588a = m7487c;
            this.f30589b = m7487c(m7487c);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }
}
