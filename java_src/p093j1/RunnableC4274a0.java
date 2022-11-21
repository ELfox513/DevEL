package p093j1;

import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.C1097k;
/* renamed from: j1.a0 */
/* loaded from: classes.dex */
public final class RunnableC4274a0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC4275b f18115a;

    public RunnableC4274a0(C1085b c1085b, InterfaceC4275b interfaceC4275b) {
        this.f18115a = interfaceC4275b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18115a.onAcknowledgePurchaseResponse(C1097k.f3063r);
    }
}
