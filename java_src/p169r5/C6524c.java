package p169r5;

import android.os.Bundle;
import p061f5.C3518a;
import p160q5.InterfaceC5424a;
/* renamed from: r5.c */
/* loaded from: classes2.dex */
public final class C6524c implements C3518a.InterfaceC3519a {

    /* renamed from: a */
    public final /* synthetic */ C6525d f34807a;

    public C6524c(C6525d c6525d) {
        this.f34807a = c6525d;
    }

    @Override // p070g5.InterfaceC3636d6
    /* renamed from: a */
    public final void mo3992a(String str, String str2, Bundle bundle, long j) {
        InterfaceC5424a.InterfaceC5426b interfaceC5426b;
        if (!this.f34807a.f34808a.contains(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("events", C6523b.m4001c(str2));
        interfaceC5426b = this.f34807a.f34809b;
        interfaceC5426b.mo3425a(2, bundle2);
    }
}
