package p210w1;

import p015b2.C0438g;
import p015b2.C0441j;
import p015b2.C0444m;
import p210w1.AbstractC7146h;
/* renamed from: w1.c */
/* loaded from: classes.dex */
public final class C7140c extends C0444m {

    /* renamed from: b */
    public int f36159b;

    public C7140c(int i) {
        super(i);
        this.f36159b = -1;
    }

    /* renamed from: F */
    public C7138b m2438F(int i) {
        return (C7138b) get0(i);
    }

    /* renamed from: J */
    public C7140c m2435J() {
        return new C7140c(this);
    }

    /* renamed from: w1.c$a */
    /* loaded from: classes.dex */
    public static class C7141a implements AbstractC7146h.InterfaceC7148b {

        /* renamed from: a */
        public int f36160a = 0;

        /* renamed from: a */
        public int m2430a() {
            return this.f36160a;
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitFillArrayDataInsn(C7145g c7145g) {
            m2428c(c7145g);
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitInvokePolymorphicInsn(C7150j c7150j) {
            m2428c(c7150j);
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitPlainCstInsn(C7154n c7154n) {
            m2428c(c7154n);
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitPlainInsn(C7155o c7155o) {
            m2428c(c7155o);
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitSwitchInsn(C7168x c7168x) {
            m2428c(c7168x);
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitThrowingCstInsn(C7169y c7169y) {
            m2428c(c7169y);
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitThrowingInsn(C7170z c7170z) {
            m2428c(c7170z);
        }

        /* renamed from: b */
        public final void m2429b(C7157q c7157q) {
            int m2381A = c7157q.m2381A();
            if (m2381A > this.f36160a) {
                this.f36160a = m2381A;
            }
        }

        /* renamed from: c */
        public final void m2428c(AbstractC7146h abstractC7146h) {
            C7157q m2415k = abstractC7146h.m2415k();
            if (m2415k != null) {
                m2429b(m2415k);
            }
            C7160r m2414m = abstractC7146h.m2414m();
            int size = m2414m.size();
            for (int i = 0; i < size; i++) {
                m2429b(m2414m.m2347A(i));
            }
        }
    }

    /* renamed from: K */
    public int m2434K() {
        if (this.f36159b == -1) {
            C7141a c7141a = new C7141a();
            m2439E(c7141a);
            this.f36159b = c7141a.m2430a();
        }
        return this.f36159b;
    }

    public C7140c(C7140c c7140c) {
        super(c7140c);
        this.f36159b = c7140c.f36159b;
    }

    /* renamed from: E */
    public void m2439E(AbstractC7146h.InterfaceC7148b interfaceC7148b) {
        int size = size();
        for (int i = 0; i < size; i++) {
            m2438F(i).m2446d().m2407z(interfaceC7148b);
        }
    }

    /* renamed from: H */
    public int m2437H() {
        int size = size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C7138b c7138b = (C7138b) getOrNull0(i2);
            if (c7138b != null) {
                C7149i m2446d = c7138b.m2446d();
                int size2 = m2446d.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    if (m2446d.m2411A(i3).m2417i().m2314d() != 54) {
                        i++;
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: I */
    public int m2436I() {
        int size = size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C7138b c7138b = (C7138b) getOrNull0(i2);
            if (c7138b != null) {
                i += c7138b.m2446d().size();
            }
        }
        return i;
    }

    /* renamed from: L */
    public C7138b m2433L(int i) {
        int m26455A = m26455A(i);
        if (m26455A >= 0) {
            return m2438F(m26455A);
        }
        throw new IllegalArgumentException("no such label: " + C0438g.m26478g(i));
    }

    /* renamed from: M */
    public C7138b m2432M(C7138b c7138b) {
        int m2444f = c7138b.m2444f();
        C0441j m2442h = c7138b.m2442h();
        int size = m2442h.size();
        if (size != 0) {
            if (size != 1) {
                if (m2444f != -1) {
                    return m2433L(m2444f);
                }
                return m2433L(m2442h.m26470B(0));
            }
            return m2433L(m2442h.m26470B(0));
        }
        return null;
    }

    /* renamed from: N */
    public void m2431N(int i, C7138b c7138b) {
        super.m26452D(i, c7138b);
        this.f36159b = -1;
    }
}
