package p093j1;

import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.C1087c;
import p027c5.C1062a;
/* renamed from: j1.c0 */
/* loaded from: classes.dex */
public final class RunnableC4278c0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC4285f f18118a;

    /* renamed from: b */
    public final /* synthetic */ C1087c f18119b;

    /* renamed from: d */
    public final /* synthetic */ String f18120d;

    public RunnableC4278c0(C1085b c1085b, InterfaceC4285f interfaceC4285f, C1087c c1087c, String str) {
        this.f18118a = interfaceC4285f;
        this.f18119b = c1087c;
        this.f18120d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1062a.m24713i("BillingClient", "Successfully consumed purchase.");
        this.f18118a.onConsumeResponse(this.f18119b, this.f18120d);
    }
}
