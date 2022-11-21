package p168r4;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.vc3 */
/* loaded from: classes2.dex */
public final class vc3 extends o93<qg3, ng3> {

    /* renamed from: b */
    public final /* synthetic */ wc3 f32694b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vc3(wc3 wc3Var, Class cls) {
        super(cls);
        this.f32694b = wc3Var;
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ qg3 mo5373c(ll3 ll3Var) {
        return qg3.m7862E(ll3Var, bm3.m12746a());
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(qg3 qg3Var) {
        qg3 qg3Var2 = qg3Var;
        if (qg3Var2.m7863D() >= 16) {
            wc3.m5768n(qg3Var2.m7864C());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ ng3 mo5372d(qg3 qg3Var) {
        qg3 qg3Var2 = qg3Var;
        mg3 m9101J = ng3.m9101J();
        m9101J.m9395v(0);
        m9101J.m9394x(qg3Var2.m7864C());
        m9101J.m9393z(ll3.m9632I(bk3.m12766a(qg3Var2.m7863D())));
        return m9101J.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<qg3>> mo5371e() {
        HashMap hashMap = new HashMap();
        hashMap.put("HMAC_SHA256_128BITTAG", wc3.m5769m(32, 16, 5, 1));
        hashMap.put("HMAC_SHA256_128BITTAG_RAW", wc3.m5769m(32, 16, 5, 3));
        hashMap.put("HMAC_SHA256_256BITTAG", wc3.m5769m(32, 32, 5, 1));
        hashMap.put("HMAC_SHA256_256BITTAG_RAW", wc3.m5769m(32, 32, 5, 3));
        hashMap.put("HMAC_SHA512_128BITTAG", wc3.m5769m(64, 16, 6, 1));
        hashMap.put("HMAC_SHA512_128BITTAG_RAW", wc3.m5769m(64, 16, 6, 3));
        hashMap.put("HMAC_SHA512_256BITTAG", wc3.m5769m(64, 32, 6, 1));
        hashMap.put("HMAC_SHA512_256BITTAG_RAW", wc3.m5769m(64, 32, 6, 3));
        hashMap.put("HMAC_SHA512_512BITTAG", wc3.m5769m(64, 64, 6, 1));
        hashMap.put("HMAC_SHA512_512BITTAG_RAW", wc3.m5769m(64, 64, 6, 3));
        return Collections.unmodifiableMap(hashMap);
    }
}
