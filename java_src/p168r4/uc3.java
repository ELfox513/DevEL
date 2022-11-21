package p168r4;

import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: r4.uc3 */
/* loaded from: classes2.dex */
public final class uc3 extends p93<u93, ng3> {
    public uc3(Class cls) {
        super(cls);
    }

    @Override // p168r4.p93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ u93 mo4400b(ng3 ng3Var) {
        ng3 ng3Var2 = ng3Var;
        int m6814K = ng3Var2.m9104D().m6814K();
        SecretKeySpec secretKeySpec = new SecretKeySpec(ng3Var2.m9103E().m9626R(), "HMAC");
        int m6819C = ng3Var2.m9104D().m6819C();
        int i = m6814K - 2;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return new zj3(new yj3("HMACSHA224", secretKeySpec), m6819C);
                        }
                        throw new GeneralSecurityException("unknown hash");
                    }
                    return new zj3(new yj3("HMACSHA512", secretKeySpec), m6819C);
                }
                return new zj3(new yj3("HMACSHA256", secretKeySpec), m6819C);
            }
            return new zj3(new yj3("HMACSHA384", secretKeySpec), m6819C);
        }
        return new zj3(new yj3("HMACSHA1", secretKeySpec), m6819C);
    }
}
