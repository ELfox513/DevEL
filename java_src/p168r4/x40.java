package p168r4;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import p016b3.C0543w1;
/* renamed from: r4.x40 */
/* loaded from: classes2.dex */
public final /* synthetic */ class x40 implements u50 {

    /* renamed from: a */
    public static final u50 f33442a = new x40();

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map map) {
        String str;
        gt0 gt0Var = (gt0) obj;
        u50<cs0> u50Var = t50.f31689a;
        String str2 = (String) map.get("urls");
        if (TextUtils.isEmpty(str2)) {
            cm0.m12437f("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str2.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = gt0Var.getContext().getPackageManager();
        for (String str3 : split) {
            String[] split2 = str3.split(";", 2);
            String trim = split2[0].trim();
            boolean z = true;
            if (split2.length > 1) {
                str = split2[1].trim();
            } else {
                str = "android.intent.action.VIEW";
            }
            if (packageManager.resolveActivity(new Intent(str, Uri.parse(trim)), 65536) == null) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            hashMap.put(str3, valueOf);
            String obj2 = valueOf.toString();
            StringBuilder sb = new StringBuilder(str3.length() + 14 + obj2.length());
            sb.append("/canOpenURLs;");
            sb.append(str3);
            sb.append(";");
            sb.append(obj2);
            C0543w1.m26251k(sb.toString());
        }
        ((e80) gt0Var).mo5125H0("openableURLs", hashMap);
    }
}
