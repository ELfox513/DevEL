package p144o7;

import java.util.Arrays;
import p144o7.InterfaceC5242v1;
/* renamed from: o7.p1 */
/* loaded from: classes2.dex */
public final class C5199p1 {

    /* renamed from: f */
    public static final C5199p1 f19525f = new C5199p1(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f19526a;

    /* renamed from: b */
    public int[] f19527b;

    /* renamed from: c */
    public Object[] f19528c;

    /* renamed from: d */
    public int f19529d;

    /* renamed from: e */
    public boolean f19530e;

    public C5199p1() {
        this(0, new int[8], new Object[8], true);
    }

    /* renamed from: c */
    public static C5199p1 m14157c() {
        return f19525f;
    }

    /* renamed from: f */
    public static int m14154f(int[] iArr, int i) {
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        return i2;
    }

    /* renamed from: g */
    public static int m14153g(Object[] objArr, int i) {
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + objArr[i3].hashCode();
        }
        return i2;
    }

    /* renamed from: j */
    public static C5199p1 m14150j() {
        return new C5199p1();
    }

    /* renamed from: k */
    public static boolean m14149k(Object[] objArr, Object[] objArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!objArr[i2].equals(objArr2[i2])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: n */
    public static boolean m14146n(int[] iArr, int[] iArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C5199p1)) {
            return false;
        }
        C5199p1 c5199p1 = (C5199p1) obj;
        int i = this.f19526a;
        return i == c5199p1.f19526a && m14146n(this.f19527b, c5199p1.f19527b, i) && m14149k(this.f19528c, c5199p1.f19528c, this.f19526a);
    }

    /* renamed from: h */
    public void m14152h() {
        this.f19530e = false;
    }

    /* renamed from: l */
    public final void m14148l(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f19526a; i2++) {
            C5229u0.m13947c(sb, i, String.valueOf(C5230u1.m13944a(this.f19527b[i2])), this.f19528c[i2]);
        }
    }

    public C5199p1(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f19529d = -1;
        this.f19526a = i;
        this.f19527b = iArr;
        this.f19528c = objArr;
        this.f19530e = z;
    }

    /* renamed from: i */
    public static C5199p1 m14151i(C5199p1 c5199p1, C5199p1 c5199p12) {
        int i = c5199p1.f19526a + c5199p12.f19526a;
        int[] copyOf = Arrays.copyOf(c5199p1.f19527b, i);
        System.arraycopy(c5199p12.f19527b, 0, copyOf, c5199p1.f19526a, c5199p12.f19526a);
        Object[] copyOf2 = Arrays.copyOf(c5199p1.f19528c, i);
        System.arraycopy(c5199p12.f19528c, 0, copyOf2, c5199p1.f19526a, c5199p12.f19526a);
        return new C5199p1(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public void m14159a() {
        if (this.f19530e) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public final void m14158b() {
        int i;
        int i2 = this.f19526a;
        int[] iArr = this.f19527b;
        if (i2 == iArr.length) {
            if (i2 < 4) {
                i = 8;
            } else {
                i = i2 >> 1;
            }
            int i3 = i2 + i;
            this.f19527b = Arrays.copyOf(iArr, i3);
            this.f19528c = Arrays.copyOf(this.f19528c, i3);
        }
    }

    /* renamed from: d */
    public int m14156d() {
        int m14325X;
        int i = this.f19529d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f19526a; i3++) {
            int i4 = this.f19527b[i3];
            int m13944a = C5230u1.m13944a(i4);
            int m13943b = C5230u1.m13943b(i4);
            if (m13943b != 0) {
                if (m13943b != 1) {
                    if (m13943b != 2) {
                        if (m13943b != 3) {
                            if (m13943b == 5) {
                                m14325X = AbstractC5163k.m14304m(m13944a, ((Integer) this.f19528c[i3]).intValue());
                            } else {
                                throw new IllegalStateException(C5117c0.m14635d());
                            }
                        } else {
                            m14325X = (AbstractC5163k.m14328U(m13944a) * 2) + ((C5199p1) this.f19528c[i3]).m14156d();
                        }
                    } else {
                        m14325X = AbstractC5163k.m14312g(m13944a, (AbstractC5137h) this.f19528c[i3]);
                    }
                } else {
                    m14325X = AbstractC5163k.m14301o(m13944a, ((Long) this.f19528c[i3]).longValue());
                }
            } else {
                m14325X = AbstractC5163k.m14325X(m13944a, ((Long) this.f19528c[i3]).longValue());
            }
            i2 += m14325X;
        }
        this.f19529d = i2;
        return i2;
    }

    /* renamed from: e */
    public int m14155e() {
        int i = this.f19529d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f19526a; i3++) {
            i2 += AbstractC5163k.m14348I(C5230u1.m13944a(this.f19527b[i3]), (AbstractC5137h) this.f19528c[i3]);
        }
        this.f19529d = i2;
        return i2;
    }

    public int hashCode() {
        int i = this.f19526a;
        return ((((527 + i) * 31) + m14154f(this.f19527b, i)) * 31) + m14153g(this.f19528c, this.f19526a);
    }

    /* renamed from: q */
    public void m14143q(InterfaceC5242v1 interfaceC5242v1) {
        if (this.f19526a == 0) {
            return;
        }
        if (interfaceC5242v1.mo13853m() == InterfaceC5242v1.EnumC5243a.ASCENDING) {
            for (int i = 0; i < this.f19526a; i++) {
                m14144p(this.f19527b[i], this.f19528c[i], interfaceC5242v1);
            }
            return;
        }
        for (int i2 = this.f19526a - 1; i2 >= 0; i2--) {
            m14144p(this.f19527b[i2], this.f19528c[i2], interfaceC5242v1);
        }
    }

    /* renamed from: p */
    public static void m14144p(int i, Object obj, InterfaceC5242v1 interfaceC5242v1) {
        int m13944a = C5230u1.m13944a(i);
        int m13943b = C5230u1.m13943b(i);
        if (m13943b != 0) {
            if (m13943b != 1) {
                if (m13943b != 2) {
                    if (m13943b != 3) {
                        if (m13943b == 5) {
                            interfaceC5242v1.mo13859g(m13944a, ((Integer) obj).intValue());
                            return;
                        }
                        throw new RuntimeException(C5117c0.m14635d());
                    } else if (interfaceC5242v1.mo13853m() == InterfaceC5242v1.EnumC5243a.ASCENDING) {
                        interfaceC5242v1.mo13844v(m13944a);
                        ((C5199p1) obj).m14143q(interfaceC5242v1);
                        interfaceC5242v1.mo13874G(m13944a);
                        return;
                    } else {
                        interfaceC5242v1.mo13874G(m13944a);
                        ((C5199p1) obj).m14143q(interfaceC5242v1);
                        interfaceC5242v1.mo13844v(m13944a);
                        return;
                    }
                }
                interfaceC5242v1.mo13860f(m13944a, (AbstractC5137h) obj);
                return;
            }
            interfaceC5242v1.mo13855k(m13944a, ((Long) obj).longValue());
            return;
        }
        interfaceC5242v1.mo13847s(m13944a, ((Long) obj).longValue());
    }

    /* renamed from: m */
    public void m14147m(int i, Object obj) {
        m14159a();
        m14158b();
        int[] iArr = this.f19527b;
        int i2 = this.f19526a;
        iArr[i2] = i;
        this.f19528c[i2] = obj;
        this.f19526a = i2 + 1;
    }

    /* renamed from: o */
    public void m14145o(InterfaceC5242v1 interfaceC5242v1) {
        if (interfaceC5242v1.mo13853m() == InterfaceC5242v1.EnumC5243a.DESCENDING) {
            for (int i = this.f19526a - 1; i >= 0; i--) {
                interfaceC5242v1.mo13862d(C5230u1.m13944a(this.f19527b[i]), this.f19528c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f19526a; i2++) {
            interfaceC5242v1.mo13862d(C5230u1.m13944a(this.f19527b[i2]), this.f19528c[i2]);
        }
    }
}
