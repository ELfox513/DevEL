package p144o7;
/* renamed from: o7.f0 */
/* loaded from: classes2.dex */
public class C5132f0 {

    /* renamed from: e */
    public static final C5196p f19410e = C5196p.m14163b();

    /* renamed from: a */
    public AbstractC5137h f19411a;

    /* renamed from: b */
    public C5196p f19412b;

    /* renamed from: c */
    public volatile InterfaceC5210s0 f19413c;

    /* renamed from: d */
    public volatile AbstractC5137h f19414d;

    public int hashCode() {
        return 1;
    }

    /* renamed from: a */
    public void m14575a(InterfaceC5210s0 interfaceC5210s0) {
        if (this.f19413c != null) {
            return;
        }
        synchronized (this) {
            if (this.f19413c != null) {
                return;
            }
            try {
                if (this.f19411a != null) {
                    this.f19413c = interfaceC5210s0.mo13793v().mo14646a(this.f19411a, this.f19412b);
                    this.f19414d = this.f19411a;
                } else {
                    this.f19413c = interfaceC5210s0;
                    this.f19414d = AbstractC5137h.f19422b;
                }
            } catch (C5117c0 unused) {
                this.f19413c = interfaceC5210s0;
                this.f19414d = AbstractC5137h.f19422b;
            }
        }
    }

    /* renamed from: b */
    public int m14574b() {
        if (this.f19414d != null) {
            return this.f19414d.size();
        }
        AbstractC5137h abstractC5137h = this.f19411a;
        if (abstractC5137h != null) {
            return abstractC5137h.size();
        }
        if (this.f19413c != null) {
            return this.f19413c.mo13795p();
        }
        return 0;
    }

    /* renamed from: d */
    public InterfaceC5210s0 m14572d(InterfaceC5210s0 interfaceC5210s0) {
        InterfaceC5210s0 interfaceC5210s02 = this.f19413c;
        this.f19411a = null;
        this.f19414d = null;
        this.f19413c = interfaceC5210s0;
        return interfaceC5210s02;
    }

    /* renamed from: e */
    public AbstractC5137h m14571e() {
        if (this.f19414d != null) {
            return this.f19414d;
        }
        AbstractC5137h abstractC5137h = this.f19411a;
        if (abstractC5137h != null) {
            return abstractC5137h;
        }
        synchronized (this) {
            if (this.f19414d != null) {
                return this.f19414d;
            }
            if (this.f19413c == null) {
                this.f19414d = AbstractC5137h.f19422b;
            } else {
                this.f19414d = this.f19413c.mo14081l();
            }
            return this.f19414d;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5132f0)) {
            return false;
        }
        C5132f0 c5132f0 = (C5132f0) obj;
        InterfaceC5210s0 interfaceC5210s0 = this.f19413c;
        InterfaceC5210s0 interfaceC5210s02 = c5132f0.f19413c;
        if (interfaceC5210s0 == null && interfaceC5210s02 == null) {
            return m14571e().equals(c5132f0.m14571e());
        }
        if (interfaceC5210s0 != null && interfaceC5210s02 != null) {
            return interfaceC5210s0.equals(interfaceC5210s02);
        }
        if (interfaceC5210s0 != null) {
            return interfaceC5210s0.equals(c5132f0.m14573c(interfaceC5210s0.mo13775c()));
        }
        return m14573c(interfaceC5210s02.mo13775c()).equals(interfaceC5210s02);
    }

    /* renamed from: c */
    public InterfaceC5210s0 m14573c(InterfaceC5210s0 interfaceC5210s0) {
        m14575a(interfaceC5210s0);
        return this.f19413c;
    }
}
