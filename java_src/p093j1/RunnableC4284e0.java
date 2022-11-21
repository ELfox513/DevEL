package p093j1;

import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.C1087c;
import p027c5.C1062a;
/* renamed from: j1.e0 */
/* loaded from: classes.dex */
public final class RunnableC4284e0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f18142a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC4285f f18143b;

    /* renamed from: d */
    public final /* synthetic */ C1087c f18144d;

    /* renamed from: k */
    public final /* synthetic */ String f18145k;

    public RunnableC4284e0(C1085b c1085b, int i, InterfaceC4285f interfaceC4285f, C1087c c1087c, String str) {
        this.f18142a = i;
        this.f18143b = interfaceC4285f;
        this.f18144d = c1087c;
        this.f18145k = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f18142a;
        StringBuilder sb = new StringBuilder(63);
        sb.append("Error consuming purchase with token. Response code: ");
        sb.append(i);
        C1062a.m24710l("BillingClient", sb.toString());
        this.f18143b.onConsumeResponse(this.f18144d, this.f18145k);
    }
}
