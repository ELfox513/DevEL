package p229y4;

import android.app.Application;
import java.util.concurrent.Executor;
/* renamed from: y4.m */
/* loaded from: classes2.dex */
public final class C7460m implements InterfaceC7455k1<C7457l> {

    /* renamed from: a */
    public final InterfaceC7465n1<Application> f37225a;

    /* renamed from: b */
    public final InterfaceC7465n1<C7463n> f37226b;

    /* renamed from: c */
    public final InterfaceC7465n1<Executor> f37227c;

    public C7460m(InterfaceC7465n1<Application> interfaceC7465n1, InterfaceC7465n1<C7463n> interfaceC7465n12, InterfaceC7465n1<Executor> interfaceC7465n13) {
        this.f37225a = interfaceC7465n1;
        this.f37226b = interfaceC7465n12;
        this.f37227c = interfaceC7465n13;
    }

    @Override // p229y4.InterfaceC7465n1
    /* renamed from: b */
    public final C7457l mo1390a() {
        Executor executor = C7439g1.f37158b;
        C7462m1.m1417a(executor);
        return new C7457l(this.f37225a.mo1390a(), this.f37226b.mo1390a(), executor);
    }
}
