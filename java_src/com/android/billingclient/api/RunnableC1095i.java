package com.android.billingclient.api;

import com.android.billingclient.api.C1085b;
/* renamed from: com.android.billingclient.api.i */
/* loaded from: classes.dex */
public final class RunnableC1095i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1085b.ServiceConnectionC1086a f3044a;

    public RunnableC1095i(C1085b.ServiceConnectionC1086a serviceConnectionC1086a) {
        this.f3044a = serviceConnectionC1086a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1085b.this.f2998a = 0;
        C1085b.this.f3004g = null;
        this.f3044a.m24552d(C1097k.f3063r);
    }
}
