package p168r4;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: r4.tb3 */
/* loaded from: classes2.dex */
public final class tb3 implements c93 {

    /* renamed from: b */
    public static final ThreadLocal<Cipher> f31760b = new sb3();

    /* renamed from: a */
    public final SecretKey f31761a;

    @Override // p168r4.c93
    /* renamed from: a */
    public final byte[] mo6807a(byte[] bArr, byte[] bArr2) {
        AlgorithmParameterSpec ivParameterSpec;
        int length = bArr.length;
        if (length <= 2147483619) {
            byte[] bArr3 = new byte[length + 28];
            byte[] m12766a = bk3.m12766a(12);
            System.arraycopy(m12766a, 0, bArr3, 0, 12);
            int length2 = m12766a.length;
            try {
                Class.forName("javax.crypto.spec.GCMParameterSpec");
                ivParameterSpec = new GCMParameterSpec(128, m12766a, 0, length2);
            } catch (ClassNotFoundException unused) {
                if (ck3.m12445a()) {
                    ivParameterSpec = new IvParameterSpec(m12766a, 0, length2);
                } else {
                    throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
                }
            }
            ThreadLocal<Cipher> threadLocal = f31760b;
            threadLocal.get().init(1, this.f31761a, ivParameterSpec);
            int doFinal = threadLocal.get().doFinal(bArr, 0, length, bArr3, 12);
            if (doFinal == length + 16) {
                return bArr3;
            }
            throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - length)));
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    public tb3(byte[] bArr) {
        dk3.m12124a(bArr.length);
        this.f31761a = new SecretKeySpec(bArr, "AES");
    }
}
