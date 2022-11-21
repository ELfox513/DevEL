package p234z1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p015b2.C0438g;
import p210w1.AbstractC7146h;
import p210w1.C7151k;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p210w1.C7167w;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
import p234z1.AbstractC7572u;
/* renamed from: z1.n */
/* loaded from: classes.dex */
public final class C7561n extends AbstractC7572u {

    /* renamed from: d */
    public final int f37471d;

    /* renamed from: k */
    public final ArrayList<C7562a> f37472k;

    /* renamed from: p */
    public C7160r f37473p;

    /* renamed from: z1.n$b */
    /* loaded from: classes.dex */
    public interface InterfaceC7563b {
        /* renamed from: a */
        void mo1036a(C7561n c7561n);
    }

    public C7561n(C7157q c7157q, C7568s c7568s) {
        super(c7157q, c7568s);
        this.f37472k = new ArrayList<>();
        this.f37471d = c7157q.m2380B();
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: B */
    public boolean mo1124B() {
        return true;
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: J */
    public AbstractC7146h mo1117J() {
        throw new IllegalArgumentException("Cannot convert phi insns to rop form");
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: P */
    public C7561n mo1113h() {
        throw new UnsupportedOperationException("can't clone phi");
    }

    /* renamed from: Q */
    public int m1203Q() {
        return this.f37471d;
    }

    /* renamed from: S */
    public int m1202S(int i) {
        return this.f37472k.get(i).f37475b;
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: a */
    public void mo1116a(AbstractC7572u.InterfaceC7573a interfaceC7573a) {
        interfaceC7573a.mo1045a(this);
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: b */
    public boolean mo1115b() {
        return false;
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: n */
    public C7164t mo1110n() {
        return null;
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: o */
    public AbstractC7146h mo1109o() {
        return null;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return m1199V(null);
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: x */
    public boolean mo1106x() {
        return C7559m.m1211b() && mo1111j() != null;
    }

    /* renamed from: z1.n$a */
    /* loaded from: classes.dex */
    public static class C7562a {

        /* renamed from: a */
        public C7157q f37474a;

        /* renamed from: b */
        public final int f37475b;

        /* renamed from: c */
        public final int f37476c;

        public C7562a(C7157q c7157q, int i, int i2) {
            this.f37474a = c7157q;
            this.f37475b = i;
            this.f37476c = i2;
        }
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: F */
    public final void mo1120F(AbstractC7565p abstractC7565p) {
        Iterator<C7562a> it = this.f37472k.iterator();
        while (it.hasNext()) {
            C7562a next = it.next();
            C7157q c7157q = next.f37474a;
            C7157q mo1034b = abstractC7565p.mo1034b(c7157q);
            next.f37474a = mo1034b;
            if (c7157q != mo1034b) {
                m1112i().m1143s().m1097H(this, c7157q, next.f37474a);
            }
        }
        this.f37473p = null;
    }

    /* renamed from: K */
    public void m1206K(C7157q c7157q, C7568s c7568s) {
        this.f37472k.add(new C7562a(c7157q, c7568s.m1146p(), c7568s.m1137y()));
        this.f37473p = null;
    }

    /* renamed from: T */
    public List<C7568s> m1201T(int i, C7574v c7574v) {
        ArrayList arrayList = new ArrayList();
        Iterator<C7562a> it = this.f37472k.iterator();
        while (it.hasNext()) {
            C7562a next = it.next();
            if (next.f37474a.m2380B() == i) {
                arrayList.add(c7574v.m1078m().get(next.f37475b));
            }
        }
        return arrayList;
    }

    /* renamed from: U */
    public void m1200U(C7157q c7157q) {
        ArrayList arrayList = new ArrayList();
        Iterator<C7562a> it = this.f37472k.iterator();
        while (it.hasNext()) {
            C7562a next = it.next();
            if (next.f37474a.m2380B() == c7157q.m2380B()) {
                arrayList.add(next);
            }
        }
        this.f37472k.removeAll(arrayList);
        this.f37473p = null;
    }

    /* renamed from: V */
    public final String m1199V(String str) {
        StringBuilder sb = new StringBuilder(80);
        sb.append(C7167w.f36439d);
        sb.append(": phi");
        if (str != null) {
            sb.append("(");
            sb.append(str);
            sb.append(")");
        }
        C7157q m1108t = m1108t();
        if (m1108t == null) {
            sb.append(" .");
        } else {
            sb.append(" ");
            sb.append(m1108t.toHuman());
        }
        sb.append(" <-");
        int size = mo1107u().size();
        if (size == 0) {
            sb.append(" .");
        } else {
            for (int i = 0; i < size; i++) {
                sb.append(" ");
                sb.append(this.f37473p.m2347A(i).toHuman() + "[b=" + C0438g.m26478g(this.f37472k.get(i).f37476c) + "]");
            }
        }
        return sb.toString();
    }

    /* renamed from: W */
    public void m1198W(C7574v c7574v) {
        Iterator<C7562a> it = this.f37472k.iterator();
        while (it.hasNext()) {
            C7562a next = it.next();
            next.f37474a = next.f37474a.m2362U(c7574v.m1077n(next.f37474a.m2380B()).m1108t().getType());
        }
        this.f37473p = null;
    }

    @Override // p234z1.AbstractC7572u
    /* renamed from: u */
    public C7160r mo1107u() {
        C7160r c7160r = this.f37473p;
        if (c7160r != null) {
            return c7160r;
        }
        if (this.f37472k.size() == 0) {
            return C7160r.f36212a;
        }
        int size = this.f37472k.size();
        this.f37473p = new C7160r(size);
        for (int i = 0; i < size; i++) {
            this.f37473p.m2342F(i, this.f37472k.get(i).f37474a);
        }
        this.f37473p.setImmutable();
        return this.f37473p;
    }

    /* renamed from: L */
    public void m1205L(InterfaceC7403d interfaceC7403d, C7151k c7151k) {
        m1119G(C7157q.m2371L(m1108t().m2380B(), interfaceC7403d, c7151k));
    }

    public C7561n(int i, C7568s c7568s) {
        super(C7157q.m2373J(i, C7402c.f37060B), c7568s);
        this.f37472k = new ArrayList<>();
        this.f37471d = i;
    }
}
