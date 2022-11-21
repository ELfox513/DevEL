package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.ya3 */
/* loaded from: classes2.dex */
public final class ya3 extends q93<ee3> {
    public ya3() {
        super(ee3.class, new va3(c93.class));
    }

    @Override // p168r4.q93
    /* renamed from: b */
    public final String mo4339b() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // p168r4.q93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ ee3 mo4338c(ll3 ll3Var) {
        return ee3.m11805I(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.q93
    /* renamed from: h */
    public final o93<?, ee3> mo4336h() {
        return new wa3(this, he3.class);
    }

    @Override // p168r4.q93
    /* renamed from: i */
    public final int mo4335i() {
        return 3;
    }

    @Override // p168r4.q93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4337d(ee3 ee3Var) {
        ee3 ee3Var2 = ee3Var;
        dk3.m12123b(ee3Var2.m11808C(), 0);
        dk3.m12124a(ee3Var2.m11806E().mo7747o());
        if (ee3Var2.m11807D().m10051C() != 12 && ee3Var2.m11807D().m10051C() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    /* renamed from: k */
    public static /* synthetic */ n93<he3> m4793k(int i, int i2, int i3) {
        ge3 m10939I = he3.m10939I();
        m10939I.m11186x(i);
        je3 m10050D = ke3.m10050D();
        m10050D.m10298v(16);
        m10939I.m11187v(m10050D.m9614o());
        return new n93<>(m10939I.m9614o(), i3);
    }
}
