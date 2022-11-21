package p093j1;

import android.content.Context;
import android.os.Bundle;
import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.SkuDetails;
import java.util.concurrent.Callable;
import p027c5.InterfaceC1064c;
/* renamed from: j1.j */
/* loaded from: classes.dex */
public final class CallableC4291j implements Callable<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ SkuDetails f18155a;

    /* renamed from: b */
    public final /* synthetic */ String f18156b;

    /* renamed from: c */
    public final /* synthetic */ C1085b f18157c;

    public CallableC4291j(C1085b c1085b, SkuDetails skuDetails, String str) {
        this.f18157c = c1085b;
        this.f18155a = skuDetails;
        this.f18156b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() {
        InterfaceC1064c interfaceC1064c;
        Context context;
        interfaceC1064c = this.f18157c.f3004g;
        context = this.f18157c.f3003f;
        return interfaceC1064c.mo24697k6(3, context.getPackageName(), this.f18155a.m24606g(), this.f18156b, null);
    }
}
