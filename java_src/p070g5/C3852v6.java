package p070g5;

import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: g5.v6 */
/* loaded from: classes2.dex */
public final class C3852v6 implements InterfaceC3688ha {

    /* renamed from: a */
    public final /* synthetic */ C3697i7 f17009a;

    public C3852v6(C3697i7 c3697i7) {
        this.f17009a = c3697i7;
    }

    @Override // p070g5.InterfaceC3688ha
    /* renamed from: a */
    public final void mo17819a(String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.f17009a.m18217o("auto", "_err", bundle, str);
        } else {
            this.f17009a.m18219m("auto", "_err", bundle);
        }
    }
}
