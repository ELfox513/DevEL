package p168r4;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.wa3 */
/* loaded from: classes2.dex */
public final class wa3 extends o93<he3, ee3> {

    /* renamed from: b */
    public final /* synthetic */ ya3 f33148b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wa3(ya3 ya3Var, Class cls) {
        super(cls);
        this.f33148b = ya3Var;
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ he3 mo5373c(ll3 ll3Var) {
        return he3.m10940E(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(he3 he3Var) {
        he3 he3Var2 = he3Var;
        dk3.m12124a(he3Var2.m10941D());
        if (he3Var2.m10942C().m10051C() != 12 && he3Var2.m10942C().m10051C() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ ee3 mo5372d(he3 he3Var) {
        he3 he3Var2 = he3Var;
        de3 m11804J = ee3.m11804J();
        m11804J.m12149z(ll3.m9632I(bk3.m12766a(he3Var2.m10941D())));
        m11804J.m12150x(he3Var2.m10942C());
        m11804J.m12151v(0);
        return m11804J.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<he3>> mo5371e() {
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_EAX", ya3.m4793k(16, 16, 1));
        hashMap.put("AES128_EAX_RAW", ya3.m4793k(16, 16, 3));
        hashMap.put("AES256_EAX", ya3.m4793k(32, 16, 1));
        hashMap.put("AES256_EAX_RAW", ya3.m4793k(32, 16, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
