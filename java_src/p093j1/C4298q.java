package p093j1;

import android.content.Context;
import android.content.IntentFilter;
/* renamed from: j1.q */
/* loaded from: classes.dex */
public final class C4298q {

    /* renamed from: a */
    public final Context f18158a;

    /* renamed from: b */
    public final C4299r f18159b;

    /* renamed from: b */
    public final void m16848b() {
        this.f18159b.m16843c(this.f18158a, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
    }

    /* renamed from: c */
    public final InterfaceC4287g m16847c() {
        return C4299r.m16845a(this.f18159b);
    }

    /* renamed from: d */
    public final void m16846d() {
        this.f18159b.m16844b(this.f18158a);
    }

    public C4298q(Context context, InterfaceC4287g interfaceC4287g) {
        this.f18158a = context;
        this.f18159b = new C4299r(this, interfaceC4287g);
    }
}
