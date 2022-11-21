package p070g5;

import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: g5.y9 */
/* loaded from: classes2.dex */
public final class C3891y9 implements InterfaceC3688ha {

    /* renamed from: a */
    public final /* synthetic */ C3616ba f17117a;

    public C3891y9(C3616ba c3616ba) {
        this.f17117a = c3616ba;
    }

    @Override // p070g5.InterfaceC3688ha
    /* renamed from: a */
    public final void mo17819a(String str, String str2, Bundle bundle) {
        C3611b5 c3611b5;
        C3611b5 c3611b52;
        if (TextUtils.isEmpty(str)) {
            c3611b5 = this.f17117a.f16294l;
            if (c3611b5 != null) {
                c3611b52 = this.f17117a.f16294l;
                c3611b52.mo17858F().m18018m().m18041b("AppId not known when logging event", "_err");
                return;
            }
            return;
        }
        this.f17117a.mo17855P().m17826u(new RunnableC3879x9(this, str, "_err", bundle));
    }
}
