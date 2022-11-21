package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.qa3 */
/* loaded from: classes2.dex */
public final class qa3 extends o93<rd3, od3> {

    /* renamed from: b */
    public final /* synthetic */ ra3 f30075b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qa3(ra3 ra3Var, Class cls) {
        super(cls);
        this.f30075b = ra3Var;
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(rd3 rd3Var) {
        rd3 rd3Var2 = rd3Var;
        ((ta3) new ua3().mo4336h()).mo5374b(rd3Var2.m7528C());
        new wc3().mo4336h().mo5374b(rd3Var2.m7527D());
        dk3.m12124a(rd3Var2.m7528C().m5361D());
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ od3 mo5372d(rd3 rd3Var) {
        rd3 rd3Var2 = rd3Var;
        new ua3();
        ud3 m6891g = ta3.m6891g(rd3Var2.m7528C());
        ng3 mo5372d = new wc3().mo4336h().mo5372d(rd3Var2.m7527D());
        nd3 m8823J = od3.m8823J();
        m8823J.m9120x(m6891g);
        m8823J.m9119z(mo5372d);
        m8823J.m9121v(0);
        return m8823J.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<rd3>> mo5371e() {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_CTR_HMAC_SHA256", ra3.m7568k(16, 16, 32, 16, 5, 1));
        hashMap.put("AES128_CTR_HMAC_SHA256_RAW", ra3.m7568k(16, 16, 32, 16, 5, 3));
        hashMap.put("AES256_CTR_HMAC_SHA256", ra3.m7568k(32, 16, 32, 32, 5, 1));
        hashMap.put("AES256_CTR_HMAC_SHA256_RAW", ra3.m7568k(32, 16, 32, 32, 5, 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ rd3 mo5373c(ll3 ll3Var) {
        return rd3.m7526E(ll3Var, bm3.m12746a());
    }
}
