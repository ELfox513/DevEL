package com.android.billingclient.api;

import p093j1.CallableC4305x;
/* renamed from: com.android.billingclient.api.n */
/* loaded from: classes.dex */
public final class RunnableC1101n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f3071a;

    /* renamed from: b */
    public final /* synthetic */ String f3072b;

    /* renamed from: d */
    public final /* synthetic */ CallableC4305x f3073d;

    public RunnableC1101n(CallableC4305x callableC4305x, int i, String str) {
        this.f3073d = callableC4305x;
        this.f3071a = i;
        this.f3072b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3073d.f18170b.onAcknowledgePurchaseResponse(C1087c.m24548b().m24543c(this.f3071a).m24544b(this.f3072b).m24545a());
    }
}
