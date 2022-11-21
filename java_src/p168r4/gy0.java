package p168r4;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: r4.gy0 */
/* loaded from: classes2.dex */
public final class gy0 implements yx0 {

    /* renamed from: a */
    public final iv1 f24371a;

    public gy0(iv1 iv1Var) {
        this.f24371a = iv1Var;
    }

    @Override // p168r4.yx0
    /* renamed from: a */
    public final void mo4539a(Map<String, String> map) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30805F6)).booleanValue()) {
            return;
        }
        String str = map.get("policy_violations");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f24371a.m10496l(str);
    }
}
