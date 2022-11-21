package p210w1;

import p015b2.C0438g;
import p015b2.C0441j;
import p015b2.InterfaceC0443l;
/* renamed from: w1.b */
/* loaded from: classes.dex */
public final class C7138b implements InterfaceC0443l {

    /* renamed from: a */
    public final int f36155a;

    /* renamed from: b */
    public final C7149i f36156b;

    /* renamed from: c */
    public final C0441j f36157c;

    /* renamed from: d */
    public final int f36158d;

    /* renamed from: w1.b$a */
    /* loaded from: classes.dex */
    public interface InterfaceC7139a {
        /* renamed from: a */
        void mo2440a(C7138b c7138b);
    }

    @Override // p015b2.InterfaceC0443l
    /* renamed from: a */
    public int mo2449a() {
        return this.f36155a;
    }

    /* renamed from: b */
    public boolean m2448b() {
        return this.f36156b.m2410B().m2420b();
    }

    /* renamed from: c */
    public AbstractC7146h m2447c() {
        return this.f36156b.m2411A(0);
    }

    /* renamed from: d */
    public C7149i m2446d() {
        return this.f36156b;
    }

    /* renamed from: e */
    public AbstractC7146h m2445e() {
        return this.f36156b.m2410B();
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    /* renamed from: f */
    public int m2444f() {
        return this.f36158d;
    }

    /* renamed from: h */
    public C0441j m2442h() {
        return this.f36157c;
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    public String toString() {
        return '{' + C0438g.m26478g(this.f36155a) + '}';
    }

    /* renamed from: g */
    public int m2443g() {
        if (this.f36157c.size() == 2) {
            int m26470B = this.f36157c.m26470B(0);
            if (m26470B == this.f36158d) {
                return this.f36157c.m26470B(1);
            }
            return m26470B;
        }
        throw new UnsupportedOperationException("block doesn't have exactly two successors");
    }

    /* renamed from: i */
    public boolean m2441i() {
        if (this.f36156b.m2410B().mo2249e().size() != 0) {
            return true;
        }
        return false;
    }

    public C7138b(int i, C7149i c7149i, C0441j c0441j, int i2) {
        if (i >= 0) {
            try {
                c7149i.throwIfMutable();
                int size = c7149i.size();
                if (size != 0) {
                    for (int i3 = size - 2; i3 >= 0; i3--) {
                        if (c7149i.m2411A(i3).m2417i().m2316b() != 1) {
                            throw new IllegalArgumentException("insns[" + i3 + "] is a branch or can throw");
                        }
                    }
                    if (c7149i.m2411A(size - 1).m2417i().m2316b() != 1) {
                        try {
                            c0441j.throwIfMutable();
                            if (i2 >= -1) {
                                if (i2 >= 0 && !c0441j.m26471A(i2)) {
                                    throw new IllegalArgumentException("primarySuccessor " + i2 + " not in successors " + c0441j);
                                }
                                this.f36155a = i;
                                this.f36156b = c7149i;
                                this.f36157c = c0441j;
                                this.f36158d = i2;
                                return;
                            }
                            throw new IllegalArgumentException("primarySuccessor < -1");
                        } catch (NullPointerException unused) {
                            throw new NullPointerException("successors == null");
                        }
                    }
                    throw new IllegalArgumentException("insns does not end with a branch or throwing instruction");
                }
                throw new IllegalArgumentException("insns.size() == 0");
            } catch (NullPointerException unused2) {
                throw new NullPointerException("insns == null");
            }
        }
        throw new IllegalArgumentException("label < 0");
    }
}
