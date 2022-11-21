package com.android.billingclient.api;

import java.util.List;
import java.util.concurrent.Callable;
import p093j1.InterfaceC4289h;
/* renamed from: com.android.billingclient.api.g */
/* loaded from: classes.dex */
public final class CallableC1093g implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f3037a;

    /* renamed from: b */
    public final /* synthetic */ List f3038b;

    /* renamed from: c */
    public final /* synthetic */ String f3039c;

    /* renamed from: d */
    public final /* synthetic */ InterfaceC4289h f3040d;

    /* renamed from: e */
    public final /* synthetic */ C1085b f3041e;

    public CallableC1093g(C1085b c1085b, String str, List list, String str2, InterfaceC4289h interfaceC4289h) {
        this.f3041e = c1085b;
        this.f3037a = str;
        this.f3038b = list;
        this.f3039c = str2;
        this.f3040d = interfaceC4289h;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() {
        this.f3041e.m24559w(new RunnableC1092f(this, this.f3041e.m24566p(this.f3037a, this.f3038b, this.f3039c)));
        return null;
    }
}
