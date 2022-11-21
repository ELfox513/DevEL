package p234z1;

import p210w1.AbstractC7146h;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p234z1.AbstractC7572u;
/* renamed from: z1.l */
/* loaded from: classes.dex */
public final class C7558l extends AbstractC7572u {

    /* renamed from: d */
    public AbstractC7146h f37462d;

    @Override // p234z1.AbstractC7572u
    /* renamed from: A */
    public boolean mo1125A() {
        return this.f37462d.m2417i().m2314d() == 2;
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: B */
    public boolean mo1124B() {
        return mo1125A();
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: J */
    public AbstractC7146h mo1117J() {
        return this.f37462d.mo2246r(m1108t(), this.f37462d.m2414m());
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: L */
    public C7558l mo1113h() {
        return (C7558l) super.clone();
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: b */
    public boolean mo1115b() {
        return this.f37462d.m2420b();
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: n */
    public C7164t mo1110n() {
        return this.f37462d.m2417i();
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: o */
    public AbstractC7146h mo1109o() {
        return this.f37462d;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return mo1117J().toHuman();
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: u */
    public C7160r mo1107u() {
        return this.f37462d.m2414m();
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: z */
    public boolean mo1105z() {
        return this.f37462d.m2417i().m2314d() == 4;
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: F */
    public final void mo1120F(AbstractC7565p abstractC7565p) {
        C7160r m2414m = this.f37462d.m2414m();
        C7160r m1193c = abstractC7565p.m1193c(m2414m);
        if (m1193c != m2414m) {
            this.f37462d = this.f37462d.mo2246r(m1108t(), m1193c);
            m1112i().m1143s().m1096I(this, m2414m);
        }
    }

    /* renamed from: K */
    public final void m1216K(int i, C7157q c7157q) {
        C7157q m2347A;
        C7160r m2414m = this.f37462d.m2414m();
        int size = m2414m.size();
        C7160r c7160r = new C7160r(size);
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 == i) {
                m2347A = c7157q;
            } else {
                m2347A = m2414m.m2347A(i2);
            }
            c7160r.m2342F(i2, m2347A);
        }
        c7160r.setImmutable();
        C7157q m2347A2 = m2414m.m2347A(i);
        if (m2347A2.m2380B() != c7157q.m2380B()) {
            m1112i().m1143s().m1097H(this, m2347A2, c7157q);
        }
        this.f37462d = this.f37462d.mo2246r(m1108t(), c7160r);
    }

    /* renamed from: P */
    public final void m1214P(C7160r c7160r) {
        if (this.f37462d.m2414m().size() == c7160r.size()) {
            this.f37462d = this.f37462d.mo2246r(m1108t(), c7160r);
            return;
        }
        throw new RuntimeException("Sources counts don't match");
    }

    /* renamed from: Q */
    public void m1213Q() {
        C7160r m2414m = this.f37462d.m2414m();
        this.f37462d = this.f37462d.mo2384s();
        m1112i().m1143s().m1096I(this, m2414m);
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: j */
    public C7157q mo1111j() {
        C7157q m1108t;
        if (this.f37462d.m2417i().m2314d() == 54) {
            m1108t = this.f37462d.m2414m().m2347A(0);
        } else {
            m1108t = m1108t();
        }
        if (m1108t == null || m1108t.m2354z() == null) {
            return null;
        }
        return m1108t;
    }

    public C7558l(AbstractC7146h abstractC7146h, C7568s c7568s) {
        super(abstractC7146h.m2415k(), c7568s);
        this.f37462d = abstractC7146h;
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: a */
    public void mo1116a(AbstractC7572u.InterfaceC7573a interfaceC7573a) {
        if (mo1125A()) {
            interfaceC7573a.mo1043c(this);
        } else {
            interfaceC7573a.mo1044b(this);
        }
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: x */
    public boolean mo1106x() {
        boolean z;
        C7164t mo1110n = mo1110n();
        if (mo1110n.m2316b() != 1) {
            return true;
        }
        if (C7559m.m1211b() && mo1111j() != null) {
            z = true;
        } else {
            z = false;
        }
        int m2314d = mo1110n.m2314d();
        if (m2314d != 2 && m2314d != 5 && m2314d != 55) {
            return true;
        }
        return z;
    }
}
