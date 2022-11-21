package com.android.billingclient.api;

import com.android.billingclient.api.C1085b;
import p093j1.InterfaceC4277c;
/* renamed from: com.android.billingclient.api.h */
/* loaded from: classes.dex */
public final class RunnableC1094h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1087c f3042a;

    /* renamed from: b */
    public final /* synthetic */ C1085b.ServiceConnectionC1086a f3043b;

    public RunnableC1094h(C1085b.ServiceConnectionC1086a serviceConnectionC1086a, C1087c c1087c) {
        this.f3043b = serviceConnectionC1086a;
        this.f3042a = c1087c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        InterfaceC4277c interfaceC4277c;
        InterfaceC4277c interfaceC4277c2;
        obj = this.f3043b.f3019a;
        synchronized (obj) {
            interfaceC4277c = this.f3043b.f3021d;
            if (interfaceC4277c != null) {
                interfaceC4277c2 = this.f3043b.f3021d;
                interfaceC4277c2.onBillingSetupFinished(this.f3042a);
            }
        }
    }
}
