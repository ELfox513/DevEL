package p147p1;

import p015b2.C0432d;
import p015b2.C0438g;
import p156q1.C5399i;
import p156q1.C5401k;
import p156q1.InterfaceC5392b;
import p156q1.InterfaceC5396f;
import p156q1.InterfaceC5400j;
import p218x1.C7205a0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.InterfaceC7206b;
/* renamed from: p1.h */
/* loaded from: classes.dex */
public abstract class AbstractC5308h {

    /* renamed from: a */
    public final C5305f f19896a;

    /* renamed from: b */
    public final C7214e0 f19897b;

    /* renamed from: c */
    public final int f19898c;

    /* renamed from: d */
    public final C5296b f19899d;

    /* renamed from: e */
    public int f19900e;

    /* renamed from: f */
    public InterfaceC5400j f19901f;

    /* renamed from: a */
    public abstract int mo13553a();

    /* renamed from: c */
    public final C7214e0 m13558c() {
        return this.f19897b;
    }

    /* renamed from: e */
    public abstract String mo13552e(int i);

    /* renamed from: f */
    public abstract String mo13551f();

    /* renamed from: i */
    public abstract InterfaceC5396f mo13550i(int i, int i2, C7205a0 c7205a0, InterfaceC5392b interfaceC5392b);

    /* renamed from: j */
    public final void m13554j(InterfaceC5400j interfaceC5400j) {
        this.f19901f = interfaceC5400j;
    }

    /* renamed from: b */
    public final int m13559b() {
        return this.f19896a.m13581e().m26509n(this.f19898c);
    }

    /* renamed from: g */
    public final void m13556g() {
        int i;
        InterfaceC7206b interfaceC7206b;
        int mo13553a = mo13553a();
        int m13559b = m13559b();
        int i2 = this.f19898c + 2;
        C0432d m13581e = this.f19896a.m13581e();
        InterfaceC7206b m13580f = this.f19896a.m13580f();
        InterfaceC5400j interfaceC5400j = this.f19901f;
        if (interfaceC5400j != null) {
            int i3 = this.f19898c;
            interfaceC5400j.m13345a(m13581e, i3, 2, mo13551f() + "s_count: " + C0438g.m26478g(m13559b));
        }
        int i4 = 0;
        while (i4 < m13559b) {
            try {
                int m26509n = m13581e.m26509n(i2);
                int i5 = i2 + 2;
                int m26509n2 = m13581e.m26509n(i5);
                int i6 = i2 + 4;
                int m26509n3 = m13581e.m26509n(i6);
                C7212d0 c7212d0 = (C7212d0) m13580f.get(m26509n2);
                C7212d0 c7212d02 = (C7212d0) m13580f.get(m26509n3);
                InterfaceC5400j interfaceC5400j2 = this.f19901f;
                int i7 = m13559b;
                if (interfaceC5400j2 != null) {
                    interfaceC7206b = m13580f;
                    interfaceC5400j2.m13342d(m13581e, i2, c7212d0.m2112u(), c7212d02.m2112u());
                    InterfaceC5400j interfaceC5400j3 = this.f19901f;
                    interfaceC5400j3.m13345a(m13581e, i2, 0, "\n" + mo13551f() + "s[" + i4 + "]:\n");
                    this.f19901f.m13344b(1);
                    InterfaceC5400j interfaceC5400j4 = this.f19901f;
                    StringBuilder sb = new StringBuilder();
                    sb.append("access_flags: ");
                    sb.append(mo13552e(m26509n));
                    interfaceC5400j4.m13345a(m13581e, i2, 2, sb.toString());
                    InterfaceC5400j interfaceC5400j5 = this.f19901f;
                    interfaceC5400j5.m13345a(m13581e, i5, 2, "name: " + c7212d0.toHuman());
                    InterfaceC5400j interfaceC5400j6 = this.f19901f;
                    interfaceC5400j6.m13345a(m13581e, i6, 2, "descriptor: " + c7212d02.toHuman());
                } else {
                    interfaceC7206b = m13580f;
                }
                C5297c c5297c = new C5297c(this.f19896a, mo13553a, i2 + 6, this.f19899d);
                c5297c.m13606e(this.f19901f);
                i2 = c5297c.m13610a();
                C5401k m13609b = c5297c.m13609b();
                m13609b.setImmutable();
                InterfaceC5396f mo13550i = mo13550i(i4, m26509n, new C7205a0(c7212d0, c7212d02), m13609b);
                InterfaceC5400j interfaceC5400j7 = this.f19901f;
                if (interfaceC5400j7 != null) {
                    interfaceC5400j7.m13344b(-1);
                    InterfaceC5400j interfaceC5400j8 = this.f19901f;
                    interfaceC5400j8.m13345a(m13581e, i2, 0, "end " + mo13551f() + "s[" + i4 + "]\n");
                    i = i4;
                    try {
                        this.f19901f.m13343c(m13581e, i2, c7212d0.m2112u(), c7212d02.m2112u(), mo13550i);
                    } catch (C5399i e) {
                        e = e;
                        e.m16013a("...while parsing " + mo13551f() + "s[" + i + "]");
                        throw e;
                    } catch (RuntimeException e2) {
                        e = e2;
                        C5399i c5399i = new C5399i(e);
                        c5399i.m16013a("...while parsing " + mo13551f() + "s[" + i + "]");
                        throw c5399i;
                    }
                } else {
                    i = i4;
                }
                i4 = i + 1;
                m13559b = i7;
                m13580f = interfaceC7206b;
            } catch (C5399i e3) {
                e = e3;
                i = i4;
            } catch (RuntimeException e4) {
                e = e4;
                i = i4;
            }
        }
        this.f19900e = i2;
    }

    /* renamed from: h */
    public final void m13555h() {
        if (this.f19900e < 0) {
            m13556g();
        }
    }

    public AbstractC5308h(C5305f c5305f, C7214e0 c7214e0, int i, C5296b c5296b) {
        if (c5305f != null) {
            if (i >= 0) {
                if (c5296b != null) {
                    this.f19896a = c5305f;
                    this.f19897b = c7214e0;
                    this.f19898c = i;
                    this.f19899d = c5296b;
                    this.f19900e = -1;
                    return;
                }
                throw new NullPointerException("attributeFactory == null");
            }
            throw new IllegalArgumentException("offset < 0");
        }
        throw new NullPointerException("cf == null");
    }

    /* renamed from: d */
    public int m13557d() {
        m13555h();
        return this.f19900e;
    }
}
