package p093j1;

import android.content.Context;
import android.os.Bundle;
import com.android.billingclient.api.C1085b;
import com.android.billingclient.api.SkuDetails;
import java.util.concurrent.Callable;
import p027c5.InterfaceC1064c;
/* renamed from: j1.g0 */
/* loaded from: classes.dex */
public final class CallableC4288g0 implements Callable<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ int f18149a;

    /* renamed from: b */
    public final /* synthetic */ SkuDetails f18150b;

    /* renamed from: c */
    public final /* synthetic */ String f18151c;

    /* renamed from: d */
    public final /* synthetic */ C4279d f18152d;

    /* renamed from: e */
    public final /* synthetic */ Bundle f18153e;

    /* renamed from: f */
    public final /* synthetic */ C1085b f18154f;

    public CallableC4288g0(C1085b c1085b, int i, SkuDetails skuDetails, String str, C4279d c4279d, Bundle bundle) {
        this.f18154f = c1085b;
        this.f18149a = i;
        this.f18150b = skuDetails;
        this.f18151c = str;
        this.f18152d = c4279d;
        this.f18153e = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() {
        InterfaceC1064c interfaceC1064c;
        Context context;
        interfaceC1064c = this.f18154f.f3004g;
        int i = this.f18149a;
        context = this.f18154f.f3003f;
        return interfaceC1064c.mo24698d7(i, context.getPackageName(), this.f18150b.m24606g(), this.f18151c, null, this.f18153e);
    }
}
