package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.db3 */
/* loaded from: classes2.dex */
public final class db3 extends o93<we3, te3> {

    /* renamed from: b */
    public final /* synthetic */ eb3 f22217b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public db3(eb3 eb3Var, Class cls) {
        super(cls);
        this.f22217b = eb3Var;
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ we3 mo5373c(ll3 ll3Var) {
        return we3.m5744D(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(we3 we3Var) {
        dk3.m12124a(we3Var.m5745C());
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ te3 mo5372d(we3 we3Var) {
        se3 m6835I = te3.m6835I();
        m6835I.m7172x(ll3.m9632I(bk3.m12766a(we3Var.m5745C())));
        m6835I.m7173v(0);
        return m6835I.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<we3>> mo5371e() {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_GCM_SIV", eb3.m11826l(16, 1));
        hashMap.put("AES128_GCM_SIV_RAW", eb3.m11826l(16, 3));
        hashMap.put("AES256_GCM_SIV", eb3.m11826l(32, 1));
        hashMap.put("AES256_GCM_SIV_RAW", eb3.m11826l(32, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
