package p168r4;

import com.prineside.tdi2.Config;
import java.util.Map;
/* renamed from: r4.w50 */
/* loaded from: classes2.dex */
public final class w50 implements u50<cs0> {

    /* renamed from: a */
    public final x50 f33092a;

    public w50(x50 x50Var, byte[] bArr) {
        this.f33092a = x50Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        cs0 cs0Var2 = cs0Var;
        boolean equals = Config.SITE_API_VERSION.equals(map.get("transparentBackground"));
        boolean equals2 = Config.SITE_API_VERSION.equals(map.get("blur"));
        float f = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e) {
            cm0.m12439d("Fail to parse float", e);
        }
        this.f33092a.m5502a(equals);
        this.f33092a.m5501b(equals2, f);
        cs0Var2.mo5112P0(equals);
    }
}
