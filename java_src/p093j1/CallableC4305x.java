package p093j1;

import android.content.Context;
import android.os.Bundle;
import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.RunnableC1101n;
import java.util.concurrent.Callable;
import p027c5.C1062a;
import p027c5.InterfaceC1064c;
/* renamed from: j1.x */
/* loaded from: classes.dex */
public final class CallableC4305x implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ C4272a f18169a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC4275b f18170b;

    /* renamed from: c */
    public final /* synthetic */ C1085b f18171c;

    public CallableC4305x(C1085b c1085b, C4272a c4272a, InterfaceC4275b interfaceC4275b) {
        this.f18171c = c1085b;
        this.f18169a = c4272a;
        this.f18170b = interfaceC4275b;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a */
    public final Void call() {
        InterfaceC1064c interfaceC1064c;
        Context context;
        String str;
        try {
            interfaceC1064c = this.f18171c.f3004g;
            context = this.f18171c.f3003f;
            String packageName = context.getPackageName();
            String m16879a = this.f18169a.m16879a();
            C4272a c4272a = this.f18169a;
            str = this.f18171c.f2999b;
            Bundle mo24702T6 = interfaceC1064c.mo24702T6(9, packageName, m16879a, C1062a.m24718d(c4272a, str));
            this.f18171c.m24559w(new RunnableC1101n(this, C1062a.m24720b(mo24702T6, "BillingClient"), C1062a.m24711k(mo24702T6, "BillingClient")));
            return null;
        } catch (Exception e) {
            this.f18171c.m24559w(new RunnableC4306y(this, e));
            return null;
        }
    }
}
