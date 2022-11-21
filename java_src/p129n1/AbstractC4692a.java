package p129n1;

import java.util.ArrayList;
import p210w1.C7151k;
import p210w1.C7157q;
import p218x1.AbstractC7204a;
import p226y1.C7400a;
import p226y1.C7401b;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
/* renamed from: n1.a */
/* loaded from: classes.dex */
public abstract class AbstractC4692a implements InterfaceC4715q {

    /* renamed from: a */
    public final C7400a f18825a;

    /* renamed from: b */
    public InterfaceC7403d[] f18826b;

    /* renamed from: c */
    public int f18827c;

    /* renamed from: d */
    public C7402c f18828d;

    /* renamed from: e */
    public int f18829e;

    /* renamed from: f */
    public AbstractC7204a f18830f;

    /* renamed from: g */
    public int f18831g;

    /* renamed from: h */
    public C4732y f18832h;

    /* renamed from: i */
    public ArrayList<AbstractC7204a> f18833i;

    /* renamed from: j */
    public int f18834j;

    /* renamed from: k */
    public boolean f18835k;

    /* renamed from: l */
    public C7157q f18836l;

    /* renamed from: m */
    public InterfaceC7403d[] f18837m;

    /* renamed from: n */
    public int f18838n;

    /* renamed from: A */
    public final ArrayList<AbstractC7204a> m15768A() {
        return this.f18833i;
    }

    /* renamed from: B */
    public final int m15767B() {
        return this.f18834j;
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: b */
    public final void mo15640b() {
        this.f18827c = 0;
        this.f18828d = null;
        this.f18829e = 0;
        this.f18830f = null;
        this.f18831g = 0;
        this.f18832h = null;
        this.f18833i = null;
        this.f18834j = -1;
        this.f18835k = false;
        this.f18836l = null;
        this.f18838n = -1;
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: c */
    public C7400a mo15639c() {
        return this.f18825a;
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: d */
    public final void mo15638d(int i) {
        this.f18831g = i;
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: f */
    public final void mo15636f(C7402c c7402c) {
        this.f18828d = c7402c;
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: h */
    public final void mo15634h(C4708l c4708l, C7402c c7402c, C7402c c7402c2, C7402c c7402c3) {
        mo15633i(c4708l, 3);
        if (C4716r.m15625a(c7402c, this.f18826b[0])) {
            if (C4716r.m15625a(c7402c2, this.f18826b[1])) {
                if (C4716r.m15625a(c7402c3, this.f18826b[2])) {
                    return;
                }
                throw new C4729w("expected type " + c7402c3.toHuman() + " but found " + this.f18826b[2].getType().toHuman());
            }
            throw new C4729w("expected type " + c7402c2.toHuman() + " but found " + this.f18826b[1].getType().toHuman());
        }
        throw new C4729w("expected type " + c7402c.toHuman() + " but found " + this.f18826b[0].getType().toHuman());
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: l */
    public final void mo15631l(ArrayList<AbstractC7204a> arrayList) {
        this.f18833i = arrayList;
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: m */
    public final void mo15630m(boolean z) {
        this.f18835k = z;
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: n */
    public final void mo15629n(int i, C7402c c7402c, C7151k c7151k) {
        this.f18836l = C7157q.m2371L(i, c7402c, c7151k);
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: o */
    public final void mo15628o(int i) {
        this.f18829e = i;
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: p */
    public final void mo15627p(C4708l c4708l, C7402c c7402c) {
        mo15633i(c4708l, 1);
        if (C4716r.m15625a(c7402c, this.f18826b[0])) {
            return;
        }
        throw new C4729w("expected type " + c7402c.toHuman() + " but found " + this.f18826b[0].getType().toHuman());
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: q */
    public final void mo15626q(C4708l c4708l, C7402c c7402c, C7402c c7402c2) {
        mo15633i(c4708l, 2);
        if (C4716r.m15625a(c7402c, this.f18826b[0])) {
            if (C4716r.m15625a(c7402c2, this.f18826b[1])) {
                return;
            }
            throw new C4729w("expected type " + c7402c2.toHuman() + " but found " + this.f18826b[1].getType().toHuman());
        }
        throw new C4729w("expected type " + c7402c.toHuman() + " but found " + this.f18826b[0].getType().toHuman());
    }

    /* renamed from: t */
    public final int m15758t() {
        return this.f18827c;
    }

    /* renamed from: u */
    public final void m15757u() {
        this.f18838n = 0;
    }

    /* renamed from: v */
    public final C4732y m15756v() {
        return this.f18832h;
    }

    /* renamed from: w */
    public final AbstractC7204a m15755w() {
        return this.f18830f;
    }

    /* renamed from: x */
    public final int m15754x() {
        return this.f18829e;
    }

    /* renamed from: y */
    public final int m15753y() {
        return this.f18831g;
    }

    /* renamed from: z */
    public final C7402c m15752z() {
        return this.f18828d;
    }

    /* renamed from: H */
    public static void m15761H(InterfaceC7403d interfaceC7403d, InterfaceC7403d interfaceC7403d2) {
        throw new C4729w("local variable type mismatch: attempt to set or access a value of type " + interfaceC7403d.toHuman() + " using a local variable of type " + interfaceC7403d2.toHuman() + ". This is symptomatic of .class transformation tools that ignore local variable information.");
    }

    /* renamed from: C */
    public final C7157q m15766C(boolean z) {
        String str;
        if (this.f18836l == null) {
            return null;
        }
        if (this.f18838n != 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("local target with ");
            if (this.f18838n == 0) {
                str = "no";
            } else {
                str = "multiple";
            }
            sb.append(str);
            sb.append(" results");
            throw new C4729w(sb.toString());
        }
        InterfaceC7403d interfaceC7403d = this.f18837m[0];
        C7402c type = interfaceC7403d.getType();
        C7402c type2 = this.f18836l.getType();
        if (type == type2) {
            if (z) {
                return this.f18836l.m2362U(interfaceC7403d);
            }
            return this.f18836l;
        } else if (!C4716r.m15625a(type2, type)) {
            m15761H(type, type2);
            return null;
        } else {
            if (type2 == C7402c.f37069K) {
                this.f18836l = this.f18836l.m2362U(interfaceC7403d);
            }
            return this.f18836l;
        }
    }

    /* renamed from: D */
    public final InterfaceC7403d m15765D(int i) {
        if (i < this.f18838n) {
            try {
                return this.f18837m[i];
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IllegalArgumentException("n < 0");
            }
        }
        throw new IllegalArgumentException("n >= resultCount");
    }

    /* renamed from: E */
    public final int m15764E() {
        int i = this.f18838n;
        if (i >= 0) {
            return i;
        }
        throw new C4729w("results never set");
    }

    /* renamed from: F */
    public final void m15763F(InterfaceC7403d interfaceC7403d) {
        if (interfaceC7403d != null) {
            this.f18837m[0] = interfaceC7403d;
            this.f18838n = 1;
            return;
        }
        throw new NullPointerException("result == null");
    }

    /* renamed from: G */
    public final void m15762G(C4708l c4708l) {
        int i = this.f18838n;
        if (i >= 0) {
            if (i == 0) {
                return;
            }
            if (this.f18836l != null) {
                c4708l.m15680d().mo15615H(m15766C(false));
                return;
            }
            C4707k m15679e = c4708l.m15679e();
            for (int i2 = 0; i2 < this.f18838n; i2++) {
                if (this.f18835k) {
                    m15679e.m15688K();
                }
                m15679e.m15689J(this.f18837m[i2]);
            }
            return;
        }
        throw new C4729w("results never set");
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: g */
    public final void mo15635g(AbstractC7204a abstractC7204a) {
        if (abstractC7204a != null) {
            this.f18830f = abstractC7204a;
            return;
        }
        throw new NullPointerException("cst == null");
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: k */
    public final void mo15632k(C4732y c4732y) {
        if (c4732y != null) {
            this.f18832h = c4732y;
            return;
        }
        throw new NullPointerException("cases == null");
    }

    /* renamed from: r */
    public final void m15760r(InterfaceC7403d interfaceC7403d) {
        if (interfaceC7403d != null) {
            InterfaceC7403d[] interfaceC7403dArr = this.f18837m;
            int i = this.f18838n;
            interfaceC7403dArr[i] = interfaceC7403d;
            this.f18838n = i + 1;
            return;
        }
        throw new NullPointerException("result == null");
    }

    /* renamed from: s */
    public final InterfaceC7403d m15759s(int i) {
        if (i < this.f18827c) {
            try {
                return this.f18826b[i];
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IllegalArgumentException("n < 0");
            }
        }
        throw new IllegalArgumentException("n >= argCount");
    }

    public AbstractC4692a(C7400a c7400a) {
        if (c7400a != null) {
            this.f18825a = c7400a;
            this.f18826b = new InterfaceC7403d[10];
            this.f18837m = new InterfaceC7403d[6];
            mo15640b();
            return;
        }
        throw new NullPointerException("prototype == null");
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: a */
    public void mo15641a(C4708l c4708l, C7400a c7400a) {
        C7401b m1565l = c7400a.m1565l();
        int size = m1565l.size();
        mo15633i(c4708l, size);
        for (int i = 0; i < size; i++) {
            if (!C4716r.m15625a(m1565l.getType(i), this.f18826b[i])) {
                throw new C4729w("at stack depth " + ((size - 1) - i) + ", expected type " + m1565l.getType(i).toHuman() + " but found " + this.f18826b[i].getType().toHuman());
            }
        }
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: e */
    public final void mo15637e(C4708l c4708l, int i) {
        mo15640b();
        this.f18826b[0] = c4708l.m15680d().mo15621A(i);
        this.f18827c = 1;
        this.f18834j = i;
    }

    @Override // p129n1.InterfaceC4715q
    /* renamed from: i */
    public final void mo15633i(C4708l c4708l, int i) {
        C4707k m15679e = c4708l.m15679e();
        mo15640b();
        if (i > this.f18826b.length) {
            this.f18826b = new InterfaceC7403d[i + 10];
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            this.f18826b[i2] = m15679e.m15690I();
        }
        this.f18827c = i;
    }
}
