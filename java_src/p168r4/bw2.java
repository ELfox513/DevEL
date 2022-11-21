package p168r4;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import org.json.JSONObject;
/* renamed from: r4.bw2 */
/* loaded from: classes2.dex */
public final class bw2 implements xv2 {

    /* renamed from: a */
    public final int[] f21251a = new int[2];

    @Override // p168r4.xv2
    /* renamed from: c */
    public final JSONObject mo4064c(View view) {
        if (view == null) {
            return gw2.m11045b(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f21251a);
        int[] iArr = this.f21251a;
        return gw2.m11045b(iArr[0], iArr[1], width, height);
    }

    @Override // p168r4.xv2
    /* renamed from: d */
    public final void mo4063d(View view, JSONObject jSONObject, vv2 vv2Var, boolean z) {
        int i;
        float z2;
        float z3;
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (z && Build.VERSION.SDK_INT >= 21) {
            HashMap hashMap = new HashMap();
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                z2 = childAt.getZ();
                ArrayList arrayList = (ArrayList) hashMap.get(Float.valueOf(z2));
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    z3 = childAt.getZ();
                    hashMap.put(Float.valueOf(z3), arrayList);
                }
                arrayList.add(childAt);
            }
            ArrayList arrayList2 = new ArrayList(hashMap.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                ArrayList arrayList3 = (ArrayList) hashMap.get((Float) arrayList2.get(i3));
                int size2 = arrayList3.size();
                int i4 = 0;
                while (true) {
                    i = i3 + 1;
                    if (i4 < size2) {
                        vv2Var.mo5988a((View) arrayList3.get(i4), this, jSONObject);
                        i4++;
                    }
                }
                i3 = i;
            }
            return;
        }
        for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
            vv2Var.mo5988a(viewGroup.getChildAt(i5), this, jSONObject);
        }
    }
}
