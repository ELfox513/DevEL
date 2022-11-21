package p147p1;

import p015b2.C0432d;
import p015b2.C0438g;
import p120m1.C4623y;
import p156q1.C5399i;
import p156q1.InterfaceC5391a;
import p156q1.InterfaceC5400j;
import p218x1.C7212d0;
import p218x1.InterfaceC7206b;
/* renamed from: p1.b */
/* loaded from: classes.dex */
public class C5296b {
    /* renamed from: a */
    public final InterfaceC5391a m13611a(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        String str;
        if (c5305f != null) {
            if (i >= 0 && i < 4) {
                C7212d0 c7212d0 = null;
                try {
                    C0432d m13581e = c5305f.m13581e();
                    InterfaceC7206b m13580f = c5305f.m13580f();
                    int m26509n = m13581e.m26509n(i2);
                    int i3 = i2 + 2;
                    int m26514i = m13581e.m26514i(i3);
                    C7212d0 c7212d02 = (C7212d0) m13580f.get(m26509n);
                    if (interfaceC5400j != null) {
                        try {
                            interfaceC5400j.m13345a(m13581e, i2, 2, "name: " + c7212d02.toHuman());
                            interfaceC5400j.m13345a(m13581e, i3, 4, "length: " + C0438g.m26475j(m26514i));
                        } catch (C5399i e) {
                            e = e;
                            c7212d0 = c7212d02;
                            StringBuilder sb = new StringBuilder();
                            sb.append("...while parsing ");
                            if (c7212d0 != null) {
                                str = c7212d0.toHuman() + " ";
                            } else {
                                str = "";
                            }
                            sb.append(str);
                            sb.append("attribute at offset ");
                            sb.append(C0438g.m26475j(i2));
                            e.m16013a(sb.toString());
                            throw e;
                        }
                    }
                    return mo13548b(c5305f, i, c7212d02.m2112u(), i2 + 6, m26514i, interfaceC5400j);
                } catch (C5399i e2) {
                    e = e2;
                }
            } else {
                throw new IllegalArgumentException("bad context");
            }
        } else {
            throw new NullPointerException("cf == null");
        }
    }

    /* renamed from: b */
    public InterfaceC5391a mo13548b(C5305f c5305f, int i, String str, int i2, int i3, InterfaceC5400j interfaceC5400j) {
        C0432d m13581e = c5305f.m13581e();
        C4623y c4623y = new C4623y(str, m13581e, i2, i3, c5305f.m13580f());
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i2, i3, "attribute data");
        }
        return c4623y;
    }
}
