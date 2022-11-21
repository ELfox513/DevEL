package p203v3;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import java.util.Map;
import java.util.Set;
import p185t3.C6734b;
import p194u3.C6883a;
import p220x3.AbstractC7246c;
import p220x3.InterfaceC7273j;
/* renamed from: v3.f0 */
/* loaded from: classes.dex */
public final class C7009f0 implements AbstractC7246c.InterfaceC7249c, InterfaceC7047s0 {

    /* renamed from: a */
    public final C6883a.InterfaceC6892f f35959a;

    /* renamed from: b */
    public final C6995b<?> f35960b;

    /* renamed from: c */
    public InterfaceC7273j f35961c = null;

    /* renamed from: d */
    public Set<Scope> f35962d = null;

    /* renamed from: e */
    public boolean f35963e = false;

    /* renamed from: f */
    public final /* synthetic */ C7008f f35964f;

    public C7009f0(C7008f c7008f, C6883a.InterfaceC6892f interfaceC6892f, C6995b<?> c6995b) {
        this.f35964f = c7008f;
        this.f35959a = interfaceC6892f;
        this.f35960b = c6995b;
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7249c
    /* renamed from: a */
    public final void mo1978a(C6734b c6734b) {
        Handler handler;
        handler = this.f35964f.f35942A;
        handler.post(new RunnableC7006e0(this, c6734b));
    }

    /* renamed from: h */
    public final void m2677h() {
        InterfaceC7273j interfaceC7273j;
        if (!this.f35963e || (interfaceC7273j = this.f35961c) == null) {
            return;
        }
        this.f35959a.mo2648o(interfaceC7273j, this.f35962d);
    }

    @Override // p203v3.InterfaceC7047s0
    /* renamed from: b */
    public final void mo2608b(InterfaceC7273j interfaceC7273j, Set<Scope> set) {
        if (interfaceC7273j != null && set != null) {
            this.f35961c = interfaceC7273j;
            this.f35962d = set;
            m2677h();
            return;
        }
        Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
        mo2607c(new C6734b(4));
    }

    @Override // p203v3.InterfaceC7047s0
    /* renamed from: c */
    public final void mo2607c(C6734b c6734b) {
        Map map;
        map = this.f35964f.f35955w;
        C7000c0 c7000c0 = (C7000c0) map.get(this.f35960b);
        if (c7000c0 != null) {
            c7000c0.m2735o(c6734b);
        }
    }
}
