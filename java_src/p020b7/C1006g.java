package p020b7;

import com.google.firebase.perf.config.RemoteConfigManager;
import p162q7.C5436b;
import p171r7.InterfaceC6549a;
/* renamed from: b7.g */
/* loaded from: classes2.dex */
public final class C1006g implements InterfaceC6549a {

    /* renamed from: a */
    public final C1000a f2491a;

    /* renamed from: a */
    public static C1006g m24822a(C1000a c1000a) {
        return new C1006g(c1000a);
    }

    /* renamed from: c */
    public static RemoteConfigManager m24820c(C1000a c1000a) {
        return (RemoteConfigManager) C5436b.m13301c(c1000a.m24839f(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // p171r7.InterfaceC6549a
    /* renamed from: b */
    public RemoteConfigManager get() {
        return m24820c(this.f2491a);
    }

    public C1006g(C1000a c1000a) {
        this.f2491a = c1000a;
    }
}
