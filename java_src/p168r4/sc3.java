package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.sc3 */
/* loaded from: classes2.dex */
public final class sc3 extends o93<id3, fd3> {
    public sc3(tc3 tc3Var, Class cls) {
        super(cls);
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ id3 mo5373c(ll3 ll3Var) {
        return id3.m10673E(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(id3 id3Var) {
        id3 id3Var2 = id3Var;
        tc3.m6880m(id3Var2.m10674D());
        tc3.m6879n(id3Var2.m10675C());
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ fd3 mo5372d(id3 id3Var) {
        id3 id3Var2 = id3Var;
        ed3 m11569J = fd3.m11569J();
        m11569J.m11812v(0);
        m11569J.m11811x(ll3.m9632I(bk3.m12766a(id3Var2.m10675C())));
        m11569J.m11810z(id3Var2.m10674D());
        return m11569J.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<id3>> mo5371e() {
        HashMap hashMap = new HashMap();
        hd3 m10672I = id3.m10672I();
        m10672I.m10945v(32);
        kd3 m9676D = ld3.m9676D();
        m9676D.m10059v(16);
        m10672I.m10944x(m9676D.m9614o());
        hashMap.put("AES_CMAC", new n93(m10672I.m9614o(), 1));
        hd3 m10672I2 = id3.m10672I();
        m10672I2.m10945v(32);
        kd3 m9676D2 = ld3.m9676D();
        m9676D2.m10059v(16);
        m10672I2.m10944x(m9676D2.m9614o());
        hashMap.put("AES256_CMAC", new n93(m10672I2.m9614o(), 1));
        hd3 m10672I3 = id3.m10672I();
        m10672I3.m10945v(32);
        kd3 m9676D3 = ld3.m9676D();
        m9676D3.m10059v(16);
        m10672I3.m10944x(m9676D3.m9614o());
        hashMap.put("AES256_CMAC_RAW", new n93(m10672I3.m9614o(), 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
