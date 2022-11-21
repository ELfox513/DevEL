package p168r4;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: r4.ey0 */
/* loaded from: classes2.dex */
public final class ey0 implements yx0 {

    /* renamed from: a */
    public final iv1 f23210a;

    public ey0(iv1 iv1Var) {
        this.f23210a = iv1Var;
    }

    @Override // p168r4.yx0
    /* renamed from: a */
    public final void mo4539a(Map<String, String> map) {
        char c;
        String str = map.get("gesture");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode != 97520651) {
            if (hashCode == 109399814 && str.equals("shake")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals("flick")) {
                c = 1;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                this.f23210a.m10503e(dv1.NONE);
                return;
            } else {
                this.f23210a.m10503e(dv1.FLICK);
                return;
            }
        }
        this.f23210a.m10503e(dv1.SHAKE);
    }
}
