package p129n1;

import p015b2.C0437f;
import p015b2.C0441j;
import p218x1.C7214e0;
import p226y1.C7401b;
import p226y1.InterfaceC7404e;
/* renamed from: n1.g */
/* loaded from: classes.dex */
public final class C4699g extends C0437f {

    /* renamed from: a */
    public static final C4699g f18855a = new C4699g(0);

    public C4699g(int i) {
        super(i);
    }

    /* renamed from: A */
    public void m15732A(int i, int i2, int i3, int i4, C7214e0 c7214e0) {
        set0(i, new C4700a(i2, i3, i4, c7214e0));
    }

    /* renamed from: D */
    public C0441j m15729D(int i) {
        int i2;
        if (i >= -1) {
            if (i >= 0) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            int size = size();
            if (size == 0) {
                if (i2 != 0) {
                    return C0441j.m26466F(i);
                }
                return C0441j.f1530k;
            }
            C0441j c0441j = new C0441j(size + i2);
            for (int i3 = 0; i3 < size; i3++) {
                c0441j.m26457x(m15726x(i3).m15721d());
            }
            if (i2 != 0) {
                c0441j.m26457x(i);
            }
            c0441j.setImmutable();
            return c0441j;
        }
        throw new IllegalArgumentException("noException < -1");
    }

    /* renamed from: c */
    public int m15727c() {
        return (size() * 8) + 2;
    }

    /* renamed from: x */
    public C4700a m15726x(int i) {
        return (C4700a) get0(i);
    }

    /* renamed from: n1.g$a */
    /* loaded from: classes.dex */
    public static class C4700a {

        /* renamed from: a */
        public final int f18856a;

        /* renamed from: b */
        public final int f18857b;

        /* renamed from: c */
        public final int f18858c;

        /* renamed from: d */
        public final C7214e0 f18859d;

        /* renamed from: a */
        public boolean m15724a(int i) {
            return i >= this.f18856a && i < this.f18857b;
        }

        /* renamed from: b */
        public int m15723b() {
            return this.f18857b;
        }

        /* renamed from: c */
        public C7214e0 m15722c() {
            C7214e0 c7214e0 = this.f18859d;
            return c7214e0 != null ? c7214e0 : C7214e0.f36571k;
        }

        /* renamed from: d */
        public int m15721d() {
            return this.f18858c;
        }

        /* renamed from: e */
        public int m15720e() {
            return this.f18856a;
        }

        public C4700a(int i, int i2, int i3, C7214e0 c7214e0) {
            if (i >= 0) {
                if (i2 >= i) {
                    if (i3 >= 0) {
                        this.f18856a = i;
                        this.f18857b = i2;
                        this.f18858c = i3;
                        this.f18859d = c7214e0;
                        return;
                    }
                    throw new IllegalArgumentException("handlerPc < 0");
                }
                throw new IllegalArgumentException("endPc < startPc");
            }
            throw new IllegalArgumentException("startPc < 0");
        }
    }

    /* renamed from: B */
    public void m15731B(int i, C4700a c4700a) {
        if (c4700a != null) {
            set0(i, c4700a);
            return;
        }
        throw new NullPointerException("item == null");
    }

    /* renamed from: E */
    public static boolean m15728E(C4700a c4700a, C4700a[] c4700aArr, int i) {
        C7214e0 m15722c = c4700a.m15722c();
        for (int i2 = 0; i2 < i; i2++) {
            C7214e0 m15722c2 = c4700aArr[i2].m15722c();
            if (m15722c2 == m15722c || m15722c2 == C7214e0.f36571k) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: C */
    public InterfaceC7404e m15730C() {
        int size = size();
        if (size == 0) {
            return C7401b.f37044a;
        }
        C7401b c7401b = new C7401b(size);
        for (int i = 0; i < size; i++) {
            c7401b.m1551I(i, m15726x(i).m15722c().m2097x());
        }
        c7401b.setImmutable();
        return c7401b;
    }

    /* renamed from: z */
    public C4699g m15725z(int i) {
        int size = size();
        C4700a[] c4700aArr = new C4700a[size];
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            C4700a m15726x = m15726x(i3);
            if (m15726x.m15724a(i) && m15728E(m15726x, c4700aArr, i2)) {
                c4700aArr[i2] = m15726x;
                i2++;
            }
        }
        if (i2 == 0) {
            return f18855a;
        }
        C4699g c4699g = new C4699g(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            c4699g.m15731B(i4, c4700aArr[i4]);
        }
        c4699g.setImmutable();
        return c4699g;
    }
}
