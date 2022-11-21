package p203v3;

import android.util.Log;
import java.util.Map;
import p185t3.C6734b;
import p194u3.C6883a;
/* renamed from: v3.e0 */
/* loaded from: classes.dex */
public final class RunnableC7006e0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C6734b f35934a;

    /* renamed from: b */
    public final /* synthetic */ C7009f0 f35935b;

    public RunnableC7006e0(C7009f0 c7009f0, C6734b c6734b) {
        this.f35935b = c7009f0;
        this.f35934a = c6734b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        C6995b c6995b;
        C6883a.InterfaceC6892f interfaceC6892f;
        C6883a.InterfaceC6892f interfaceC6892f2;
        C6883a.InterfaceC6892f interfaceC6892f3;
        C6883a.InterfaceC6892f interfaceC6892f4;
        map = this.f35935b.f35964f.f35955w;
        c6995b = this.f35935b.f35960b;
        C7000c0 c7000c0 = (C7000c0) map.get(c6995b);
        if (c7000c0 == null) {
            return;
        }
        if (this.f35934a.m3524b1()) {
            this.f35935b.f35963e = true;
            interfaceC6892f = this.f35935b.f35959a;
            if (interfaceC6892f.mo1987n()) {
                this.f35935b.m2677h();
                return;
            }
            try {
                interfaceC6892f3 = this.f35935b.f35959a;
                interfaceC6892f4 = this.f35935b.f35959a;
                interfaceC6892f3.mo2648o(null, interfaceC6892f4.mo1945a());
                return;
            } catch (SecurityException e) {
                Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
                interfaceC6892f2 = this.f35935b.f35959a;
                interfaceC6892f2.mo2656b("Failed to get service from broker.");
                c7000c0.m2734p(new C6734b(10), null);
                return;
            }
        }
        c7000c0.m2734p(this.f35934a, null);
    }
}
