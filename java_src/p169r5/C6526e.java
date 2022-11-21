package p169r5;

import android.os.Bundle;
import p061f5.C3518a;
import p160q5.InterfaceC5424a;
/* renamed from: r5.e */
/* loaded from: classes2.dex */
public final class C6526e implements C3518a.InterfaceC3519a {

    /* renamed from: a */
    public final /* synthetic */ C6527f f34812a;

    public C6526e(C6527f c6527f) {
        this.f34812a = c6527f;
    }

    @Override // p070g5.InterfaceC3636d6
    /* renamed from: a */
    public final void mo3992a(String str, String str2, Bundle bundle, long j) {
        InterfaceC5424a.InterfaceC5426b interfaceC5426b;
        if (str != null && !str.equals("crash") && C6523b.m3996h(str2)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("name", str2);
            bundle2.putLong("timestampInMillis", j);
            bundle2.putBundle("params", bundle);
            interfaceC5426b = this.f34812a.f34813a;
            interfaceC5426b.mo3425a(3, bundle2);
        }
    }
}
