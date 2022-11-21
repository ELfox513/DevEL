package p129n1;

import p015b2.C0438g;
import p015b2.C0447o;
import p111l1.C4557d;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
/* renamed from: n1.k */
/* loaded from: classes.dex */
public final class C4707k extends C0447o {

    /* renamed from: a */
    public final InterfaceC7403d[] f18875a;

    /* renamed from: b */
    public final boolean[] f18876b;

    /* renamed from: d */
    public int f18877d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4707k(int r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L5
            r1 = 1
            goto L6
        L5:
            r1 = 0
        L6:
            r2.<init>(r1)
            y1.d[] r1 = new p226y1.InterfaceC7403d[r3]
            r2.f18875a = r1
            boolean[] r3 = new boolean[r3]
            r2.f18876b = r3
            r2.f18877d = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p129n1.C4707k.<init>(int):void");
    }

    /* renamed from: L */
    public static String m15687L(InterfaceC7403d interfaceC7403d) {
        return interfaceC7403d == null ? "<invalid>" : interfaceC7403d.toString();
    }

    /* renamed from: M */
    public static InterfaceC7403d m15686M(String str) {
        throw new C4729w("stack: " + str);
    }

    /* renamed from: H */
    public C7402c m15691H(int i) {
        return m15693E(i).getType();
    }

    public int size() {
        return this.f18877d;
    }

    /* renamed from: B */
    public C4707k m15696B() {
        C4707k c4707k = new C4707k(this.f18875a.length);
        InterfaceC7403d[] interfaceC7403dArr = this.f18875a;
        System.arraycopy(interfaceC7403dArr, 0, c4707k.f18875a, 0, interfaceC7403dArr.length);
        boolean[] zArr = this.f18876b;
        System.arraycopy(zArr, 0, c4707k.f18876b, 0, zArr.length);
        c4707k.f18877d = this.f18877d;
        return c4707k;
    }

    /* renamed from: C */
    public void m15695C(C7402c c7402c) {
        if (this.f18877d == 0) {
            return;
        }
        throwIfImmutable();
        C7402c m1545B = c7402c.m1545B();
        for (int i = 0; i < this.f18877d; i++) {
            InterfaceC7403d[] interfaceC7403dArr = this.f18875a;
            if (interfaceC7403dArr[i] == c7402c) {
                interfaceC7403dArr[i] = m1545B;
            }
        }
    }

    /* renamed from: E */
    public InterfaceC7403d m15693E(int i) {
        if (i >= 0) {
            int i2 = this.f18877d;
            if (i >= i2) {
                return m15686M("underflow");
            }
            return this.f18875a[(i2 - i) - 1];
        }
        throw new IllegalArgumentException("n < 0");
    }

    /* renamed from: F */
    public boolean m15692F(int i) {
        if (i >= 0) {
            int i2 = this.f18877d;
            if (i < i2) {
                return this.f18876b[(i2 - i) - 1];
            }
            throw new C4729w("stack: underflow");
        }
        throw new IllegalArgumentException("n < 0");
    }

    /* renamed from: x */
    public void m15685x(C4557d c4557d) {
        String m26478g;
        int i = this.f18877d - 1;
        for (int i2 = 0; i2 <= i; i2++) {
            if (i2 == i) {
                m26478g = "top0";
            } else {
                m26478g = C0438g.m26478g(i - i2);
            }
            c4557d.m16013a("stack[" + m26478g + "]: " + m15687L(this.f18875a[i2]));
        }
    }

    /* renamed from: A */
    public void m15697A() {
        throwIfImmutable();
        for (int i = 0; i < this.f18877d; i++) {
            this.f18875a[i] = null;
            this.f18876b[i] = false;
        }
        this.f18877d = 0;
    }

    /* renamed from: D */
    public C4707k m15694D(C4707k c4707k) {
        try {
            return C4716r.m15623c(this, c4707k);
        } catch (C4729w e) {
            e.m16013a("underlay stack:");
            m15685x(e);
            e.m16013a("overlay stack:");
            c4707k.m15685x(e);
            throw e;
        }
    }

    /* renamed from: I */
    public InterfaceC7403d m15690I() {
        throwIfImmutable();
        InterfaceC7403d m15693E = m15693E(0);
        InterfaceC7403d[] interfaceC7403dArr = this.f18875a;
        int i = this.f18877d;
        interfaceC7403dArr[i - 1] = null;
        this.f18876b[i - 1] = false;
        this.f18877d = i - m15693E.getType().m1527n();
        return m15693E;
    }

    /* renamed from: J */
    public void m15689J(InterfaceC7403d interfaceC7403d) {
        throwIfImmutable();
        try {
            InterfaceC7403d mo1520v = interfaceC7403d.mo1520v();
            int m1527n = mo1520v.getType().m1527n();
            int i = this.f18877d;
            int i2 = i + m1527n;
            InterfaceC7403d[] interfaceC7403dArr = this.f18875a;
            if (i2 > interfaceC7403dArr.length) {
                m15686M("overflow");
                return;
            }
            if (m1527n == 2) {
                interfaceC7403dArr[i] = null;
                this.f18877d = i + 1;
            }
            int i3 = this.f18877d;
            interfaceC7403dArr[i3] = mo1520v;
            this.f18877d = i3 + 1;
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }

    /* renamed from: K */
    public void m15688K() {
        throwIfImmutable();
        this.f18876b[this.f18877d] = true;
    }

    /* renamed from: z */
    public void m15684z(int i, InterfaceC7403d interfaceC7403d) {
        throwIfImmutable();
        try {
            InterfaceC7403d mo1520v = interfaceC7403d.mo1520v();
            int i2 = (this.f18877d - i) - 1;
            InterfaceC7403d interfaceC7403d2 = this.f18875a[i2];
            if (interfaceC7403d2 == null || interfaceC7403d2.getType().m1527n() != mo1520v.getType().m1527n()) {
                m15686M("incompatible substitution: " + m15687L(interfaceC7403d2) + " -> " + m15687L(mo1520v));
            }
            this.f18875a[i2] = mo1520v;
        } catch (NullPointerException unused) {
            throw new NullPointerException("type == null");
        }
    }
}
