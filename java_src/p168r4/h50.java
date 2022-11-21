package p168r4;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import java.util.HashMap;
import java.util.Map;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.h50 */
/* loaded from: classes2.dex */
public final class h50 implements u50<cs0> {
    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        cs0 cs0Var2 = cs0Var;
        C7601t.m939d();
        DisplayMetrics m26317f0 = C0497k2.m26317f0((WindowManager) cs0Var2.getContext().getSystemService("window"));
        int i = m26317f0.widthPixels;
        int i2 = m26317f0.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        ((View) cs0Var2).getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        cs0Var2.mo5125H0("locationReady", hashMap);
        cm0.m12437f("GET LOCATION COMPILED");
    }
}
