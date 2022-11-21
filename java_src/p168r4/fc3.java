package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.fc3 */
/* loaded from: classes2.dex */
public final class fc3 extends da3<xf3, ag3> {

    /* renamed from: d */
    public static final byte[] f23450d = new byte[0];

    public fc3() {
        super(xf3.class, ag3.class, new dc3(g93.class));
    }

    @Override // p168r4.q93
    /* renamed from: b */
    public final String mo4339b() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // p168r4.q93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ao3 mo4338c(ll3 ll3Var) {
        return xf3.m5326I(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.q93
    /* renamed from: h */
    public final o93<rf3, xf3> mo4336h() {
        return new ec3(this, rf3.class);
    }

    @Override // p168r4.q93
    /* renamed from: i */
    public final int mo4335i() {
        return 4;
    }

    /* renamed from: l */
    public static /* synthetic */ n93<rf3> m11576l(int i, int i2, int i3, l93 l93Var, byte[] bArr, int i4) {
        qf3 m7517E = rf3.m7517E();
        fg3 m11164D = gg3.m11164D();
        int i5 = 4;
        m11164D.m11520x(4);
        m11164D.m11519z(5);
        m11164D.m11521v(ll3.m9632I(bArr));
        gg3 m9614o = m11164D.m9614o();
        yg3 m4254E = zg3.m4254E();
        m4254E.m4721v(l93Var.m9764a());
        m4254E.m4720x(ll3.m9632I(l93Var.m9763b()));
        int m9761d = l93Var.m9761d() - 1;
        if (m9761d != 0) {
            if (m9761d != 1) {
                if (m9761d != 2) {
                    i5 = 6;
                } else {
                    i5 = 5;
                }
            }
        } else {
            i5 = 3;
        }
        m4254E.m4719z(i5);
        nf3 m8803D = of3.m8803D();
        m8803D.m9108v(m4254E.m9614o());
        tf3 m6529E = uf3.m6529E();
        m6529E.m6828v(m9614o);
        m6529E.m6827x(m8803D.m9614o());
        m6529E.m6826z(i3);
        m7517E.m7867v(m6529E.m9614o());
        return new n93<>(m7517E.m9614o(), i4);
    }

    @Override // p168r4.q93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4337d(ao3 ao3Var) {
        xf3 xf3Var = (xf3) ao3Var;
        if (!xf3Var.m5327E().m9634G()) {
            dk3.m12123b(xf3Var.m5329C(), 0);
            oc3.m8834a(xf3Var.m5328D().m13029D());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }
}
