package p220x3;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
/* renamed from: x3.c1 */
/* loaded from: classes.dex */
public final class BinderC7253c1 extends AbstractBinderC7304s0 {

    /* renamed from: a */
    public AbstractC7246c f36679a;

    /* renamed from: b */
    public final int f36680b;

    public BinderC7253c1(AbstractC7246c abstractC7246c, int i) {
        this.f36679a = abstractC7246c;
        this.f36680b = i;
    }

    @Override // p220x3.InterfaceC7280l
    /* renamed from: v0 */
    public final void mo1923v0(int i, Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // p220x3.InterfaceC7280l
    /* renamed from: D3 */
    public final void mo1925D3(int i, IBinder iBinder, Bundle bundle) {
        C7297q.m1882k(this.f36679a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f36679a.mo2018L(i, iBinder, bundle, this.f36680b);
        this.f36679a = null;
    }

    @Override // p220x3.InterfaceC7280l
    /* renamed from: f3 */
    public final void mo1924f3(int i, IBinder iBinder, C7269h1 c7269h1) {
        AbstractC7246c abstractC7246c = this.f36679a;
        C7297q.m1882k(abstractC7246c, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        C7297q.m1883j(c7269h1);
        AbstractC7246c.m1993f0(abstractC7246c, c7269h1);
        mo1925D3(i, iBinder, c7269h1.f36733a);
    }
}
