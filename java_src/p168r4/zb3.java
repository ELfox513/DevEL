package p168r4;

import java.security.InvalidKeyException;
/* renamed from: r4.zb3 */
/* loaded from: classes2.dex */
public final class zb3 extends q93<ze3> {
    public zb3() {
        super(ze3.class, new wb3(f93.class));
    }

    @Override // p168r4.q93
    /* renamed from: b */
    public final String mo4339b() {
        return "type.googleapis.com/google.crypto.tink.AesSivKey";
    }

    @Override // p168r4.q93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ze3 mo4338c(ll3 ll3Var) {
        return ze3.m4275E(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.q93
    /* renamed from: h */
    public final o93<?, ze3> mo4336h() {
        return new xb3(this, df3.class);
    }

    @Override // p168r4.q93
    /* renamed from: i */
    public final int mo4335i() {
        return 3;
    }

    @Override // p168r4.q93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4337d(ze3 ze3Var) {
        ze3 ze3Var2 = ze3Var;
        dk3.m12123b(ze3Var2.m4277C(), 0);
        if (ze3Var2.m4276D().mo7747o() == 64) {
            return;
        }
        int mo7747o = ze3Var2.m4276D().mo7747o();
        StringBuilder sb = new StringBuilder(61);
        sb.append("invalid key size: ");
        sb.append(mo7747o);
        sb.append(". Valid keys must have 64 bytes.");
        throw new InvalidKeyException(sb.toString());
    }
}
