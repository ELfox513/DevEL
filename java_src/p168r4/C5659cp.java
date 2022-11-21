package p168r4;

import p185t3.C6734b;
import p220x3.AbstractC7246c;
/* renamed from: r4.cp */
/* loaded from: classes2.dex */
public final class C5659cp implements AbstractC7246c.InterfaceC7248b {

    /* renamed from: a */
    public final /* synthetic */ vm0 f21643a;

    /* renamed from: b */
    public final /* synthetic */ C5696dp f21644b;

    public C5659cp(C5696dp c5696dp, vm0 vm0Var) {
        this.f21644b = c5696dp;
        this.f21643a = vm0Var;
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7248b
    /* renamed from: t0 */
    public final void mo1940t0(C6734b c6734b) {
        Object obj;
        obj = this.f21644b.f22395d;
        synchronized (obj) {
            this.f21643a.m6085f(new RuntimeException("Connection failed."));
        }
    }
}
