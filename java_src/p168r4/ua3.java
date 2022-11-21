package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.ua3 */
/* loaded from: classes2.dex */
public final class ua3 extends q93<ud3> {
    public ua3() {
        super(ud3.class, new sa3(uj3.class));
    }

    @Override // p168r4.q93
    /* renamed from: b */
    public final String mo4339b() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // p168r4.q93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ud3 mo4338c(ll3 ll3Var) {
        return ud3.m6542I(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.q93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4337d(ud3 ud3Var) {
        m6591l(ud3Var);
    }

    @Override // p168r4.q93
    /* renamed from: h */
    public final o93<?, ud3> mo4336h() {
        return new ta3(this, xd3.class);
    }

    @Override // p168r4.q93
    /* renamed from: i */
    public final int mo4335i() {
        return 3;
    }

    /* renamed from: l */
    public static final void m6591l(ud3 ud3Var) {
        dk3.m12123b(ud3Var.m6545C(), 0);
        dk3.m12124a(ud3Var.m6543E().mo7747o());
        m6590m(ud3Var.m6544D());
    }

    /* renamed from: m */
    public static final void m6590m(be3 be3Var) {
        if (be3Var.m12790C() >= 12 && be3Var.m12790C() <= 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size");
    }
}
