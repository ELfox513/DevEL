package p203v3;

import android.os.Handler;
import p220x3.AbstractC7246c;
/* renamed from: v3.b0 */
/* loaded from: classes.dex */
public final class C6996b0 implements AbstractC7246c.InterfaceC7251e {

    /* renamed from: a */
    public final /* synthetic */ C7000c0 f35905a;

    public C6996b0(C7000c0 c7000c0) {
        this.f35905a = c7000c0;
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7251e
    /* renamed from: O0 */
    public final void mo1977O0() {
        Handler handler;
        handler = this.f35905a.f35924x.f35942A;
        handler.post(new RunnableC6993a0(this));
    }
}
