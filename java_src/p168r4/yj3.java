package p168r4;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
/* renamed from: r4.yj3 */
/* loaded from: classes2.dex */
public final class yj3 implements cd3 {

    /* renamed from: a */
    public final ThreadLocal<Mac> f34112a;

    /* renamed from: b */
    public final String f34113b;

    /* renamed from: c */
    public final Key f34114c;

    /* renamed from: d */
    public final int f34115d;

    @Override // p168r4.cd3
    /* renamed from: a */
    public final byte[] mo4663a(byte[] bArr, int i) {
        if (i <= this.f34115d) {
            this.f34112a.get().update(bArr);
            return Arrays.copyOf(this.f34112a.get().doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public yj3(String str, Key key) {
        char c;
        int i;
        String str2;
        xj3 xj3Var = new xj3(this);
        this.f34112a = xj3Var;
        if (ub3.m6560a(2)) {
            this.f34113b = str;
            this.f34114c = key;
            if (key.getEncoded().length >= 16) {
                switch (str.hashCode()) {
                    case -1823053428:
                        if (str.equals("HMACSHA1")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case 392315023:
                        if (str.equals("HMACSHA224")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 392315118:
                        if (str.equals("HMACSHA256")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 392316170:
                        if (str.equals("HMACSHA384")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 392317873:
                        if (str.equals("HMACSHA512")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c != 0) {
                    if (c != 1) {
                        if (c != 2) {
                            if (c != 3) {
                                if (c != 4) {
                                    if (str.length() != 0) {
                                        str2 = "unknown Hmac algorithm: ".concat(str);
                                    } else {
                                        str2 = new String("unknown Hmac algorithm: ");
                                    }
                                    throw new NoSuchAlgorithmException(str2);
                                }
                                this.f34115d = 64;
                                xj3Var.get();
                                return;
                            }
                            i = 48;
                        } else {
                            i = 32;
                        }
                    } else {
                        i = 28;
                    }
                } else {
                    i = 20;
                }
                this.f34115d = i;
                xj3Var.get();
                return;
            }
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }
}
