package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.wc3 */
/* loaded from: classes2.dex */
public final class wc3 extends q93<ng3> {
    public wc3() {
        super(ng3.class, new uc3(u93.class));
    }

    @Override // p168r4.q93
    /* renamed from: b */
    public final String mo4339b() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // p168r4.q93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ng3 mo4338c(ll3 ll3Var) {
        return ng3.m9102I(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.q93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4337d(ng3 ng3Var) {
        m5770l(ng3Var);
    }

    @Override // p168r4.q93
    /* renamed from: h */
    public final o93<?, ng3> mo4336h() {
        return new vc3(this, qg3.class);
    }

    @Override // p168r4.q93
    /* renamed from: i */
    public final int mo4335i() {
        return 3;
    }

    @Override // p168r4.q93
    /* renamed from: j */
    public final int mo5772j() {
        return 2;
    }

    /* renamed from: m */
    public static /* synthetic */ n93<qg3> m5769m(int i, int i2, int i3, int i4) {
        pg3 m7861I = qg3.m7861I();
        sg3 m6818D = tg3.m6818D();
        m6818D.m7162x(i3);
        m6818D.m7163v(i2);
        m7861I.m8329v(m6818D.m9614o());
        m7861I.m8328x(i);
        return new n93<>(m7861I.m9614o(), i4);
    }

    /* renamed from: l */
    public static final void m5770l(ng3 ng3Var) {
        dk3.m12123b(ng3Var.m9105C(), 0);
        if (ng3Var.m9103E().mo7747o() >= 16) {
            m5768n(ng3Var.m9104D());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    /* renamed from: n */
    public static void m5768n(tg3 tg3Var) {
        if (tg3Var.m6819C() >= 10) {
            int m6814K = tg3Var.m6814K() - 2;
            if (m6814K != 1) {
                if (m6814K != 2) {
                    if (m6814K != 3) {
                        if (m6814K != 4) {
                            if (m6814K == 5) {
                                if (tg3Var.m6819C() > 28) {
                                    throw new GeneralSecurityException("tag size too big");
                                }
                                return;
                            }
                            throw new GeneralSecurityException("unknown hash type");
                        } else if (tg3Var.m6819C() > 64) {
                            throw new GeneralSecurityException("tag size too big");
                        } else {
                            return;
                        }
                    } else if (tg3Var.m6819C() > 32) {
                        throw new GeneralSecurityException("tag size too big");
                    } else {
                        return;
                    }
                } else if (tg3Var.m6819C() > 48) {
                    throw new GeneralSecurityException("tag size too big");
                } else {
                    return;
                }
            } else if (tg3Var.m6819C() <= 20) {
                return;
            } else {
                throw new GeneralSecurityException("tag size too big");
            }
        }
        throw new GeneralSecurityException("tag size too small");
    }
}
