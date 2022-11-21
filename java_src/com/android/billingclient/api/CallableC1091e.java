package com.android.billingclient.api;

import com.android.billingclient.api.Purchase;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.e */
/* loaded from: classes.dex */
public final class CallableC1091e implements Callable<Purchase.C1081a> {

    /* renamed from: a */
    public final /* synthetic */ String f3033a;

    /* renamed from: b */
    public final /* synthetic */ C1085b f3034b;

    public CallableC1091e(C1085b c1085b, String str) {
        this.f3034b = c1085b;
        this.f3033a = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Purchase.C1081a call() {
        Purchase.C1081a m24588G;
        m24588G = this.f3034b.m24588G(this.f3033a);
        return m24588G;
    }
}
