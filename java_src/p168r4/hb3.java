package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.hb3 */
/* loaded from: classes2.dex */
public final class hb3 extends q93<gf3> {
    public hb3() {
        super(gf3.class, new fb3(c93.class));
    }

    @Override // p168r4.q93
    /* renamed from: b */
    public final String mo4339b() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // p168r4.q93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ gf3 mo4338c(ll3 ll3Var) {
        return gf3.m11179E(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.q93
    /* renamed from: h */
    public final o93<?, gf3> mo4336h() {
        return new gb3(this, jf3.class);
    }

    @Override // p168r4.q93
    /* renamed from: i */
    public final int mo4335i() {
        return 3;
    }

    @Override // p168r4.q93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4337d(gf3 gf3Var) {
        gf3 gf3Var2 = gf3Var;
        dk3.m12123b(gf3Var2.m11181C(), 0);
        if (gf3Var2.m11180D().mo7747o() == 32) {
            return;
        }
        throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
    }
}
