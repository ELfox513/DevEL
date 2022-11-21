package p168r4;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import p016b3.C0543w1;
/* renamed from: r4.y40 */
/* loaded from: classes2.dex */
public final /* synthetic */ class y40 implements u50 {

    /* renamed from: a */
    public static final u50 f33939a = new y40();

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map map) {
        boolean z;
        gt0 gt0Var = (gt0) obj;
        u50<cs0> u50Var = t50.f31689a;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30908S5)).booleanValue()) {
            cm0.m12437f("canOpenAppGmsgHandler disabled.");
            return;
        }
        String str = (String) map.get("package_name");
        if (TextUtils.isEmpty(str)) {
            cm0.m12437f("Package name missing in canOpenApp GMSG.");
            return;
        }
        HashMap hashMap = new HashMap();
        if (gt0Var.getContext().getPackageManager().getLaunchIntentForPackage(str) != null) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        hashMap.put(str, valueOf);
        String obj2 = valueOf.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + obj2.length());
        sb.append("/canOpenApp;");
        sb.append(str);
        sb.append(";");
        sb.append(obj2);
        C0543w1.m26251k(sb.toString());
        ((e80) gt0Var).mo5125H0("openableApp", hashMap);
    }
}
