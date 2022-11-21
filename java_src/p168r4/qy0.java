package p168r4;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: r4.qy0 */
/* loaded from: classes2.dex */
public final class qy0 implements yx0 {

    /* renamed from: a */
    public final iv1 f30359a;

    public qy0(iv1 iv1Var) {
        this.f30359a = iv1Var;
    }

    @Override // p168r4.yx0
    /* renamed from: a */
    public final void mo4539a(Map<String, String> map) {
        String str = map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f30359a.m10505c(str.equals("true"));
    }
}
