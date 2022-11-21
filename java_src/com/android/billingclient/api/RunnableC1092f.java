package com.android.billingclient.api;

import com.android.billingclient.api.SkuDetails;
/* renamed from: com.android.billingclient.api.f */
/* loaded from: classes.dex */
public final class RunnableC1092f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SkuDetails.C1082a f3035a;

    /* renamed from: b */
    public final /* synthetic */ CallableC1093g f3036b;

    public RunnableC1092f(CallableC1093g callableC1093g, SkuDetails.C1082a c1082a) {
        this.f3036b = callableC1093g;
        this.f3035a = c1082a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3036b.f3040d.onSkuDetailsResponse(C1087c.m24548b().m24543c(this.f3035a.m24600b()).m24544b(this.f3035a.m24599c()).m24545a(), this.f3035a.m24601a());
    }
}
