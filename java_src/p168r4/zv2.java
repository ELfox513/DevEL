package p168r4;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import org.json.JSONObject;
/* renamed from: r4.zv2 */
/* loaded from: classes2.dex */
public final class zv2 implements xv2 {

    /* renamed from: a */
    public final xv2 f34755a;

    public zv2(xv2 xv2Var) {
        this.f34755a = xv2Var;
    }

    @Override // p168r4.xv2
    /* renamed from: c */
    public final JSONObject mo4064c(View view) {
        throw null;
    }

    @Override // p168r4.xv2
    /* renamed from: d */
    public final void mo4063d(View view, JSONObject jSONObject, vv2 vv2Var, boolean z) {
        boolean isAttachedToWindow;
        ArrayList arrayList = new ArrayList();
        nv2 m8988a = nv2.m8988a();
        if (m8988a != null) {
            Collection<cv2> m8983f = m8988a.m8983f();
            int size = m8983f.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            for (cv2 cv2Var : m8983f) {
                View m12340i = cv2Var.m12340i();
                if (m12340i != null) {
                    if (Build.VERSION.SDK_INT >= 19) {
                        isAttachedToWindow = m12340i.isAttachedToWindow();
                        if (isAttachedToWindow) {
                        }
                    }
                    if (m12340i.isShown()) {
                        View view2 = m12340i;
                        while (true) {
                            if (view2 != null) {
                                if (view2.getAlpha() != 0.0f) {
                                    ViewParent parent = view2.getParent();
                                    if (parent instanceof View) {
                                        view2 = (View) parent;
                                    } else {
                                        view2 = null;
                                    }
                                }
                            } else {
                                View rootView = m12340i.getRootView();
                                if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                    identityHashMap.put(rootView, rootView);
                                    float m10163a = jw2.m10163a(rootView);
                                    int size2 = arrayList.size();
                                    while (size2 > 0) {
                                        int i = size2 - 1;
                                        if (jw2.m10163a((View) arrayList.get(i)) <= m10163a) {
                                            break;
                                        }
                                        size2 = i;
                                    }
                                    arrayList.add(size2, rootView);
                                }
                            }
                        }
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i2 = 0; i2 < size3; i2++) {
            vv2Var.mo5988a((View) arrayList.get(i2), this.f34755a, jSONObject);
        }
    }
}
