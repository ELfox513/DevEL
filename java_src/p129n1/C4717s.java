package p129n1;

import p015b2.C0438g;
import p111l1.C4557d;
import p210w1.C7157q;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
/* renamed from: n1.s */
/* loaded from: classes.dex */
public class C4717s extends AbstractC4713o {

    /* renamed from: a */
    public final InterfaceC7403d[] f18893a;

    /* renamed from: N */
    public static InterfaceC7403d m15609N(int i, String str) {
        throw new C4729w("local " + C0438g.m26478g(i) + ": " + str);
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: B */
    public C4717s mo15620B() {
        return this;
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: H */
    public void mo15615H(C7157q c7157q) {
        mo15616F(c7157q.m2380B(), c7157q);
    }

    /* renamed from: J */
    public int m15613J() {
        return this.f18893a.length;
    }

    /* renamed from: K */
    public InterfaceC7403d m15612K(int i) {
        return this.f18893a[i];
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: x */
    public void mo15608x(C4557d c4557d) {
        String obj;
        int i = 0;
        while (true) {
            InterfaceC7403d[] interfaceC7403dArr = this.f18893a;
            if (i < interfaceC7403dArr.length) {
                InterfaceC7403d interfaceC7403d = interfaceC7403dArr[i];
                if (interfaceC7403d == null) {
                    obj = "<invalid>";
                } else {
                    obj = interfaceC7403d.toString();
                }
                c4557d.m16013a("locals[" + C0438g.m26478g(i) + "]: " + obj);
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4717s(int r2) {
        /*
            r1 = this;
            if (r2 == 0) goto L4
            r0 = 1
            goto L5
        L4:
            r0 = 0
        L5:
            r1.<init>(r0)
            y1.d[] r2 = new p226y1.InterfaceC7403d[r2]
            r1.f18893a = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p129n1.C4717s.<init>(int):void");
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: A */
    public InterfaceC7403d mo15621A(int i) {
        InterfaceC7403d interfaceC7403d = this.f18893a[i];
        if (interfaceC7403d == null) {
            return m15609N(i, "invalid");
        }
        return interfaceC7403d;
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: C */
    public void mo15619C(C7402c c7402c) {
        int length = this.f18893a.length;
        if (length == 0) {
            return;
        }
        throwIfImmutable();
        C7402c m1545B = c7402c.m1545B();
        for (int i = 0; i < length; i++) {
            InterfaceC7403d[] interfaceC7403dArr = this.f18893a;
            if (interfaceC7403dArr[i] == c7402c) {
                interfaceC7403dArr[i] = m1545B;
            }
        }
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: D */
    public AbstractC4713o mo15618D(AbstractC4713o abstractC4713o) {
        if (abstractC4713o instanceof C4717s) {
            return m15610M((C4717s) abstractC4713o);
        }
        return abstractC4713o.mo15618D(this);
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: E */
    public C4714p mo15617E(AbstractC4713o abstractC4713o, int i) {
        return new C4714p(m15613J()).mo15617E(abstractC4713o, i);
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: I */
    public C4717s mo15607z() {
        C4717s c4717s = new C4717s(this.f18893a.length);
        InterfaceC7403d[] interfaceC7403dArr = this.f18893a;
        System.arraycopy(interfaceC7403dArr, 0, c4717s.f18893a, 0, interfaceC7403dArr.length);
        return c4717s;
    }

    @Override // p015b2.InterfaceC0450r
    public String toHuman() {
        String obj;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            InterfaceC7403d[] interfaceC7403dArr = this.f18893a;
            if (i < interfaceC7403dArr.length) {
                InterfaceC7403d interfaceC7403d = interfaceC7403dArr[i];
                if (interfaceC7403d == null) {
                    obj = "<invalid>";
                } else {
                    obj = interfaceC7403d.toString();
                }
                sb.append("locals[" + C0438g.m26478g(i) + "]: " + obj + "\n");
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    @Override // p129n1.AbstractC4713o
    /* renamed from: F */
    public void mo15616F(int i, InterfaceC7403d interfaceC7403d) {
        int i2;
        InterfaceC7403d interfaceC7403d2;
        throwIfImmutable();
        try {
            InterfaceC7403d mo1520v = interfaceC7403d.mo1520v();
            if (i >= 0) {
                if (mo1520v.getType().m1537K()) {
                    this.f18893a[i + 1] = null;
                }
                InterfaceC7403d[] interfaceC7403dArr = this.f18893a;
                interfaceC7403dArr[i] = mo1520v;
                if (i != 0 && (interfaceC7403d2 = interfaceC7403dArr[i - 1]) != null && interfaceC7403d2.getType().m1537K()) {
                    this.f18893a[i2] = null;
                    return;
                }
                return;
            }
            throw new IndexOutOfBoundsException("idx < 0");
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    /* renamed from: L */
    public void m15611L(int i) {
        throwIfImmutable();
        this.f18893a[i] = null;
    }

    /* renamed from: M */
    public C4717s m15610M(C4717s c4717s) {
        try {
            return C4716r.m15624b(this, c4717s);
        } catch (C4729w e) {
            e.m16013a("underlay locals:");
            mo15608x(e);
            e.m16013a("overlay locals:");
            c4717s.mo15608x(e);
            throw e;
        }
    }
}
