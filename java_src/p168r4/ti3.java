package p168r4;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: r4.ti3 */
/* loaded from: classes2.dex */
public final class ti3 implements c93 {

    /* renamed from: b */
    public static final ThreadLocal<Cipher> f31873b = new si3();

    /* renamed from: a */
    public final SecretKey f31874a;

    @Override // p168r4.c93
    /* renamed from: a */
    public final byte[] mo6807a(byte[] bArr, byte[] bArr2) {
        AlgorithmParameterSpec gCMParameterSpec;
        int length = bArr.length;
        if (length <= 2147483619) {
            byte[] bArr3 = new byte[length + 28];
            byte[] m12766a = bk3.m12766a(12);
            System.arraycopy(m12766a, 0, bArr3, 0, 12);
            int length2 = m12766a.length;
            if (ck3.m12445a() && ck3.m12444b() <= 19) {
                gCMParameterSpec = new IvParameterSpec(m12766a, 0, length2);
            } else {
                gCMParameterSpec = new GCMParameterSpec(128, m12766a, 0, length2);
            }
            ThreadLocal<Cipher> threadLocal = f31873b;
            threadLocal.get().init(1, this.f31874a, gCMParameterSpec);
            int doFinal = threadLocal.get().doFinal(bArr, 0, length, bArr3, 12);
            if (doFinal == length + 16) {
                return bArr3;
            }
            throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - length)));
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    public ti3(byte[] bArr) {
        if (ub3.m6560a(2)) {
            dk3.m12124a(bArr.length);
            this.f31874a = new SecretKeySpec(bArr, "AES");
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }
}
