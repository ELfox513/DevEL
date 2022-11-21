package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.qb3 */
/* loaded from: classes2.dex */
public final class qb3 extends o93<mi3, ji3> {

    /* renamed from: b */
    public final /* synthetic */ rb3 f30078b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qb3(rb3 rb3Var, Class cls) {
        super(cls);
        this.f30078b = rb3Var;
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(mi3 mi3Var) {
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ ji3 mo5372d(mi3 mi3Var) {
        ii3 m10276I = ji3.m10276I();
        m10276I.m10637v(0);
        m10276I.m10636x(ll3.m9632I(bk3.m12766a(32)));
        return m10276I.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<mi3>> mo5371e() {
        HashMap hashMap = new HashMap();
        hashMap.put("XCHACHA20_POLY1305", new n93(mi3.m9380D(), 1));
        hashMap.put("XCHACHA20_POLY1305_RAW", new n93(mi3.m9380D(), 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ mi3 mo5373c(ll3 ll3Var) {
        return mi3.m9381C(ll3Var, bm3.m12746a());
    }
}
