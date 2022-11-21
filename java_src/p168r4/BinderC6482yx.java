package p168r4;

import java.util.ArrayList;
import java.util.List;
import p227y2.InterfaceC7406b;
import p227y2.InterfaceC7407c;
/* renamed from: r4.yx */
/* loaded from: classes2.dex */
public final class BinderC6482yx extends m70 {

    /* renamed from: a */
    public final /* synthetic */ C6519zx f34240a;

    public /* synthetic */ BinderC6482yx(C6519zx c6519zx, C6445xx c6445xx) {
        this.f34240a = c6519zx;
    }

    @Override // p168r4.n70
    /* renamed from: c5 */
    public final void mo4540c5(List<g70> list) {
        C6519zx.m4055b(this.f34240a, false);
        C6519zx.m4054c(this.f34240a, true);
        InterfaceC7406b m4049h = C6519zx.m4049h(this.f34240a, list);
        ArrayList m4056a = C6519zx.m4056a(C6519zx.m4053d());
        int size = m4056a.size();
        for (int i = 0; i < size; i++) {
            ((InterfaceC7407c) m4056a.get(i)).onInitializationComplete(m4049h);
        }
        C6519zx.m4056a(C6519zx.m4053d()).clear();
    }
}
