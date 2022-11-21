package p093j1;

import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.C1097k;
/* renamed from: j1.t */
/* loaded from: classes.dex */
public final class RunnableC4301t implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC4289h f18163a;

    public RunnableC4301t(C1085b c1085b, InterfaceC4289h interfaceC4289h) {
        this.f18163a = interfaceC4289h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18163a.onSkuDetailsResponse(C1097k.f3063r, null);
    }
}
