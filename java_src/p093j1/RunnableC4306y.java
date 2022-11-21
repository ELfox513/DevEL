package p093j1;

import com.android.billingclient.api.C1097k;
import p027c5.C1062a;
/* renamed from: j1.y */
/* loaded from: classes.dex */
public final class RunnableC4306y implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Exception f18172a;

    /* renamed from: b */
    public final /* synthetic */ CallableC4305x f18173b;

    public RunnableC4306y(CallableC4305x callableC4305x, Exception exc) {
        this.f18173b = callableC4305x;
        this.f18172a = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f18172a);
        StringBuilder sb = new StringBuilder(valueOf.length() + 32);
        sb.append("Error acknowledge purchase; ex: ");
        sb.append(valueOf);
        C1062a.m24710l("BillingClient", sb.toString());
        this.f18173b.f18170b.onAcknowledgePurchaseResponse(C1097k.f3062q);
    }
}
