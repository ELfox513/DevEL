package p168r4;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: r4.wj3 */
/* loaded from: classes2.dex */
public final class wj3 implements cd3 {

    /* renamed from: a */
    public final SecretKey f33206a;

    /* renamed from: b */
    public final byte[] f33207b;

    /* renamed from: c */
    public final byte[] f33208c;

    /* renamed from: b */
    public static Cipher m5707b() {
        if (ub3.m6560a(1)) {
            return kj3.f26443e.m10017b("AES/ECB/NoPadding");
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }

    @Override // p168r4.cd3
    /* renamed from: a */
    public final byte[] mo4663a(byte[] bArr, int i) {
        byte[] m5712d;
        if (i <= 16) {
            Cipher m5707b = m5707b();
            m5707b.init(1, this.f33206a);
            int length = bArr.length;
            double d = length;
            Double.isNaN(d);
            int max = Math.max(1, (int) Math.ceil(d / 16.0d));
            if (max * 16 == length) {
                m5712d = wi3.m5714b(bArr, (max - 1) * 16, this.f33207b, 0, 16);
            } else {
                m5712d = wi3.m5712d(vi3.m6146b(Arrays.copyOfRange(bArr, (max - 1) * 16, length)), this.f33208c);
            }
            byte[] bArr2 = new byte[16];
            for (int i2 = 0; i2 < max - 1; i2++) {
                bArr2 = m5707b.doFinal(wi3.m5714b(bArr2, 0, bArr, i2 * 16, 16));
            }
            return Arrays.copyOf(m5707b.doFinal(wi3.m5712d(m5712d, bArr2)), i);
        }
        throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
    }

    public wj3(byte[] bArr) {
        dk3.m12124a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f33206a = secretKeySpec;
        Cipher m5707b = m5707b();
        m5707b.init(1, secretKeySpec);
        byte[] m6147a = vi3.m6147a(m5707b.doFinal(new byte[16]));
        this.f33207b = m6147a;
        this.f33208c = vi3.m6147a(m6147a);
    }
}
