package p210w1;

import java.util.BitSet;
import p015b2.C0437f;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: w1.r */
/* loaded from: classes.dex */
public final class C7160r extends C0437f implements InterfaceC7404e {

    /* renamed from: a */
    public static final C7160r f36212a = new C7160r(0);

    /* renamed from: w1.r$b */
    /* loaded from: classes.dex */
    public static class C7162b {

        /* renamed from: a */
        public final BitSet f36213a;

        /* renamed from: b */
        public final C7160r f36214b;

        /* renamed from: c */
        public int f36215c;

        /* renamed from: d */
        public final C7160r f36216d;

        /* renamed from: e */
        public boolean f36217e;

        /* renamed from: c */
        public final void m2331c(int i) {
            m2330d(i, (C7157q) this.f36214b.get0(i));
        }

        public C7162b(C7160r c7160r, BitSet bitSet, int i, boolean z) {
            this.f36214b = c7160r;
            this.f36213a = bitSet;
            this.f36215c = i;
            this.f36216d = new C7160r(c7160r.size());
            this.f36217e = z;
        }

        /* renamed from: d */
        public final void m2330d(int i, C7157q c7157q) {
            BitSet bitSet = this.f36213a;
            boolean z = true;
            if (bitSet != null && bitSet.get(i)) {
                z = false;
            }
            if (z) {
                c7157q = c7157q.m2364S(this.f36215c);
                if (!this.f36217e) {
                    this.f36215c += c7157q.m2355x();
                }
            }
            this.f36217e = false;
            this.f36216d.set0(i, c7157q);
        }

        /* renamed from: e */
        public final C7160r m2329e() {
            if (this.f36214b.isImmutable()) {
                this.f36216d.setImmutable();
            }
            return this.f36216d;
        }
    }

    public C7160r(int i) {
        super(i);
    }

    /* renamed from: A */
    public C7157q m2347A(int i) {
        return (C7157q) get0(i);
    }

    /* renamed from: F */
    public void m2342F(int i, C7157q c7157q) {
        set0(i, c7157q);
    }

    @Override // p226y1.InterfaceC7404e
    /* renamed from: d */
    public InterfaceC7404e mo1519d(C7402c c7402c) {
        throw new UnsupportedOperationException("unsupported");
    }

    @Override // p226y1.InterfaceC7404e
    public C7402c getType(int i) {
        return m2347A(i).getType().getType();
    }

    /* renamed from: D */
    public static C7160r m2344D(C7157q c7157q) {
        C7160r c7160r = new C7160r(1);
        c7160r.m2342F(0, c7157q);
        return c7160r;
    }

    /* renamed from: E */
    public static C7160r m2343E(C7157q c7157q, C7157q c7157q2) {
        C7160r c7160r = new C7160r(2);
        c7160r.m2342F(0, c7157q);
        c7160r.m2342F(1, c7157q2);
        return c7160r;
    }

    /* renamed from: B */
    public int m2346B() {
        int size = size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += getType(i2).m1527n();
        }
        return i;
    }

    /* renamed from: C */
    public int m2345C(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (m2347A(i2).m2380B() == i) {
                return i2;
            }
        }
        return -1;
    }

    /* renamed from: H */
    public C7160r m2341H(BitSet bitSet) {
        int size = size() - bitSet.cardinality();
        if (size == 0) {
            return f36212a;
        }
        C7160r c7160r = new C7160r(size);
        int i = 0;
        for (int i2 = 0; i2 < size(); i2++) {
            if (!bitSet.get(i2)) {
                c7160r.set0(i, get0(i2));
                i++;
            }
        }
        if (isImmutable()) {
            c7160r.setImmutable();
        }
        return c7160r;
    }

    /* renamed from: I */
    public C7160r m2340I(int i, boolean z, BitSet bitSet) {
        int size = size();
        if (size == 0) {
            return this;
        }
        C7162b c7162b = new C7162b(bitSet, i, z);
        for (int i2 = 0; i2 < size; i2++) {
            c7162b.m2331c(i2);
        }
        return c7162b.m2329e();
    }

    /* renamed from: J */
    public C7160r m2339J(C7157q c7157q) {
        int size = size();
        C7160r c7160r = new C7160r(size + 1);
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            c7160r.set0(i2, get0(i));
            i = i2;
        }
        c7160r.set0(0, c7157q);
        if (isImmutable()) {
            c7160r.setImmutable();
        }
        return c7160r;
    }

    /* renamed from: K */
    public C7160r m2338K(int i) {
        int size = size();
        if (size == 0) {
            return this;
        }
        C7160r c7160r = new C7160r(size);
        for (int i2 = 0; i2 < size; i2++) {
            C7157q c7157q = (C7157q) get0(i2);
            if (c7157q != null) {
                c7160r.set0(i2, c7157q.m2365R(i));
            }
        }
        if (isImmutable()) {
            c7160r.setImmutable();
        }
        return c7160r;
    }

    /* renamed from: L */
    public C7160r m2337L() {
        int size = size() - 1;
        if (size == 0) {
            return f36212a;
        }
        C7160r c7160r = new C7160r(size);
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            c7160r.set0(i, get0(i2));
            i = i2;
        }
        if (isImmutable()) {
            c7160r.setImmutable();
        }
        return c7160r;
    }

    /* renamed from: M */
    public C7160r m2336M() {
        int size = size() - 1;
        if (size == 0) {
            return f36212a;
        }
        C7160r c7160r = new C7160r(size);
        for (int i = 0; i < size; i++) {
            c7160r.set0(i, get0(i));
        }
        if (isImmutable()) {
            c7160r.setImmutable();
        }
        return c7160r;
    }
}
