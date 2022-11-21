package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.ab3 */
/* loaded from: classes2.dex */
public final class ab3 extends o93<qe3, ne3> {

    /* renamed from: b */
    public final /* synthetic */ bb3 f20452b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ab3(bb3 bb3Var, Class cls) {
        super(cls);
        this.f20452b = bb3Var;
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ qe3 mo5373c(ll3 ll3Var) {
        return qe3.m7871D(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(qe3 qe3Var) {
        dk3.m12124a(qe3Var.m7872C());
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ ne3 mo5372d(qe3 qe3Var) {
        me3 m9114I = ne3.m9114I();
        m9114I.m9403x(ll3.m9632I(bk3.m12766a(qe3Var.m7872C())));
        m9114I.m9404v(0);
        return m9114I.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<qe3>> mo5371e() {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM", bb3.m12811k(16, 1));
        hashMap.put("AES128_GCM_RAW", bb3.m12811k(16, 3));
        hashMap.put("AES256_GCM", bb3.m12811k(32, 1));
        hashMap.put("AES256_GCM_RAW", bb3.m12811k(32, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
