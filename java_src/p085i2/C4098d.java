package p085i2;

import android.content.Context;
import java.util.concurrent.Executor;
import p085i2.AbstractC4120s;
import p094j2.C4321j;
import p094j2.C4324l;
import p103k2.C4437a;
import p103k2.C4439c;
import p103k2.C4440d;
import p103k2.InterfaceC4438b;
import p130n2.C4736c;
import p130n2.C4737d;
import p130n2.C4740g;
import p130n2.C4742i;
import p139o2.AbstractC5072g;
import p139o2.C5085p;
import p139o2.C5086q;
import p139o2.C5089t;
import p139o2.C5090u;
import p139o2.InterfaceC5091v;
import p148p2.C5316b0;
import p148p2.C5322c0;
import p148p2.C5328f;
import p148p2.C5331g;
import p148p2.C5334h;
import p148p2.C5339i0;
import p148p2.InterfaceC5321c;
import p166r2.C5527c;
import p166r2.C5529d;
import p171r7.InterfaceC6549a;
/* renamed from: i2.d */
/* loaded from: classes.dex */
public final class C4098d extends AbstractC4120s {

    /* renamed from: a */
    public InterfaceC6549a<Executor> f17699a;

    /* renamed from: b */
    public InterfaceC6549a<Context> f17700b;

    /* renamed from: d */
    public InterfaceC6549a f17701d;

    /* renamed from: k */
    public InterfaceC6549a f17702k;

    /* renamed from: p */
    public InterfaceC6549a f17703p;

    /* renamed from: q */
    public InterfaceC6549a<C5316b0> f17704q;

    /* renamed from: r */
    public InterfaceC6549a<AbstractC5072g> f17705r;

    /* renamed from: s */
    public InterfaceC6549a<InterfaceC5091v> f17706s;

    /* renamed from: t */
    public InterfaceC6549a<C4736c> f17707t;

    /* renamed from: u */
    public InterfaceC6549a<C5085p> f17708u;

    /* renamed from: v */
    public InterfaceC6549a<C5089t> f17709v;

    /* renamed from: w */
    public InterfaceC6549a<C4119r> f17710w;

    /* renamed from: i2.d$b */
    /* loaded from: classes.dex */
    public static final class C4100b implements AbstractC4120s.InterfaceC4121a {

        /* renamed from: a */
        public Context f17711a;

        public C4100b() {
        }

        @Override // p085i2.AbstractC4120s.InterfaceC4121a
        /* renamed from: b */
        public C4100b mo17333a(Context context) {
            this.f17711a = (Context) C4440d.m16481b(context);
            return this;
        }

        @Override // p085i2.AbstractC4120s.InterfaceC4121a
        public AbstractC4120s build() {
            C4440d.m16482a(this.f17711a, Context.class);
            return new C4098d(this.f17711a);
        }
    }

    /* renamed from: e */
    public static AbstractC4120s.InterfaceC4121a m17404e() {
        return new C4100b();
    }

    @Override // p085i2.AbstractC4120s
    /* renamed from: c */
    public InterfaceC5321c mo17335c() {
        return this.f17704q.get();
    }

    @Override // p085i2.AbstractC4120s
    /* renamed from: d */
    public C4119r mo17334d() {
        return this.f17710w.get();
    }

    public C4098d(Context context) {
        m17403f(context);
    }

    /* renamed from: f */
    public final void m17403f(Context context) {
        this.f17699a = C4437a.m16485a(C4107j.m17374a());
        InterfaceC4438b m16483a = C4439c.m16483a(context);
        this.f17700b = m16483a;
        C4321j m16824a = C4321j.m16824a(m16483a, C5527c.m13113a(), C5529d.m13109a());
        this.f17701d = m16824a;
        this.f17702k = C4437a.m16485a(C4324l.m16816a(this.f17700b, m16824a));
        this.f17703p = C5339i0.m13419a(this.f17700b, C5328f.m13447a(), C5331g.m13443a());
        this.f17704q = C4437a.m16485a(C5322c0.m13465a(C5527c.m13113a(), C5529d.m13109a(), C5334h.m13439a(), this.f17703p));
        C4740g m15491b = C4740g.m15491b(C5527c.m13113a());
        this.f17705r = m15491b;
        C4742i m15488a = C4742i.m15488a(this.f17700b, this.f17704q, m15491b, C5529d.m13109a());
        this.f17706s = m15488a;
        InterfaceC6549a<Executor> interfaceC6549a = this.f17699a;
        InterfaceC6549a interfaceC6549a2 = this.f17702k;
        InterfaceC6549a<C5316b0> interfaceC6549a3 = this.f17704q;
        this.f17707t = C4737d.m15497a(interfaceC6549a, interfaceC6549a2, m15488a, interfaceC6549a3, interfaceC6549a3);
        InterfaceC6549a<Context> interfaceC6549a4 = this.f17700b;
        InterfaceC6549a interfaceC6549a5 = this.f17702k;
        InterfaceC6549a<C5316b0> interfaceC6549a6 = this.f17704q;
        this.f17708u = C5086q.m14685a(interfaceC6549a4, interfaceC6549a5, interfaceC6549a6, this.f17706s, this.f17699a, interfaceC6549a6, C5527c.m13113a());
        InterfaceC6549a<Executor> interfaceC6549a7 = this.f17699a;
        InterfaceC6549a<C5316b0> interfaceC6549a8 = this.f17704q;
        this.f17709v = C5090u.m14677a(interfaceC6549a7, interfaceC6549a8, this.f17706s, interfaceC6549a8);
        this.f17710w = C4437a.m16485a(C4122t.m17332a(C5527c.m13113a(), C5529d.m13109a(), this.f17707t, this.f17708u, this.f17709v));
    }
}
