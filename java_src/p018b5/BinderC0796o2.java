package p018b5;

import android.os.Bundle;
import p070g5.InterfaceC3636d6;
/* renamed from: b5.o2 */
/* loaded from: classes2.dex */
public final class BinderC0796o2 extends AbstractBinderC0727k1 {

    /* renamed from: a */
    public final InterfaceC3636d6 f2078a;

    public BinderC0796o2(InterfaceC3636d6 interfaceC3636d6) {
        this.f2078a = interfaceC3636d6;
    }

    @Override // p018b5.InterfaceC0744l1
    /* renamed from: e */
    public final int mo25561e() {
        return System.identityHashCode(this.f2078a);
    }

    @Override // p018b5.InterfaceC0744l1
    /* renamed from: e1 */
    public final void mo25560e1(String str, String str2, Bundle bundle, long j) {
        this.f2078a.mo3992a(str, str2, bundle, j);
    }
}
