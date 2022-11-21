package p168r4;

import android.content.Context;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.yu0 */
/* loaded from: classes2.dex */
public final class yu0 implements vr3<zg0> {

    /* renamed from: a */
    public final is3<Context> f34222a;

    public yu0(is3<Context> is3Var) {
        this.f34222a = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final zg0 mo4079a() {
        Context m11050b = ((gu0) this.f34222a).m11050b();
        ea0 m6599a = C7601t.m926q().m6599a(m11050b, im0.m10595X0());
        y90<JSONObject> y90Var = ba0.f20928b;
        m6599a.m11838a("google.afma.request.getAdDictionary", y90Var, y90Var);
        return new yg0(m11050b, C7601t.m926q().m6599a(m11050b, im0.m10595X0()).m11838a("google.afma.sdkConstants.getSdkConstants", y90Var, y90Var));
    }
}
