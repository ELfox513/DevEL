package p085i2;

import android.content.Context;
import java.util.Collections;
import java.util.Set;
import p058f2.C3503b;
import p058f2.InterfaceC3508g;
import p058f2.InterfaceC3509h;
import p130n2.InterfaceC4738e;
import p139o2.C5085p;
import p139o2.C5089t;
import p166r2.InterfaceC5525a;
/* renamed from: i2.r */
/* loaded from: classes.dex */
public class C4119r implements InterfaceC4118q {

    /* renamed from: e */
    public static volatile AbstractC4120s f17725e;

    /* renamed from: a */
    public final InterfaceC5525a f17726a;

    /* renamed from: b */
    public final InterfaceC5525a f17727b;

    /* renamed from: c */
    public final InterfaceC4738e f17728c;

    /* renamed from: d */
    public final C5085p f17729d;

    /* renamed from: e */
    public C5085p m17338e() {
        return this.f17729d;
    }

    /* renamed from: c */
    public static C4119r m17340c() {
        AbstractC4120s abstractC4120s = f17725e;
        if (abstractC4120s != null) {
            return abstractC4120s.mo17334d();
        }
        throw new IllegalStateException("Not initialized!");
    }

    /* renamed from: d */
    public static Set<C3503b> m17339d(InterfaceC4101e interfaceC4101e) {
        if (interfaceC4101e instanceof InterfaceC4102f) {
            return Collections.unmodifiableSet(((InterfaceC4102f) interfaceC4101e).mo17401a());
        }
        return Collections.singleton(C3503b.m18748b("proto"));
    }

    /* renamed from: f */
    public static void m17337f(Context context) {
        if (f17725e == null) {
            synchronized (C4119r.class) {
                if (f17725e == null) {
                    f17725e = C4098d.m17404e().mo17333a(context).build();
                }
            }
        }
    }

    @Override // p085i2.InterfaceC4118q
    /* renamed from: a */
    public void mo17342a(AbstractC4111l abstractC4111l, InterfaceC3509h interfaceC3509h) {
        this.f17728c.mo15494a(abstractC4111l.mo17365f().m17353e(abstractC4111l.mo17368c().mo18745c()), m17341b(abstractC4111l), interfaceC3509h);
    }

    /* renamed from: g */
    public InterfaceC3508g m17336g(InterfaceC4101e interfaceC4101e) {
        return new C4115n(m17339d(interfaceC4101e), AbstractC4113m.m17357a().mo17351b(interfaceC4101e.getName()).mo17350c(interfaceC4101e.getExtras()).mo17352a(), this);
    }

    public C4119r(InterfaceC5525a interfaceC5525a, InterfaceC5525a interfaceC5525a2, InterfaceC4738e interfaceC4738e, C5085p c5085p, C5089t c5089t) {
        this.f17726a = interfaceC5525a;
        this.f17727b = interfaceC5525a2;
        this.f17728c = interfaceC4738e;
        this.f17729d = c5085p;
        c5089t.m14680c();
    }

    /* renamed from: b */
    public final AbstractC4104h m17341b(AbstractC4111l abstractC4111l) {
        return AbstractC4104h.m17398a().mo17378i(this.f17726a.getTime()).mo17376k(this.f17727b.getTime()).mo17377j(abstractC4111l.mo17364g()).mo17379h(new C4103g(abstractC4111l.mo17369b(), abstractC4111l.m17367d())).mo17380g(abstractC4111l.mo17368c().mo18747a()).mo17383d();
    }
}
