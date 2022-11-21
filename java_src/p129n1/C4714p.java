package p129n1;

import java.util.ArrayList;
import java.util.Iterator;
import p015b2.C0438g;
import p111l1.C4557d;
import p210w1.C7157q;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
/* renamed from: n1.p */
/* loaded from: classes.dex */
public class C4714p extends AbstractC4713o {

    /* renamed from: a */
    public final C4717s f18891a;

    /* renamed from: b */
    public final ArrayList<AbstractC4713o> f18892b;

    public C4714p(int i) {
        super(i != 0);
        this.f18891a = new C4717s(i);
        this.f18892b = new ArrayList<>();
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: A */
    public InterfaceC7403d mo15621A(int i) {
        return this.f18891a.mo15621A(i);
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: B */
    public C4717s mo15620B() {
        return this.f18891a;
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: H */
    public void mo15615H(C7157q c7157q) {
        mo15616F(c7157q.m2380B(), c7157q);
    }

    /* renamed from: I */
    public int m15647I() {
        return this.f18891a.m15613J();
    }

    /* renamed from: N */
    public AbstractC4713o m15642N(int i) {
        return m15646J(i);
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: z */
    public AbstractC4713o mo15607z() {
        return new C4714p(this);
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: C */
    public void mo15619C(C7402c c7402c) {
        if (this.f18891a.m15613J() == 0) {
            return;
        }
        throwIfImmutable();
        this.f18891a.mo15619C(c7402c);
        Iterator<AbstractC4713o> it = this.f18892b.iterator();
        while (it.hasNext()) {
            AbstractC4713o next = it.next();
            if (next != null) {
                next.mo15619C(c7402c);
            }
        }
    }

    /* renamed from: J */
    public final AbstractC4713o m15646J(int i) {
        if (i >= this.f18892b.size()) {
            return null;
        }
        return this.f18892b.get(i);
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: K */
    public C4714p mo15618D(AbstractC4713o abstractC4713o) {
        C4714p m15644L;
        try {
            if (abstractC4713o instanceof C4714p) {
                m15644L = m15643M((C4714p) abstractC4713o);
            } else {
                m15644L = m15644L((C4717s) abstractC4713o);
            }
            m15644L.setImmutable();
            return m15644L;
        } catch (C4729w e) {
            e.m16013a("underlay locals:");
            mo15608x(e);
            e.m16013a("overlay locals:");
            abstractC4713o.mo15608x(e);
            throw e;
        }
    }

    /* renamed from: L */
    public final C4714p m15644L(C4717s c4717s) {
        C4717s m15610M = this.f18891a.m15610M(c4717s.mo15620B());
        ArrayList arrayList = new ArrayList(this.f18892b.size());
        int size = this.f18892b.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            AbstractC4713o abstractC4713o = this.f18892b.get(i);
            AbstractC4713o abstractC4713o2 = null;
            if (abstractC4713o != null) {
                try {
                    abstractC4713o2 = abstractC4713o.mo15618D(c4717s);
                } catch (C4729w e) {
                    e.m16013a("Merging one locals against caller block " + C0438g.m26478g(i));
                }
            }
            if (!z && abstractC4713o == abstractC4713o2) {
                z = false;
            } else {
                z = true;
            }
            arrayList.add(abstractC4713o2);
        }
        if (this.f18891a == m15610M && !z) {
            return this;
        }
        return new C4714p(m15610M, arrayList);
    }

    /* renamed from: M */
    public final C4714p m15643M(C4714p c4714p) {
        AbstractC4713o abstractC4713o;
        AbstractC4713o abstractC4713o2;
        C4717s m15610M = this.f18891a.m15610M(c4714p.mo15620B());
        int size = this.f18892b.size();
        int size2 = c4714p.f18892b.size();
        int max = Math.max(size, size2);
        ArrayList arrayList = new ArrayList(max);
        boolean z = false;
        for (int i = 0; i < max; i++) {
            AbstractC4713o abstractC4713o3 = null;
            if (i < size) {
                abstractC4713o = this.f18892b.get(i);
            } else {
                abstractC4713o = null;
            }
            if (i < size2) {
                abstractC4713o2 = c4714p.f18892b.get(i);
            } else {
                abstractC4713o2 = null;
            }
            if (abstractC4713o != abstractC4713o2) {
                if (abstractC4713o == null) {
                    abstractC4713o3 = abstractC4713o2;
                } else if (abstractC4713o2 != null) {
                    try {
                        abstractC4713o3 = abstractC4713o.mo15618D(abstractC4713o2);
                    } catch (C4729w e) {
                        e.m16013a("Merging locals set for caller block " + C0438g.m26478g(i));
                    }
                }
                if (z && abstractC4713o == abstractC4713o3) {
                    z = false;
                } else {
                    z = true;
                }
                arrayList.add(abstractC4713o3);
            }
            abstractC4713o3 = abstractC4713o;
            if (z) {
            }
            z = true;
            arrayList.add(abstractC4713o3);
        }
        if (this.f18891a == m15610M && !z) {
            return this;
        }
        return new C4714p(m15610M, arrayList);
    }

    @Override // p015b2.C0447o
    public void setImmutable() {
        this.f18891a.setImmutable();
        Iterator<AbstractC4713o> it = this.f18892b.iterator();
        while (it.hasNext()) {
            AbstractC4713o next = it.next();
            if (next != null) {
                next.setImmutable();
            }
        }
        super.setImmutable();
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        StringBuilder sb = new StringBuilder();
        sb.append("(locals array set; primary)\n");
        sb.append(mo15620B().toHuman());
        sb.append('\n');
        int size = this.f18892b.size();
        for (int i = 0; i < size; i++) {
            AbstractC4713o abstractC4713o = this.f18892b.get(i);
            if (abstractC4713o != null) {
                sb.append("(locals array set: primary for caller " + C0438g.m26478g(i) + ")\n");
                sb.append(abstractC4713o.mo15620B().toHuman());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: x */
    public void mo15608x(C4557d c4557d) {
        c4557d.m16013a("(locals array set; primary)");
        this.f18891a.mo15608x(c4557d);
        int size = this.f18892b.size();
        for (int i = 0; i < size; i++) {
            AbstractC4713o abstractC4713o = this.f18892b.get(i);
            if (abstractC4713o != null) {
                c4557d.m16013a("(locals array set: primary for caller " + C0438g.m26478g(i) + ')');
                abstractC4713o.mo15620B().mo15608x(c4557d);
            }
        }
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: E */
    public C4714p mo15617E(AbstractC4713o abstractC4713o, int i) {
        AbstractC4713o abstractC4713o2;
        AbstractC4713o m15646J = m15646J(i);
        C4717s m15610M = this.f18891a.m15610M(abstractC4713o.mo15620B());
        if (m15646J == abstractC4713o) {
            abstractC4713o = m15646J;
        } else if (m15646J != null) {
            abstractC4713o = m15646J.mo15618D(abstractC4713o);
        }
        if (abstractC4713o == m15646J && m15610M == this.f18891a) {
            return this;
        }
        int size = this.f18892b.size();
        int max = Math.max(i + 1, size);
        ArrayList arrayList = new ArrayList(max);
        C4717s c4717s = null;
        for (int i2 = 0; i2 < max; i2++) {
            if (i2 == i) {
                abstractC4713o2 = abstractC4713o;
            } else if (i2 < size) {
                abstractC4713o2 = this.f18892b.get(i2);
            } else {
                abstractC4713o2 = null;
            }
            if (abstractC4713o2 != null) {
                if (c4717s == null) {
                    c4717s = abstractC4713o2.mo15620B();
                } else {
                    c4717s = c4717s.m15610M(abstractC4713o2.mo15620B());
                }
            }
            arrayList.add(abstractC4713o2);
        }
        C4714p c4714p = new C4714p(c4717s, arrayList);
        c4714p.setImmutable();
        return c4714p;
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: F */
    public void mo15616F(int i, InterfaceC7403d interfaceC7403d) {
        throwIfImmutable();
        this.f18891a.mo15616F(i, interfaceC7403d);
        Iterator<AbstractC4713o> it = this.f18892b.iterator();
        while (it.hasNext()) {
            AbstractC4713o next = it.next();
            if (next != null) {
                next.mo15616F(i, interfaceC7403d);
            }
        }
    }

    public C4714p(C4717s c4717s, ArrayList<AbstractC4713o> arrayList) {
        super(c4717s.m15613J() > 0);
        this.f18891a = c4717s;
        this.f18892b = arrayList;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4714p(C4714p c4714p) {
        super(c4714p.m15647I() > 0);
        this.f18891a = c4714p.f18891a.mo15607z();
        this.f18892b = new ArrayList<>(c4714p.f18892b.size());
        int size = c4714p.f18892b.size();
        for (int i = 0; i < size; i++) {
            AbstractC4713o abstractC4713o = c4714p.f18892b.get(i);
            if (abstractC4713o == null) {
                this.f18892b.add(null);
            } else {
                this.f18892b.add(abstractC4713o.mo15607z());
            }
        }
    }
}
