package p168r4;

import java.security.GeneralSecurityException;
@Deprecated
/* renamed from: r4.v93 */
/* loaded from: classes2.dex */
public final class v93 {
    @Deprecated
    /* renamed from: a */
    public static final r93 m6197a(byte[] bArr) {
        try {
            jh3 m10283I = jh3.m10283I(bArr, bm3.m12746a());
            for (ih3 ih3Var : m10283I.m10285D()) {
                if (ih3Var.m10658D().m5725M() == 2 || ih3Var.m10658D().m5725M() == 3 || ih3Var.m10658D().m5725M() == 4) {
                    throw new GeneralSecurityException("keyset contains secret key material");
                }
            }
            return r93.m7570a(m10283I);
        } catch (bn3 unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }
}
