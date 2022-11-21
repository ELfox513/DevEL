package p093j1;

import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.C1097k;
import p027c5.C1062a;
/* renamed from: j1.d0 */
/* loaded from: classes.dex */
public final class RunnableC4281d0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Exception f18137a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC4285f f18138b;

    /* renamed from: d */
    public final /* synthetic */ String f18139d;

    public RunnableC4281d0(C1085b c1085b, Exception exc, InterfaceC4285f interfaceC4285f, String str) {
        this.f18137a = exc;
        this.f18138b = interfaceC4285f;
        this.f18139d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f18137a);
        StringBuilder sb = new StringBuilder(valueOf.length() + 30);
        sb.append("Error consuming purchase; ex: ");
        sb.append(valueOf);
        C1062a.m24710l("BillingClient", sb.toString());
        this.f18138b.onConsumeResponse(C1097k.f3062q, this.f18139d);
    }
}
