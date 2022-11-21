package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.rb3 */
/* loaded from: classes2.dex */
public final class rb3 extends q93<ji3> {
    public rb3() {
        super(ji3.class, new pb3(c93.class));
    }

    @Override // p168r4.q93
    /* renamed from: b */
    public final String mo4339b() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // p168r4.q93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ji3 mo4338c(ll3 ll3Var) {
        return ji3.m10277E(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.q93
    /* renamed from: h */
    public final o93<?, ji3> mo4336h() {
        return new qb3(this, mi3.class);
    }

    @Override // p168r4.q93
    /* renamed from: i */
    public final int mo4335i() {
        return 3;
    }

    @Override // p168r4.q93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4337d(ji3 ji3Var) {
        ji3 ji3Var2 = ji3Var;
        dk3.m12123b(ji3Var2.m10279C(), 0);
        if (ji3Var2.m10278D().mo7747o() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
    }
}
