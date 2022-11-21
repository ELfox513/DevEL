package p234z1;

import p015b2.InterfaceC0450r;
import p210w1.AbstractC7146h;
import p210w1.C7151k;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
/* renamed from: z1.u */
/* loaded from: classes.dex */
public abstract class AbstractC7572u implements InterfaceC0450r, Cloneable {

    /* renamed from: a */
    public final C7568s f37503a;

    /* renamed from: b */
    public C7157q f37504b;

    /* renamed from: z1.u$a */
    /* loaded from: classes.dex */
    public interface InterfaceC7573a {
        /* renamed from: a */
        void mo1045a(C7561n c7561n);

        /* renamed from: b */
        void mo1044b(C7558l c7558l);

        /* renamed from: c */
        void mo1043c(C7558l c7558l);
    }

    /* renamed from: D */
    public static AbstractC7572u m1122D(AbstractC7146h abstractC7146h, C7568s c7568s) {
        return new C7558l(abstractC7146h, c7568s);
    }

    /* renamed from: A */
    public boolean mo1125A() {
        return false;
    }

    /* renamed from: B */
    public abstract boolean mo1124B();

    /* renamed from: C */
    public boolean m1123C(int i) {
        C7157q c7157q = this.f37504b;
        return c7157q != null && c7157q.m2380B() == i;
    }

    /* renamed from: F */
    public abstract void mo1120F(AbstractC7565p abstractC7565p);

    /* renamed from: J */
    public abstract AbstractC7146h mo1117J();

    /* renamed from: a */
    public abstract void mo1116a(InterfaceC7573a interfaceC7573a);

    /* renamed from: b */
    public abstract boolean mo1115b();

    /* renamed from: i */
    public C7568s m1112i() {
        return this.f37503a;
    }

    /* renamed from: n */
    public abstract C7164t mo1110n();

    /* renamed from: o */
    public abstract AbstractC7146h mo1109o();

    /* renamed from: t */
    public C7157q m1108t() {
        return this.f37504b;
    }

    /* renamed from: u */
    public abstract C7160r mo1107u();

    /* renamed from: x */
    public abstract boolean mo1106x();

    /* renamed from: z */
    public boolean mo1105z() {
        return false;
    }

    /* renamed from: E */
    public final void m1121E(AbstractC7565p abstractC7565p) {
        C7157q c7157q = this.f37504b;
        this.f37504b = abstractC7565p.mo1034b(c7157q);
        this.f37503a.m1143s().m1091N(this, c7157q);
        mo1120F(abstractC7565p);
    }

    /* renamed from: G */
    public void m1119G(C7157q c7157q) {
        if (c7157q != null) {
            this.f37504b = c7157q;
            return;
        }
        throw new NullPointerException("result == null");
    }

    /* renamed from: I */
    public final void m1118I(C7151k c7151k) {
        if (c7151k != this.f37504b.m2354z()) {
            if (c7151k == null || !c7151k.equals(this.f37504b.m2354z())) {
                this.f37504b = C7157q.m2371L(this.f37504b.m2380B(), this.f37504b.getType(), c7151k);
            }
        }
    }

    /* renamed from: c */
    public void m1114c(int i) {
        C7157q c7157q = this.f37504b;
        if (c7157q != null) {
            this.f37504b = c7157q.m2364S(i);
        }
    }

    /* renamed from: j */
    public C7157q mo1111j() {
        C7157q c7157q = this.f37504b;
        if (c7157q != null && c7157q.m2354z() != null) {
            return this.f37504b;
        }
        return null;
    }

    public AbstractC7572u(C7157q c7157q, C7568s c7568s) {
        if (c7568s != null) {
            this.f37503a = c7568s;
            this.f37504b = c7157q;
            return;
        }
        throw new NullPointerException("block == null");
    }

    @Override // 
    /* renamed from: h */
    public AbstractC7572u clone() {
        try {
            return (AbstractC7572u) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("unexpected", e);
        }
    }
}
