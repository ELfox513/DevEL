package p147p1;

import p015b2.C0432d;
import p015b2.C0438g;
import p156q1.C5399i;
import p156q1.C5401k;
import p156q1.InterfaceC5391a;
import p156q1.InterfaceC5400j;
/* renamed from: p1.c */
/* loaded from: classes.dex */
public final class C5297c {

    /* renamed from: a */
    public final C5305f f19863a;

    /* renamed from: b */
    public final int f19864b;

    /* renamed from: c */
    public final int f19865c;

    /* renamed from: d */
    public final C5296b f19866d;

    /* renamed from: e */
    public final C5401k f19867e;

    /* renamed from: f */
    public int f19868f;

    /* renamed from: g */
    public InterfaceC5400j f19869g;

    /* renamed from: e */
    public void m13606e(InterfaceC5400j interfaceC5400j) {
        this.f19869g = interfaceC5400j;
    }

    /* renamed from: c */
    public final void m13608c() {
        int size = this.f19867e.size();
        int i = this.f19865c + 2;
        C0432d m13581e = this.f19863a.m13581e();
        InterfaceC5400j interfaceC5400j = this.f19869g;
        if (interfaceC5400j != null) {
            int i2 = this.f19865c;
            interfaceC5400j.m13345a(m13581e, i2, 2, "attributes_count: " + C0438g.m26478g(size));
        }
        for (int i3 = 0; i3 < size; i3++) {
            try {
                InterfaceC5400j interfaceC5400j2 = this.f19869g;
                if (interfaceC5400j2 != null) {
                    interfaceC5400j2.m13345a(m13581e, i, 0, "\nattributes[" + i3 + "]:\n");
                    this.f19869g.m13344b(1);
                }
                InterfaceC5391a m13611a = this.f19866d.m13611a(this.f19863a, this.f19864b, i, this.f19869g);
                i += m13611a.mo13348c();
                this.f19867e.m13337z(i3, m13611a);
                InterfaceC5400j interfaceC5400j3 = this.f19869g;
                if (interfaceC5400j3 != null) {
                    interfaceC5400j3.m13344b(-1);
                    InterfaceC5400j interfaceC5400j4 = this.f19869g;
                    interfaceC5400j4.m13345a(m13581e, i, 0, "end attributes[" + i3 + "]\n");
                }
            } catch (C5399i e) {
                e.m16013a("...while parsing attributes[" + i3 + "]");
                throw e;
            } catch (RuntimeException e2) {
                C5399i c5399i = new C5399i(e2);
                c5399i.m16013a("...while parsing attributes[" + i3 + "]");
                throw c5399i;
            }
        }
        this.f19868f = i;
    }

    /* renamed from: d */
    public final void m13607d() {
        if (this.f19868f < 0) {
            m13608c();
        }
    }

    public C5297c(C5305f c5305f, int i, int i2, C5296b c5296b) {
        if (c5305f != null) {
            if (c5296b != null) {
                int m26509n = c5305f.m13581e().m26509n(i2);
                this.f19863a = c5305f;
                this.f19864b = i;
                this.f19865c = i2;
                this.f19866d = c5296b;
                this.f19867e = new C5401k(m26509n);
                this.f19868f = -1;
                return;
            }
            throw new NullPointerException("attributeFactory == null");
        }
        throw new NullPointerException("cf == null");
    }

    /* renamed from: a */
    public int m13610a() {
        m13607d();
        return this.f19868f;
    }

    /* renamed from: b */
    public C5401k m13609b() {
        m13607d();
        return this.f19867e;
    }
}
