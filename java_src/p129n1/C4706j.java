package p129n1;

import p120m1.C4600c;
import p120m1.C4606i;
import p120m1.C4607j;
import p120m1.C4608k;
import p156q1.InterfaceC5392b;
import p156q1.InterfaceC5393c;
import p156q1.InterfaceC5397g;
import p210w1.C7167w;
import p218x1.C7205a0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p226y1.C7400a;
/* renamed from: n1.j */
/* loaded from: classes.dex */
public final class C4706j implements InterfaceC5397g {

    /* renamed from: a */
    public final InterfaceC5397g f18870a;

    /* renamed from: b */
    public final InterfaceC5393c f18871b;

    /* renamed from: c */
    public final C4600c f18872c;

    /* renamed from: d */
    public final C4709m f18873d;

    /* renamed from: e */
    public final C4711n f18874e;

    @Override // p156q1.InterfaceC5396f
    /* renamed from: a */
    public int mo13334a() {
        return this.f18870a.mo13334a();
    }

    @Override // p156q1.InterfaceC5397g
    /* renamed from: b */
    public C7400a mo13331b() {
        return this.f18870a.mo13331b();
    }

    @Override // p156q1.InterfaceC5396f
    /* renamed from: c */
    public C7214e0 mo13333c() {
        return this.f18870a.mo13333c();
    }

    @Override // p156q1.InterfaceC5396f
    /* renamed from: d */
    public C7205a0 mo13332d() {
        return this.f18870a.mo13332d();
    }

    /* renamed from: f */
    public C4699g m15706f() {
        return this.f18872c.m15935b();
    }

    /* renamed from: g */
    public C4702i m15705g() {
        return this.f18872c.m15934d();
    }

    @Override // p156q1.InterfaceC5396f
    public InterfaceC5392b getAttributes() {
        return this.f18870a.getAttributes();
    }

    @Override // p156q1.InterfaceC5396f
    public C7212d0 getDescriptor() {
        return this.f18870a.getDescriptor();
    }

    @Override // p156q1.InterfaceC5396f
    public C7212d0 getName() {
        return this.f18870a.getName();
    }

    /* renamed from: h */
    public C4711n m15704h() {
        return this.f18874e;
    }

    /* renamed from: i */
    public int m15703i() {
        return this.f18872c.m15933e();
    }

    /* renamed from: j */
    public int m15702j() {
        return this.f18872c.m15932f();
    }

    /* renamed from: k */
    public C7212d0 m15701k() {
        return this.f18871b.mo13346b();
    }

    /* renamed from: m */
    public final boolean m15699m() {
        return (mo13334a() & 8) != 0;
    }

    /* renamed from: l */
    public final boolean m15700l() {
        if ((this.f18871b.mo13347a() & 512) != 0 && !mo13332d().m2127z()) {
            return true;
        }
        return false;
    }

    /* renamed from: n */
    public C7167w m15698n(int i) {
        return new C7167w(m15701k(), i, this.f18873d.m15668A(i));
    }

    public C4706j(InterfaceC5397g interfaceC5397g, InterfaceC5393c interfaceC5393c, boolean z, boolean z2) {
        this.f18870a = interfaceC5397g;
        this.f18871b = interfaceC5393c;
        C4600c c4600c = (C4600c) interfaceC5397g.getAttributes().mo13340j("Code");
        this.f18872c = c4600c;
        InterfaceC5392b m15936a = c4600c.m15936a();
        C4709m c4709m = C4709m.f18881a;
        if (z) {
            for (C4606i c4606i = (C4606i) m15936a.mo13340j("LineNumberTable"); c4606i != null; c4606i = (C4606i) m15936a.mo13339n(c4606i)) {
                c4709m = C4709m.m15665x(c4709m, c4606i.m15926a());
            }
        }
        this.f18873d = c4709m;
        C4711n c4711n = C4711n.f18884a;
        if (z2) {
            for (C4607j c4607j = (C4607j) m15936a.mo13340j("LocalVariableTable"); c4607j != null; c4607j = (C4607j) m15936a.mo13339n(c4607j)) {
                c4711n = C4711n.m15656x(c4711n, c4607j.m15921a());
            }
            C4711n c4711n2 = C4711n.f18884a;
            for (C4608k c4608k = (C4608k) m15936a.mo13340j("LocalVariableTypeTable"); c4608k != null; c4608k = (C4608k) m15936a.mo13339n(c4608k)) {
                c4711n2 = C4711n.m15656x(c4711n2, c4608k.m15921a());
            }
            if (c4711n2.size() != 0) {
                c4711n = C4711n.m15660B(c4711n, c4711n2);
            }
        }
        this.f18874e = c4711n;
    }
}
