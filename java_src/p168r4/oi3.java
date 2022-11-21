package p168r4;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: r4.oi3 */
/* loaded from: classes2.dex */
public final class oi3 implements uj3 {

    /* renamed from: d */
    public static final ThreadLocal<Cipher> f29007d = new ni3();

    /* renamed from: a */
    public final SecretKeySpec f29008a;

    /* renamed from: b */
    public final int f29009b;

    /* renamed from: c */
    public final int f29010c;

    @Override // p168r4.uj3
    /* renamed from: a */
    public final byte[] mo4690a(byte[] bArr) {
        int length = bArr.length;
        int i = this.f29009b;
        int i2 = Integer.MAX_VALUE - i;
        if (length <= i2) {
            byte[] bArr2 = new byte[i + length];
            byte[] m12766a = bk3.m12766a(i);
            System.arraycopy(m12766a, 0, bArr2, 0, this.f29009b);
            int i3 = this.f29009b;
            Cipher cipher = f29007d.get();
            byte[] bArr3 = new byte[this.f29010c];
            System.arraycopy(m12766a, 0, bArr3, 0, this.f29009b);
            cipher.init(1, this.f29008a, new IvParameterSpec(bArr3));
            if (cipher.doFinal(bArr, 0, length, bArr2, i3) == length) {
                return bArr2;
            }
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        StringBuilder sb = new StringBuilder(43);
        sb.append("plaintext length can not exceed ");
        sb.append(i2);
        throw new GeneralSecurityException(sb.toString());
    }

    public oi3(byte[] bArr, int i) {
        if (ub3.m6560a(2)) {
            dk3.m12124a(bArr.length);
            this.f29008a = new SecretKeySpec(bArr, "AES");
            int blockSize = f29007d.get().getBlockSize();
            this.f29010c = blockSize;
            if (i >= 12 && i <= blockSize) {
                this.f29009b = i;
                return;
            }
            throw new GeneralSecurityException("invalid IV size");
        }
        throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
    }
}
