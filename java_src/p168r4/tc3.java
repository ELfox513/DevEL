package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.tc3 */
/* loaded from: classes2.dex */
public final class tc3 extends q93<fd3> {
    public tc3() {
        super(fd3.class, new rc3(u93.class));
    }

    /* renamed from: n */
    public static void m6879n(int i) {
        if (i != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
    }

    @Override // p168r4.q93
    /* renamed from: b */
    public final String mo4339b() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // p168r4.q93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ fd3 mo4338c(ll3 ll3Var) {
        return fd3.m11570I(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.q93
    /* renamed from: h */
    public final o93<?, fd3> mo4336h() {
        return new sc3(this, id3.class);
    }

    @Override // p168r4.q93
    /* renamed from: i */
    public final int mo4335i() {
        return 3;
    }

    @Override // p168r4.q93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4337d(fd3 fd3Var) {
        fd3 fd3Var2 = fd3Var;
        dk3.m12123b(fd3Var2.m11573C(), 0);
        m6879n(fd3Var2.m11572D().mo7747o());
        m6880m(fd3Var2.m11571E());
    }

    /* renamed from: m */
    public static void m6880m(ld3 ld3Var) {
        if (ld3Var.m9677C() >= 10) {
            if (ld3Var.m9677C() <= 16) {
                return;
            }
            throw new GeneralSecurityException("tag size too long");
        }
        throw new GeneralSecurityException("tag size too short");
    }
}
