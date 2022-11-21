package p093j1;

import android.content.Context;
import android.os.Bundle;
import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.SkuDetails;
import java.util.Arrays;
import java.util.concurrent.Callable;
import p027c5.InterfaceC1064c;
/* renamed from: j1.f0 */
/* loaded from: classes.dex */
public final class CallableC4286f0 implements Callable<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ C4279d f18146a;

    /* renamed from: b */
    public final /* synthetic */ SkuDetails f18147b;

    /* renamed from: c */
    public final /* synthetic */ C1085b f18148c;

    public CallableC4286f0(C1085b c1085b, C4279d c4279d, SkuDetails skuDetails) {
        this.f18148c = c1085b;
        this.f18146a = c4279d;
        this.f18147b = skuDetails;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() {
        InterfaceC1064c interfaceC1064c;
        Context context;
        interfaceC1064c = this.f18148c.f3004g;
        context = this.f18148c.f3003f;
        return interfaceC1064c.mo24704K2(5, context.getPackageName(), Arrays.asList(this.f18146a.m16874a()), this.f18147b.m24606g(), "subs", null);
    }
}
