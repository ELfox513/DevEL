package p168r4;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* renamed from: r4.oc3 */
/* loaded from: classes2.dex */
public final class oc3 {
    /* renamed from: b */
    public static String m8833b(int i) {
        int i2 = i - 2;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return "HmacSha224";
                        }
                        throw new NoSuchAlgorithmException("hash unsupported for HMAC: ".concat(Integer.toString(kg3.m10038a(i))));
                    }
                    return "HmacSha512";
                }
                return "HmacSha256";
            }
            return "HmacSha384";
        }
        return "HmacSha1";
    }

    /* renamed from: c */
    public static int m8832c(int i) {
        int i2 = i - 2;
        if (i2 != 2) {
            if (i2 == 3) {
                return 2;
            }
            if (i2 == 4) {
                return 3;
            }
            throw new GeneralSecurityException("unknown curve type: ".concat(Integer.toString(ig3.m10661a(i))));
        }
        return 1;
    }

    /* renamed from: d */
    public static int m8831d(int i) {
        int i2 = i - 2;
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                if (i2 == 3) {
                    return 3;
                }
                throw new GeneralSecurityException("unknown point format: ".concat(Integer.toString(lf3.m9669a(i))));
            }
        }
        return i3;
    }

    /* renamed from: a */
    public static void m8834a(uf3 uf3Var) {
        hj3.m10901d(m8832c(uf3Var.m6531C().m11160K()));
        m8833b(uf3Var.m6531C().m11159L());
        if (uf3Var.m6524M() != 2) {
            ja3.m10362g(uf3Var.m6530D().m8804C());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }
}
