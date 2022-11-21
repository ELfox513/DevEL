package p203v3;

import android.os.Handler;
import p203v3.ComponentCallbacks2C6998c;
/* renamed from: v3.x */
/* loaded from: classes.dex */
public final class C7056x implements ComponentCallbacks2C6998c.InterfaceC6999a {

    /* renamed from: a */
    public final /* synthetic */ C7008f f36051a;

    public C7056x(C7008f c7008f) {
        this.f36051a = c7008f;
    }

    @Override // p203v3.ComponentCallbacks2C6998c.InterfaceC6999a
    /* renamed from: a */
    public final void mo2586a(boolean z) {
        Handler handler;
        Handler handler2;
        handler = this.f36051a.f35942A;
        handler2 = this.f36051a.f35942A;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z)));
    }
}
