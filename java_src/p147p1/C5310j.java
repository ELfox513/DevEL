package p147p1;

import java.io.IOException;
import p015b2.C0432d;
import p015b2.C0438g;
import p120m1.C4598a;
import p120m1.C4599b;
import p120m1.C4600c;
import p120m1.C4601d;
import p120m1.C4602e;
import p120m1.C4603f;
import p120m1.C4604g;
import p120m1.C4605h;
import p120m1.C4606i;
import p120m1.C4607j;
import p120m1.C4608k;
import p120m1.C4609l;
import p120m1.C4610m;
import p120m1.C4611n;
import p120m1.C4612o;
import p120m1.C4613p;
import p120m1.C4614q;
import p120m1.C4615r;
import p120m1.C4616s;
import p120m1.C4621x;
import p129n1.C4694c;
import p129n1.C4695d;
import p129n1.C4699g;
import p129n1.C4702i;
import p129n1.C4709m;
import p129n1.C4711n;
import p156q1.C5399i;
import p156q1.C5401k;
import p156q1.InterfaceC5391a;
import p156q1.InterfaceC5400j;
import p201v1.EnumC6970b;
import p210w1.C7136a;
import p218x1.AbstractC7218g0;
import p218x1.C7205a0;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7237y;
import p218x1.InterfaceC7206b;
/* renamed from: p1.j */
/* loaded from: classes.dex */
public class C5310j extends C5296b {

    /* renamed from: a */
    public static final C5310j f19903a = new C5310j();

    /* renamed from: y */
    public static InterfaceC5391a m13525y() {
        throw new C5399i("severely truncated attribute");
    }

    /* renamed from: z */
    public static InterfaceC5391a m13524z() {
        throw new C5399i("truncated attribute");
    }

    /* renamed from: c */
    public final InterfaceC5391a m13547c(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            m13525y();
        }
        return new C4598a(new C5295a(c5305f, i, i2, interfaceC5400j).m13614j(), i2);
    }

    /* renamed from: d */
    public final InterfaceC5391a m13546d(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            return m13525y();
        }
        C0432d m13581e = c5305f.m13581e();
        int m26509n = m13581e.m26509n(i);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "num_boostrap_methods: " + C0438g.m26478g(m26509n));
        }
        return new C4599b(m13536n(m13581e, c5305f.m13580f(), c5305f.m13570p(), m26509n, i + 2, i2 - 2, interfaceC5400j));
    }

    /* renamed from: f */
    public final InterfaceC5391a m13544f(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 != 2) {
            return m13526x(2);
        }
        C0432d m13581e = c5305f.m13581e();
        AbstractC7218g0 abstractC7218g0 = (AbstractC7218g0) c5305f.m13580f().get(m13581e.m26509n(i));
        C4601d c4601d = new C4601d(abstractC7218g0);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "value: " + abstractC7218g0);
        }
        return c4601d;
    }

    /* renamed from: h */
    public final InterfaceC5391a m13542h(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 != 4) {
            m13526x(4);
        }
        C0432d m13581e = c5305f.m13581e();
        InterfaceC7206b m13580f = c5305f.m13580f();
        C7214e0 c7214e0 = (C7214e0) m13580f.get(m13581e.m26509n(i));
        int i3 = i + 2;
        C7205a0 c7205a0 = (C7205a0) m13580f.mo2092u(m13581e.m26509n(i3));
        C4603f c4603f = new C4603f(c7214e0, c7205a0);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "class: " + c7214e0);
            interfaceC5400j.m13345a(m13581e, i3, 2, "method: " + C5305f.m13561y(c7205a0));
        }
        return c4603f;
    }

    /* renamed from: i */
    public final InterfaceC5391a m13541i(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            return m13525y();
        }
        C0432d m13581e = c5305f.m13581e();
        int m26509n = m13581e.m26509n(i);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "number_of_exceptions: " + C0438g.m26478g(m26509n));
        }
        int i3 = i + 2;
        int i4 = m26509n * 2;
        if (i2 - 2 != i4) {
            m13526x(i4 + 2);
        }
        return new C4604g(c5305f.m13567s(i3, m26509n));
    }

    /* renamed from: k */
    public final InterfaceC5391a m13539k(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            return m13525y();
        }
        C0432d m13581e = c5305f.m13581e();
        int m26509n = m13581e.m26509n(i);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "line_number_table_length: " + C0438g.m26478g(m26509n));
        }
        int i3 = i + 2;
        int i4 = m26509n * 4;
        if (i2 - 2 != i4) {
            m13526x(i4 + 2);
        }
        C4709m c4709m = new C4709m(m26509n);
        for (int i5 = 0; i5 < m26509n; i5++) {
            int m26509n2 = m13581e.m26509n(i3);
            int m26509n3 = m13581e.m26509n(i3 + 2);
            c4709m.m15667B(i5, m26509n2, m26509n3);
            if (interfaceC5400j != null) {
                interfaceC5400j.m13345a(m13581e, i3, 4, C0438g.m26478g(m26509n2) + " " + m26509n3);
            }
            i3 += 4;
        }
        c4709m.setImmutable();
        return new C4606i(c4709m);
    }

    /* renamed from: l */
    public final InterfaceC5391a m13538l(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            return m13525y();
        }
        C0432d m13581e = c5305f.m13581e();
        int m26509n = m13581e.m26509n(i);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "local_variable_table_length: " + C0438g.m26478g(m26509n));
        }
        return new C4607j(m13535o(m13581e.m26505r(i + 2, i + i2), c5305f.m13580f(), interfaceC5400j, m26509n, false));
    }

    /* renamed from: m */
    public final InterfaceC5391a m13537m(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            return m13525y();
        }
        C0432d m13581e = c5305f.m13581e();
        int m26509n = m13581e.m26509n(i);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "local_variable_type_table_length: " + C0438g.m26478g(m26509n));
        }
        return new C4608k(m13535o(m13581e.m26505r(i + 2, i + i2), c5305f.m13580f(), interfaceC5400j, m26509n, true));
    }

    /* renamed from: p */
    public final InterfaceC5391a m13534p(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            m13525y();
        }
        return new C4609l(new C5295a(c5305f, i, i2, interfaceC5400j).m13621c(EnumC6970b.BUILD), i2);
    }

    /* renamed from: q */
    public final InterfaceC5391a m13533q(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            m13525y();
        }
        return new C4610m(new C5295a(c5305f, i, i2, interfaceC5400j).m13616h(EnumC6970b.BUILD), i2);
    }

    /* renamed from: r */
    public final InterfaceC5391a m13532r(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            m13525y();
        }
        return new C4611n(new C5295a(c5305f, i, i2, interfaceC5400j).m13621c(EnumC6970b.RUNTIME), i2);
    }

    /* renamed from: s */
    public final InterfaceC5391a m13531s(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            m13525y();
        }
        return new C4612o(new C5295a(c5305f, i, i2, interfaceC5400j).m13616h(EnumC6970b.RUNTIME), i2);
    }

    /* renamed from: t */
    public final InterfaceC5391a m13530t(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 != 2) {
            m13526x(2);
        }
        C0432d m13581e = c5305f.m13581e();
        C7212d0 c7212d0 = (C7212d0) c5305f.m13580f().get(m13581e.m26509n(i));
        C4613p c4613p = new C4613p(c7212d0);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "signature: " + c7212d0);
        }
        return c4613p;
    }

    /* renamed from: v */
    public final InterfaceC5391a m13528v(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 != 2) {
            m13526x(2);
        }
        C0432d m13581e = c5305f.m13581e();
        C7212d0 c7212d0 = (C7212d0) c5305f.m13580f().get(m13581e.m26509n(i));
        C4615r c4615r = new C4615r(c7212d0);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "source: " + c7212d0);
        }
        return c4615r;
    }

    /* renamed from: x */
    public static InterfaceC5391a m13526x(int i) {
        throw new C5399i("bad attribute length; expected length " + C0438g.m26475j(i));
    }

    @Override // p147p1.C5296b
    /* renamed from: b */
    public InterfaceC5391a mo13548b(C5305f c5305f, int i, String str, int i2, int i3, InterfaceC5400j interfaceC5400j) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        if (str == "LineNumberTable") {
                            return m13539k(c5305f, i2, i3, interfaceC5400j);
                        }
                        if (str == "LocalVariableTable") {
                            return m13538l(c5305f, i2, i3, interfaceC5400j);
                        }
                        if (str == "LocalVariableTypeTable") {
                            return m13537m(c5305f, i2, i3, interfaceC5400j);
                        }
                    }
                } else if (str == "AnnotationDefault") {
                    return m13547c(c5305f, i2, i3, interfaceC5400j);
                } else {
                    if (str == "Code") {
                        return m13545e(c5305f, i2, i3, interfaceC5400j);
                    }
                    if (str == "Deprecated") {
                        return m13543g(c5305f, i2, i3, interfaceC5400j);
                    }
                    if (str == "Exceptions") {
                        return m13541i(c5305f, i2, i3, interfaceC5400j);
                    }
                    if (str == "RuntimeInvisibleAnnotations") {
                        return m13534p(c5305f, i2, i3, interfaceC5400j);
                    }
                    if (str == "RuntimeVisibleAnnotations") {
                        return m13532r(c5305f, i2, i3, interfaceC5400j);
                    }
                    if (str == "RuntimeInvisibleParameterAnnotations") {
                        return m13533q(c5305f, i2, i3, interfaceC5400j);
                    }
                    if (str == "RuntimeVisibleParameterAnnotations") {
                        return m13531s(c5305f, i2, i3, interfaceC5400j);
                    }
                    if (str == "Signature") {
                        return m13530t(c5305f, i2, i3, interfaceC5400j);
                    }
                    if (str == "Synthetic") {
                        return m13527w(c5305f, i2, i3, interfaceC5400j);
                    }
                }
            } else if (str == "ConstantValue") {
                return m13544f(c5305f, i2, i3, interfaceC5400j);
            } else {
                if (str == "Deprecated") {
                    return m13543g(c5305f, i2, i3, interfaceC5400j);
                }
                if (str == "RuntimeInvisibleAnnotations") {
                    return m13534p(c5305f, i2, i3, interfaceC5400j);
                }
                if (str == "RuntimeVisibleAnnotations") {
                    return m13532r(c5305f, i2, i3, interfaceC5400j);
                }
                if (str == "Signature") {
                    return m13530t(c5305f, i2, i3, interfaceC5400j);
                }
                if (str == "Synthetic") {
                    return m13527w(c5305f, i2, i3, interfaceC5400j);
                }
            }
        } else if (str == "BootstrapMethods") {
            return m13546d(c5305f, i2, i3, interfaceC5400j);
        } else {
            if (str == "Deprecated") {
                return m13543g(c5305f, i2, i3, interfaceC5400j);
            }
            if (str == "EnclosingMethod") {
                return m13542h(c5305f, i2, i3, interfaceC5400j);
            }
            if (str == "InnerClasses") {
                return m13540j(c5305f, i2, i3, interfaceC5400j);
            }
            if (str == "RuntimeInvisibleAnnotations") {
                return m13534p(c5305f, i2, i3, interfaceC5400j);
            }
            if (str == "RuntimeVisibleAnnotations") {
                return m13532r(c5305f, i2, i3, interfaceC5400j);
            }
            if (str == "Synthetic") {
                return m13527w(c5305f, i2, i3, interfaceC5400j);
            }
            if (str == "Signature") {
                return m13530t(c5305f, i2, i3, interfaceC5400j);
            }
            if (str == "SourceDebugExtension") {
                return m13529u(c5305f, i2, i3, interfaceC5400j);
            }
            if (str == "SourceFile") {
                return m13528v(c5305f, i2, i3, interfaceC5400j);
            }
        }
        return super.mo13548b(c5305f, i, str, i2, i3, interfaceC5400j);
    }

    /* renamed from: e */
    public final InterfaceC5391a m13545e(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        C4699g c4699g;
        String human;
        if (i2 < 12) {
            return m13525y();
        }
        C0432d m13581e = c5305f.m13581e();
        InterfaceC7206b m13580f = c5305f.m13580f();
        int m26509n = m13581e.m26509n(i);
        int i3 = i + 2;
        int m26509n2 = m13581e.m26509n(i3);
        int i4 = i + 4;
        int m26514i = m13581e.m26514i(i4);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "max_stack: " + C0438g.m26478g(m26509n));
            interfaceC5400j.m13345a(m13581e, i3, 2, "max_locals: " + C0438g.m26478g(m26509n2));
            interfaceC5400j.m13345a(m13581e, i4, 4, "code_length: " + C0438g.m26475j(m26514i));
        }
        int i5 = i + 8;
        int i6 = i2 - 8;
        if (i6 < m26514i + 4) {
            return m13524z();
        }
        int i7 = i5 + m26514i;
        int i8 = i6 - m26514i;
        C4702i c4702i = new C4702i(m13581e.m26505r(i5, i7), m13580f);
        if (interfaceC5400j != null) {
            c4702i.m15716b(new C5304e(c4702i.m15715c(), interfaceC5400j));
        }
        int m26509n3 = m13581e.m26509n(i7);
        if (m26509n3 == 0) {
            c4699g = C4699g.f18855a;
        } else {
            c4699g = new C4699g(m26509n3);
        }
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i7, 2, "exception_table_length: " + C0438g.m26478g(m26509n3));
        }
        int i9 = i7 + 2;
        int i10 = i8 - 2;
        if (i10 < (m26509n3 * 8) + 2) {
            return m13524z();
        }
        for (int i11 = 0; i11 < m26509n3; i11++) {
            if (interfaceC5400j != null) {
                interfaceC5400j.m13344b(1);
            }
            int m26509n4 = m13581e.m26509n(i9);
            int m26509n5 = m13581e.m26509n(i9 + 2);
            int m26509n6 = m13581e.m26509n(i9 + 4);
            C7214e0 c7214e0 = (C7214e0) m13580f.mo2092u(m13581e.m26509n(i9 + 6));
            c4699g.m15732A(i11, m26509n4, m26509n5, m26509n6, c7214e0);
            if (interfaceC5400j != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(C0438g.m26478g(m26509n4));
                sb.append("..");
                sb.append(C0438g.m26478g(m26509n5));
                sb.append(" -> ");
                sb.append(C0438g.m26478g(m26509n6));
                sb.append(" ");
                if (c7214e0 == null) {
                    human = "<any>";
                } else {
                    human = c7214e0.toHuman();
                }
                sb.append(human);
                interfaceC5400j.m13345a(m13581e, i9, 8, sb.toString());
            }
            i9 += 8;
            i10 -= 8;
            if (interfaceC5400j != null) {
                interfaceC5400j.m13344b(-1);
            }
        }
        c4699g.setImmutable();
        C5297c c5297c = new C5297c(c5305f, 3, i9, this);
        c5297c.m13606e(interfaceC5400j);
        C5401k m13609b = c5297c.m13609b();
        m13609b.setImmutable();
        int m13610a = c5297c.m13610a() - i9;
        if (m13610a != i10) {
            return m13526x(m13610a + (i9 - i));
        }
        return new C4600c(m26509n, m26509n2, c4702i, c4699g, m13609b);
    }

    /* renamed from: g */
    public final InterfaceC5391a m13543g(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 != 0) {
            return m13526x(0);
        }
        return new C4602e();
    }

    /* renamed from: j */
    public final InterfaceC5391a m13540j(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 < 2) {
            return m13525y();
        }
        C0432d m13581e = c5305f.m13581e();
        InterfaceC7206b m13580f = c5305f.m13580f();
        int m26509n = m13581e.m26509n(i);
        if (interfaceC5400j != null) {
            interfaceC5400j.m13345a(m13581e, i, 2, "number_of_classes: " + C0438g.m26478g(m26509n));
        }
        int i3 = i + 2;
        int i4 = m26509n * 8;
        if (i2 - 2 != i4) {
            m13526x(i4 + 2);
        }
        C4621x c4621x = new C4621x(m26509n);
        for (int i5 = 0; i5 < m26509n; i5++) {
            int m26509n2 = m13581e.m26509n(i3);
            int i6 = i3 + 2;
            int m26509n3 = m13581e.m26509n(i6);
            int i7 = i3 + 4;
            int m26509n4 = m13581e.m26509n(i7);
            int i8 = i3 + 6;
            int m26509n5 = m13581e.m26509n(i8);
            C7214e0 c7214e0 = (C7214e0) m13580f.get(m26509n2);
            C7214e0 c7214e02 = (C7214e0) m13580f.mo2092u(m26509n3);
            C7212d0 c7212d0 = (C7212d0) m13580f.mo2092u(m26509n4);
            c4621x.m15918z(i5, c7214e0, c7214e02, c7212d0, m26509n5);
            if (interfaceC5400j != null) {
                interfaceC5400j.m13345a(m13581e, i3, 2, "inner_class: " + C5305f.m13561y(c7214e0));
                interfaceC5400j.m13345a(m13581e, i6, 2, "  outer_class: " + C5305f.m13561y(c7214e02));
                interfaceC5400j.m13345a(m13581e, i7, 2, "  name: " + C5305f.m13561y(c7212d0));
                interfaceC5400j.m13345a(m13581e, i8, 2, "  access_flags: " + C7136a.m2457d(m26509n5));
            }
            i3 += 8;
        }
        c4621x.setImmutable();
        return new C4605h(c4621x);
    }

    /* renamed from: n */
    public final C4695d m13536n(C0432d c0432d, InterfaceC7206b interfaceC7206b, C7214e0 c7214e0, int i, int i2, int i3, InterfaceC5400j interfaceC5400j) {
        C4695d c4695d = new C4695d(i);
        int i4 = i2;
        int i5 = i3;
        for (int i6 = 0; i6 < i; i6++) {
            if (i5 < 4) {
                m13524z();
            }
            int m26509n = c0432d.m26509n(i4);
            int i7 = i4 + 2;
            int m26509n2 = c0432d.m26509n(i7);
            if (interfaceC5400j != null) {
                interfaceC5400j.m13345a(c0432d, i4, 2, "bootstrap_method_ref: " + C0438g.m26478g(m26509n));
                interfaceC5400j.m13345a(c0432d, i7, 2, "num_bootstrap_arguments: " + C0438g.m26478g(m26509n2));
            }
            i4 += 4;
            i5 -= 4;
            if (i5 < m26509n2 * 2) {
                m13524z();
            }
            C4694c c4694c = new C4694c(m26509n2);
            int i8 = 0;
            while (i8 < m26509n2) {
                int m26509n3 = c0432d.m26509n(i4);
                if (interfaceC5400j != null) {
                    interfaceC5400j.m13345a(c0432d, i4, 2, "bootstrap_arguments[" + i8 + "]" + C0438g.m26478g(m26509n3));
                }
                c4694c.m15745x(i8, interfaceC7206b.get(m26509n3));
                i8++;
                i4 += 2;
                i5 -= 2;
            }
            c4694c.setImmutable();
            c4695d.m15744A(i6, c7214e0, (C7237y) interfaceC7206b.get(m26509n), c4694c);
        }
        c4695d.setImmutable();
        if (i5 != 0) {
            m13526x(i5);
        }
        return c4695d;
    }

    /* renamed from: o */
    public final C4711n m13535o(C0432d c0432d, InterfaceC7206b interfaceC7206b, InterfaceC5400j interfaceC5400j, int i, boolean z) {
        C7212d0 c7212d0;
        C7212d0 c7212d02;
        int i2 = i * 10;
        if (c0432d.m26506q() != i2) {
            m13526x(i2 + 2);
        }
        C0432d.C0433a m26508o = c0432d.m26508o();
        C4711n c4711n = new C4711n(i);
        for (int i3 = 0; i3 < i; i3++) {
            try {
                int readUnsignedShort = m26508o.readUnsignedShort();
                int readUnsignedShort2 = m26508o.readUnsignedShort();
                int readUnsignedShort3 = m26508o.readUnsignedShort();
                int readUnsignedShort4 = m26508o.readUnsignedShort();
                int readUnsignedShort5 = m26508o.readUnsignedShort();
                C7212d0 c7212d03 = (C7212d0) interfaceC7206b.get(readUnsignedShort3);
                C7212d0 c7212d04 = (C7212d0) interfaceC7206b.get(readUnsignedShort4);
                if (z) {
                    c7212d02 = null;
                    c7212d0 = c7212d04;
                } else {
                    c7212d0 = null;
                    c7212d02 = c7212d04;
                }
                c4711n.m15658D(i3, readUnsignedShort, readUnsignedShort2, c7212d03, c7212d02, c7212d0, readUnsignedShort5);
                if (interfaceC5400j != null) {
                    interfaceC5400j.m13345a(c0432d, i3 * 10, 10, C0438g.m26478g(readUnsignedShort) + ".." + C0438g.m26478g(readUnsignedShort + readUnsignedShort2) + " " + C0438g.m26478g(readUnsignedShort5) + " " + c7212d03.toHuman() + " " + c7212d04.toHuman());
                }
            } catch (IOException e) {
                throw new RuntimeException("shouldn't happen", e);
            }
        }
        c4711n.setImmutable();
        return c4711n;
    }

    /* renamed from: w */
    public final InterfaceC5391a m13527w(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (i2 != 0) {
            return m13526x(0);
        }
        return new C4616s();
    }

    /* renamed from: u */
    public final InterfaceC5391a m13529u(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        C0432d m26505r = c5305f.m13581e().m26505r(i, i + i2);
        C7212d0 c7212d0 = new C7212d0(m26505r);
        C4614q c4614q = new C4614q(c7212d0);
        if (interfaceC5400j != null) {
            String m2112u = c7212d0.m2112u();
            interfaceC5400j.m13345a(m26505r, i, i2, "sourceDebugExtension: " + m2112u);
        }
        return c4614q;
    }
}
