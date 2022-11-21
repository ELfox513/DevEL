package p168r4;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.Collection;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: r4.ui3 */
/* loaded from: classes2.dex */
public final class ui3 implements f93 {

    /* renamed from: c */
    public static final Collection<Integer> f32290c = Arrays.asList(64);

    /* renamed from: d */
    public static final byte[] f32291d = new byte[16];

    /* renamed from: a */
    public final wj3 f32292a;

    /* renamed from: b */
    public final byte[] f32293b;

    @Override // p168r4.f93
    /* renamed from: a */
    public final byte[] mo6512a(byte[] bArr, byte[] bArr2) {
        byte[] m5712d;
        if (bArr.length <= 2147483631) {
            Cipher m10017b = kj3.f26443e.m10017b("AES/CTR/NoPadding");
            byte[][] bArr3 = {bArr2, bArr};
            byte[] mo4663a = this.f32292a.mo4663a(f32291d, 16);
            for (int i = 0; i <= 0; i++) {
                byte[] bArr4 = bArr3[i];
                if (bArr4 == null) {
                    bArr4 = new byte[0];
                }
                mo4663a = wi3.m5712d(vi3.m6147a(mo4663a), this.f32292a.mo4663a(bArr4, 16));
            }
            byte[] bArr5 = bArr3[1];
            int length = bArr5.length;
            if (length >= 16) {
                int length2 = mo4663a.length;
                if (length >= length2) {
                    int i2 = length - length2;
                    m5712d = Arrays.copyOf(bArr5, length);
                    for (int i3 = 0; i3 < mo4663a.length; i3++) {
                        int i4 = i2 + i3;
                        m5712d[i4] = (byte) (m5712d[i4] ^ mo4663a[i3]);
                    }
                } else {
                    throw new IllegalArgumentException("xorEnd requires a.length >= b.length");
                }
            } else {
                m5712d = wi3.m5712d(vi3.m6146b(bArr5), vi3.m6147a(mo4663a));
            }
            byte[] mo4663a2 = this.f32292a.mo4663a(m5712d, 16);
            byte[] bArr6 = (byte[]) mo4663a2.clone();
            bArr6[8] = (byte) (bArr6[8] & Byte.MAX_VALUE);
            bArr6[12] = (byte) (bArr6[12] & Byte.MAX_VALUE);
            m10017b.init(1, new SecretKeySpec(this.f32293b, "AES"), new IvParameterSpec(bArr6));
            return wi3.m5715a(mo4663a2, m10017b.doFinal(bArr));
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    public ui3(byte[] bArr) {
        if (ub3.m6560a(1)) {
            Collection<Integer> collection = f32290c;
            int length = bArr.length;
            if (collection.contains(Integer.valueOf(length))) {
                int i = length >> 1;
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, i);
                this.f32293b = Arrays.copyOfRange(bArr, i, length);
                this.f32292a = new wj3(copyOfRange);
                return;
            }
            StringBuilder sb = new StringBuilder(59);
            sb.append("invalid key size: ");
            sb.append(length);
            sb.append(" bytes; key must have 64 bytes");
            throw new InvalidKeyException(sb.toString());
        }
        throw new GeneralSecurityException("Can not use AES-SIV in FIPS-mode.");
    }
}
