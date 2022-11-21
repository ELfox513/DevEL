package p210w1;

import p015b2.InterfaceC0450r;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: w1.h */
/* loaded from: classes.dex */
public abstract class AbstractC7146h implements InterfaceC0450r {

    /* renamed from: a */
    public final C7164t f36183a;

    /* renamed from: b */
    public final C7167w f36184b;

    /* renamed from: d */
    public final C7157q f36185d;

    /* renamed from: k */
    public final C7160r f36186k;

    /* renamed from: w1.h$a */
    /* loaded from: classes.dex */
    public static class C7147a implements InterfaceC7148b {
        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitFillArrayDataInsn(C7145g c7145g) {
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitInvokePolymorphicInsn(C7150j c7150j) {
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitPlainCstInsn(C7154n c7154n) {
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitPlainInsn(C7155o c7155o) {
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitSwitchInsn(C7168x c7168x) {
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitThrowingCstInsn(C7169y c7169y) {
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitThrowingInsn(C7170z c7170z) {
        }
    }

    /* renamed from: w1.h$b */
    /* loaded from: classes.dex */
    public interface InterfaceC7148b {
        void visitFillArrayDataInsn(C7145g c7145g);

        void visitInvokePolymorphicInsn(C7150j c7150j);

        void visitPlainCstInsn(C7154n c7154n);

        void visitPlainInsn(C7155o c7155o);

        void visitSwitchInsn(C7168x c7168x);

        void visitThrowingCstInsn(C7169y c7169y);

        void visitThrowingInsn(C7170z c7170z);
    }

    /* renamed from: d */
    public static boolean m2419d(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: a */
    public abstract void mo2250a(InterfaceC7148b interfaceC7148b);

    /* renamed from: b */
    public final boolean m2420b() {
        return this.f36183a.m2317a();
    }

    /* renamed from: e */
    public abstract InterfaceC7404e mo2249e();

    public final boolean equals(Object obj) {
        return this == obj;
    }

    /* renamed from: g */
    public String mo2248g() {
        return null;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    /* renamed from: i */
    public final C7164t m2417i() {
        return this.f36183a;
    }

    /* renamed from: j */
    public final C7167w m2416j() {
        return this.f36184b;
    }

    /* renamed from: k */
    public final C7157q m2415k() {
        return this.f36185d;
    }

    /* renamed from: m */
    public final C7160r m2414m() {
        return this.f36186k;
    }

    /* renamed from: q */
    public abstract AbstractC7146h mo2247q(C7402c c7402c);

    /* renamed from: r */
    public abstract AbstractC7146h mo2246r(C7157q c7157q, C7160r c7160r);

    /* renamed from: s */
    public AbstractC7146h mo2384s() {
        return this;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        return m2413n(mo2248g());
    }

    public String toString() {
        return m2412o(mo2248g());
    }

    /* renamed from: c */
    public boolean mo2252c(AbstractC7146h abstractC7146h) {
        if (this.f36183a == abstractC7146h.m2417i() && this.f36184b.equals(abstractC7146h.m2416j()) && getClass() == abstractC7146h.getClass() && m2419d(this.f36185d, abstractC7146h.m2415k()) && m2419d(this.f36186k, abstractC7146h.m2414m()) && C7401b.m1547z(mo2249e(), abstractC7146h.mo2249e())) {
            return true;
        }
        return false;
    }

    /* renamed from: h */
    public final C7157q m2418h() {
        C7157q c7157q;
        if (this.f36183a.m2314d() == 54) {
            c7157q = this.f36186k.m2347A(0);
        } else {
            c7157q = this.f36185d;
        }
        if (c7157q == null || c7157q.m2354z() == null) {
            return null;
        }
        return c7157q;
    }

    /* renamed from: n */
    public final String m2413n(String str) {
        StringBuilder sb = new StringBuilder(80);
        sb.append(this.f36184b);
        sb.append(": ");
        sb.append(this.f36183a.m2315c());
        if (str != null) {
            sb.append("(");
            sb.append(str);
            sb.append(")");
        }
        if (this.f36185d == null) {
            sb.append(" .");
        } else {
            sb.append(" ");
            sb.append(this.f36185d.toHuman());
        }
        sb.append(" <-");
        int size = this.f36186k.size();
        if (size == 0) {
            sb.append(" .");
        } else {
            for (int i = 0; i < size; i++) {
                sb.append(" ");
                sb.append(this.f36186k.m2347A(i).toHuman());
            }
        }
        return sb.toString();
    }

    /* renamed from: o */
    public final String m2412o(String str) {
        StringBuilder sb = new StringBuilder(80);
        sb.append("Insn{");
        sb.append(this.f36184b);
        sb.append(' ');
        sb.append(this.f36183a);
        if (str != null) {
            sb.append(' ');
            sb.append(str);
        }
        sb.append(" :: ");
        C7157q c7157q = this.f36185d;
        if (c7157q != null) {
            sb.append(c7157q);
            sb.append(" <- ");
        }
        sb.append(this.f36186k);
        sb.append('}');
        return sb.toString();
    }

    public AbstractC7146h(C7164t c7164t, C7167w c7167w, C7157q c7157q, C7160r c7160r) {
        if (c7164t != null) {
            if (c7167w != null) {
                if (c7160r != null) {
                    this.f36183a = c7164t;
                    this.f36184b = c7167w;
                    this.f36185d = c7157q;
                    this.f36186k = c7160r;
                    return;
                }
                throw new NullPointerException("sources == null");
            }
            throw new NullPointerException("position == null");
        }
        throw new NullPointerException("opcode == null");
    }
}
