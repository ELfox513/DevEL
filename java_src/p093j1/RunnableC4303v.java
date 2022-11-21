package p093j1;

import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.C1097k;
/* renamed from: j1.v */
/* loaded from: classes.dex */
public final class RunnableC4303v implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC4285f f18164a;

    /* renamed from: b */
    public final /* synthetic */ C4282e f18165b;

    public RunnableC4303v(C1085b c1085b, InterfaceC4285f interfaceC4285f, C4282e c4282e) {
        this.f18164a = interfaceC4285f;
        this.f18165b = c4282e;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18164a.onConsumeResponse(C1097k.f3063r, this.f18165b.m16854a());
    }
}
