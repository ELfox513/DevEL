package p168r4;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: r4.ky0 */
/* loaded from: classes2.dex */
public final class ky0 implements yx0 {

    /* renamed from: a */
    public final mo2 f26985a;

    public ky0(mo2 mo2Var) {
        this.f26985a = mo2Var;
    }

    @Override // p168r4.yx0
    /* renamed from: a */
    public final void mo4539a(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.f26985a.m9308a(Boolean.parseBoolean(str));
            } catch (Exception unused) {
                throw new IllegalStateException("Invalid render_in_browser state");
            }
        }
    }
}
