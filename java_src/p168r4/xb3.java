package p168r4;

import java.security.InvalidAlgorithmParameterException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.xb3 */
/* loaded from: classes2.dex */
public final class xb3 extends o93<df3, ze3> {

    /* renamed from: b */
    public final /* synthetic */ zb3 f33549b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xb3(zb3 zb3Var, Class cls) {
        super(cls);
        this.f33549b = zb3Var;
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ df3 mo5373c(ll3 ll3Var) {
        return df3.m12143D(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(df3 df3Var) {
        df3 df3Var2 = df3Var;
        if (df3Var2.m12144C() == 64) {
            return;
        }
        int m12144C = df3Var2.m12144C();
        StringBuilder sb = new StringBuilder(61);
        sb.append("invalid key size: ");
        sb.append(m12144C);
        sb.append(". Valid keys must have 64 bytes.");
        throw new InvalidAlgorithmParameterException(sb.toString());
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ ze3 mo5372d(df3 df3Var) {
        ye3 m4274I = ze3.m4274I();
        m4274I.m4743x(ll3.m9632I(bk3.m12766a(df3Var.m12144C())));
        m4274I.m4744v(0);
        return m4274I.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<df3>> mo5371e() {
        HashMap hashMap = new HashMap();
        cf3 m12142E = df3.m12142E();
        m12142E.m12475v(64);
        hashMap.put("AES256_SIV", new n93(m12142E.m9614o(), 1));
        cf3 m12142E2 = df3.m12142E();
        m12142E2.m12475v(64);
        hashMap.put("AES256_SIV_RAW", new n93(m12142E2.m9614o(), 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
