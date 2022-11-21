package p168r4;

import java.util.Map;
import p004a3.InterfaceC0081v;
/* renamed from: r4.e60 */
/* loaded from: classes2.dex */
public final class e60 implements InterfaceC0081v {

    /* renamed from: a */
    public boolean f22852a = false;

    /* renamed from: b */
    public final /* synthetic */ boolean f22853b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC5812gt f22854c;

    /* renamed from: d */
    public final /* synthetic */ Map f22855d;

    /* renamed from: e */
    public final /* synthetic */ Map f22856e;

    public e60(g60 g60Var, boolean z, InterfaceC5812gt interfaceC5812gt, Map map, Map map2) {
        this.f22853b = z;
        this.f22854c = interfaceC5812gt;
        this.f22855d = map;
        this.f22856e = map2;
    }

    @Override // p004a3.InterfaceC0081v
    /* renamed from: x */
    public final void mo11849x(int i) {
    }

    @Override // p004a3.InterfaceC0081v
    /* renamed from: R */
    public final void mo11850R(boolean z) {
        if (!this.f22852a) {
            if (z && this.f22853b) {
                ((cf1) this.f22854c).mo5096a();
            }
            this.f22852a = true;
            this.f22855d.put((String) this.f22856e.get("event_id"), Boolean.valueOf(z));
            ((e80) this.f22854c).mo5125H0("openIntentAsync", this.f22855d);
        }
    }
}
