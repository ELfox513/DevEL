package p129n1;

import p015b2.C0437f;
import p210w1.C7151k;
import p218x1.C7212d0;
import p226y1.C7402c;
/* renamed from: n1.n */
/* loaded from: classes.dex */
public final class C4711n extends C0437f {

    /* renamed from: a */
    public static final C4711n f18884a = new C4711n(0);

    /* renamed from: n1.n$a */
    /* loaded from: classes.dex */
    public static class C4712a {

        /* renamed from: a */
        public final int f18885a;

        /* renamed from: b */
        public final int f18886b;

        /* renamed from: c */
        public final C7212d0 f18887c;

        /* renamed from: d */
        public final C7212d0 f18888d;

        /* renamed from: e */
        public final C7212d0 f18889e;

        /* renamed from: f */
        public final int f18890f;

        /* renamed from: b */
        public C7151k m15653b() {
            return C7151k.m2397j(this.f18887c, this.f18889e);
        }

        /* renamed from: c */
        public final C7212d0 m15652c() {
            return this.f18889e;
        }

        /* renamed from: d */
        public C7402c m15651d() {
            return C7402c.m1543D(this.f18888d.m2112u());
        }

        /* renamed from: f */
        public boolean m15649f(int i, int i2) {
            int i3;
            return i2 == this.f18890f && i >= (i3 = this.f18885a) && i < i3 + this.f18886b;
        }

        /* renamed from: g */
        public C4712a m15648g(C7212d0 c7212d0) {
            return new C4712a(this.f18885a, this.f18886b, this.f18887c, this.f18888d, c7212d0, this.f18890f);
        }

        /* renamed from: e */
        public boolean m15650e(C4712a c4712a) {
            if (this.f18885a == c4712a.f18885a && this.f18886b == c4712a.f18886b && this.f18890f == c4712a.f18890f && this.f18887c.equals(c4712a.f18887c)) {
                return true;
            }
            return false;
        }

        public C4712a(int i, int i2, C7212d0 c7212d0, C7212d0 c7212d02, C7212d0 c7212d03, int i3) {
            if (i >= 0) {
                if (i2 >= 0) {
                    if (c7212d0 != null) {
                        if (c7212d02 == null && c7212d03 == null) {
                            throw new NullPointerException("(descriptor == null) && (signature == null)");
                        }
                        if (i3 >= 0) {
                            this.f18885a = i;
                            this.f18886b = i2;
                            this.f18887c = c7212d0;
                            this.f18888d = c7212d02;
                            this.f18889e = c7212d03;
                            this.f18890f = i3;
                            return;
                        }
                        throw new IllegalArgumentException("index < 0");
                    }
                    throw new NullPointerException("name == null");
                }
                throw new IllegalArgumentException("length < 0");
            }
            throw new IllegalArgumentException("startPc < 0");
        }
    }

    public C4711n(int i) {
        super(i);
    }

    /* renamed from: D */
    public void m15658D(int i, int i2, int i3, C7212d0 c7212d0, C7212d0 c7212d02, C7212d0 c7212d03, int i4) {
        set0(i, new C4712a(i2, i3, c7212d0, c7212d02, c7212d03, i4));
    }

    /* renamed from: z */
    public C4712a m15655z(int i) {
        return (C4712a) get0(i);
    }

    /* renamed from: x */
    public static C4711n m15656x(C4711n c4711n, C4711n c4711n2) {
        if (c4711n == f18884a) {
            return c4711n2;
        }
        int size = c4711n.size();
        int size2 = c4711n2.size();
        C4711n c4711n3 = new C4711n(size + size2);
        for (int i = 0; i < size; i++) {
            c4711n3.m15657E(i, c4711n.m15655z(i));
        }
        for (int i2 = 0; i2 < size2; i2++) {
            c4711n3.m15657E(size + i2, c4711n2.m15655z(i2));
        }
        c4711n3.setImmutable();
        return c4711n3;
    }

    /* renamed from: E */
    public void m15657E(int i, C4712a c4712a) {
        if (c4712a != null) {
            set0(i, c4712a);
            return;
        }
        throw new NullPointerException("item == null");
    }

    /* renamed from: B */
    public static C4711n m15660B(C4711n c4711n, C4711n c4711n2) {
        int size = c4711n.size();
        C4711n c4711n3 = new C4711n(size);
        for (int i = 0; i < size; i++) {
            C4712a m15655z = c4711n.m15655z(i);
            C4712a m15661A = c4711n2.m15661A(m15655z);
            if (m15661A != null) {
                m15655z = m15655z.m15648g(m15661A.m15652c());
            }
            c4711n3.m15657E(i, m15655z);
        }
        c4711n3.setImmutable();
        return c4711n3;
    }

    /* renamed from: A */
    public C4712a m15661A(C4712a c4712a) {
        int size = size();
        for (int i = 0; i < size; i++) {
            C4712a c4712a2 = (C4712a) get0(i);
            if (c4712a2 != null && c4712a2.m15650e(c4712a)) {
                return c4712a2;
            }
        }
        return null;
    }

    /* renamed from: C */
    public C4712a m15659C(int i, int i2) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            C4712a c4712a = (C4712a) get0(i3);
            if (c4712a != null && c4712a.m15649f(i, i2)) {
                return c4712a;
            }
        }
        return null;
    }
}
