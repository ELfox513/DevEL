package p168r4;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: r4.us0 */
/* loaded from: classes2.dex */
public final class us0 implements u50<cs0> {

    /* renamed from: a */
    public final /* synthetic */ xs0 f32365a;

    public us0(xs0 xs0Var) {
        this.f32365a = xs0Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo4240a(cs0 cs0Var, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    synchronized (this.f32365a) {
                        i = this.f32365a.f33725Q;
                        if (i != parseInt) {
                            this.f32365a.f33725Q = parseInt;
                            this.f32365a.requestLayout();
                        }
                    }
                } catch (Exception e) {
                    cm0.m12436g("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
