package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.gb3 */
/* loaded from: classes2.dex */
public final class gb3 extends o93<jf3, gf3> {

    /* renamed from: b */
    public final /* synthetic */ hb3 f23957b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gb3(hb3 hb3Var, Class cls) {
        super(cls);
        this.f23957b = hb3Var;
    }

    @Override // p168r4.o93
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo5374b(jf3 jf3Var) {
    }

    @Override // p168r4.o93
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ gf3 mo5372d(jf3 jf3Var) {
        ff3 m11178I = gf3.m11178I();
        m11178I.m11523v(0);
        m11178I.m11522x(ll3.m9632I(bk3.m12766a(32)));
        return m11178I.m9614o();
    }

    @Override // p168r4.o93
    /* renamed from: e */
    public final Map<String, n93<jf3>> mo5371e() {
        HashMap hashMap = new HashMap();
        hashMap.put("CHACHA20_POLY1305", new n93(jf3.m10295D(), 1));
        hashMap.put("CHACHA20_POLY1305_RAW", new n93(jf3.m10295D(), 3));
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // p168r4.o93
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ jf3 mo5373c(ll3 ll3Var) {
        return jf3.m10296C(ll3Var, bm3.m12746a());
    }
}
