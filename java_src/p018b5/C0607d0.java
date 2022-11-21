package p018b5;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: b5.d0 */
/* loaded from: classes2.dex */
public final class C0607d0 {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static InterfaceC0827q m26093a(String str, C0640f c0640f, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        String str2;
        char c;
        String str3;
        double min;
        AbstractC0708j abstractC0708j;
        switch (str.hashCode()) {
            case -1776922004:
                str2 = "toString";
                if (str.equals(str2)) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    str2 = "toString";
                    c = 0;
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case -1274492040:
                if (str.equals("filter")) {
                    str2 = "toString";
                    c = 2;
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case -934873754:
                if (str.equals("reduce")) {
                    c = '\n';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case -895859076:
                if (str.equals("splice")) {
                    c = 17;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case -678635926:
                if (str.equals("forEach")) {
                    c = 3;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c = 6;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case -277637751:
                if (str.equals("unshift")) {
                    c = 19;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 107868:
                if (str.equals("map")) {
                    c = 7;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 111185:
                if (str.equals("pop")) {
                    c = '\b';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 3267882:
                if (str.equals("join")) {
                    c = 5;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 3452698:
                if (str.equals("push")) {
                    c = '\t';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 3536116:
                if (str.equals("some")) {
                    c = 15;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 3536286:
                if (str.equals("sort")) {
                    c = 16;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 96891675:
                if (str.equals("every")) {
                    str2 = "toString";
                    c = 1;
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 109407362:
                if (str.equals("shift")) {
                    c = '\r';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c = 14;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 965561430:
                if (str.equals("reduceRight")) {
                    c = 11;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 1099846370:
                if (str.equals("reverse")) {
                    c = '\f';
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    c = 4;
                    str2 = "toString";
                    break;
                }
                str2 = "toString";
                c = 65535;
                break;
            default:
                str2 = "toString";
                c = 65535;
                break;
        }
        double d = 0.0d;
        switch (c) {
            case 0:
                InterfaceC0827q mo25086e = c0640f.mo25086e();
                if (!list.isEmpty()) {
                    for (InterfaceC0827q interfaceC0827q : list) {
                        InterfaceC0827q m25072b = c0917v4.m25072b(interfaceC0827q);
                        if (!(m25072b instanceof C0674h)) {
                            C0640f c0640f2 = (C0640f) mo25086e;
                            int m26018i = c0640f2.m26018i();
                            if (m25072b instanceof C0640f) {
                                C0640f c0640f3 = (C0640f) m25072b;
                                Iterator<Integer> m26015q = c0640f3.m26015q();
                                while (m26015q.hasNext()) {
                                    Integer next = m26015q.next();
                                    c0640f2.m26010y(next.intValue() + m26018i, c0640f3.m26017m(next.intValue()));
                                }
                            } else {
                                c0640f2.m26010y(m26018i, m25072b);
                            }
                        } else {
                            throw new IllegalStateException("Failed evaluation of arguments");
                        }
                    }
                }
                return mo25086e;
            case 1:
                C0935w5.m25046h("every", 1, list);
                InterfaceC0827q m25072b2 = c0917v4.m25072b(list.get(0));
                if (m25072b2 instanceof C0810p) {
                    if (c0640f.m26018i() != 0 && m26092b(c0640f, c0917v4, (C0810p) m25072b2, Boolean.FALSE, Boolean.TRUE).m26018i() != c0640f.m26018i()) {
                        return InterfaceC0827q.f2160j;
                    }
                    return InterfaceC0827q.f2159i;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 2:
                C0935w5.m25046h("filter", 1, list);
                InterfaceC0827q m25072b3 = c0917v4.m25072b(list.get(0));
                if (m25072b3 instanceof C0810p) {
                    if (c0640f.m26019d() == 0) {
                        return new C0640f();
                    }
                    InterfaceC0827q mo25086e2 = c0640f.mo25086e();
                    C0640f m26092b = m26092b(c0640f, c0917v4, (C0810p) m25072b3, null, Boolean.TRUE);
                    C0640f c0640f4 = new C0640f();
                    Iterator<Integer> m26015q2 = m26092b.m26015q();
                    while (m26015q2.hasNext()) {
                        c0640f4.m26010y(c0640f4.m26018i(), ((C0640f) mo25086e2).m26017m(m26015q2.next().intValue()));
                    }
                    return c0640f4;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 3:
                C0935w5.m25046h("forEach", 1, list);
                InterfaceC0827q m25072b4 = c0917v4.m25072b(list.get(0));
                if (m25072b4 instanceof C0810p) {
                    if (c0640f.m26019d() == 0) {
                        return InterfaceC0827q.f2154c;
                    }
                    m26092b(c0640f, c0917v4, (C0810p) m25072b4, null, null);
                    return InterfaceC0827q.f2154c;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 4:
                C0935w5.m25044j("indexOf", 2, list);
                InterfaceC0827q interfaceC0827q2 = InterfaceC0827q.f2154c;
                if (!list.isEmpty()) {
                    interfaceC0827q2 = c0917v4.m25072b(list.get(0));
                }
                if (list.size() > 1) {
                    double m25053a = C0935w5.m25053a(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue());
                    if (m25053a >= c0640f.m26018i()) {
                        return new C0691i(Double.valueOf(-1.0d));
                    }
                    if (m25053a < 0.0d) {
                        double m26018i2 = c0640f.m26018i();
                        Double.isNaN(m26018i2);
                        d = m26018i2 + m25053a;
                    } else {
                        d = m25053a;
                    }
                }
                Iterator<Integer> m26015q3 = c0640f.m26015q();
                while (m26015q3.hasNext()) {
                    int intValue = m26015q3.next().intValue();
                    double d2 = intValue;
                    if (d2 >= d && C0935w5.m25042l(c0640f.m26017m(intValue), interfaceC0827q2)) {
                        return new C0691i(Double.valueOf(d2));
                    }
                }
                return new C0691i(Double.valueOf(-1.0d));
            case 5:
                C0935w5.m25044j("join", 1, list);
                if (c0640f.m26018i() == 0) {
                    return InterfaceC0827q.f2161l;
                }
                if (list.size() > 0) {
                    InterfaceC0827q m25072b5 = c0917v4.m25072b(list.get(0));
                    str3 = ((m25072b5 instanceof C0793o) || (m25072b5 instanceof C0912v)) ? "" : m25072b5.mo25083j();
                } else {
                    str3 = ",";
                }
                return new C0895u(c0640f.m26016o(str3));
            case 6:
                C0935w5.m25044j("lastIndexOf", 2, list);
                InterfaceC0827q interfaceC0827q3 = InterfaceC0827q.f2154c;
                if (!list.isEmpty()) {
                    interfaceC0827q3 = c0917v4.m25072b(list.get(0));
                }
                double m26018i3 = c0640f.m26018i() - 1;
                if (list.size() > 1) {
                    InterfaceC0827q m25072b6 = c0917v4.m25072b(list.get(1));
                    m26018i3 = Double.isNaN(m25072b6.mo25085f().doubleValue()) ? c0640f.m26018i() - 1 : C0935w5.m25053a(m25072b6.mo25085f().doubleValue());
                    if (m26018i3 < 0.0d) {
                        double m26018i4 = c0640f.m26018i();
                        Double.isNaN(m26018i4);
                        m26018i3 += m26018i4;
                    }
                }
                if (m26018i3 < 0.0d) {
                    return new C0691i(Double.valueOf(-1.0d));
                }
                for (int min2 = (int) Math.min(c0640f.m26018i(), m26018i3); min2 >= 0; min2--) {
                    if (c0640f.m26009z(min2) && C0935w5.m25042l(c0640f.m26017m(min2), interfaceC0827q3)) {
                        return new C0691i(Double.valueOf(min2));
                    }
                }
                return new C0691i(Double.valueOf(-1.0d));
            case 7:
                C0935w5.m25046h("map", 1, list);
                InterfaceC0827q m25072b7 = c0917v4.m25072b(list.get(0));
                if (m25072b7 instanceof C0810p) {
                    if (c0640f.m26018i() == 0) {
                        return new C0640f();
                    }
                    return m26092b(c0640f, c0917v4, (C0810p) m25072b7, null, null);
                }
                throw new IllegalArgumentException("Callback should be a method");
            case '\b':
                C0935w5.m25046h("pop", 0, list);
                int m26018i5 = c0640f.m26018i();
                if (m26018i5 == 0) {
                    return InterfaceC0827q.f2154c;
                }
                int i = m26018i5 - 1;
                InterfaceC0827q m26017m = c0640f.m26017m(i);
                c0640f.m26011x(i);
                return m26017m;
            case '\t':
                if (!list.isEmpty()) {
                    for (InterfaceC0827q interfaceC0827q4 : list) {
                        c0640f.m26010y(c0640f.m26018i(), c0917v4.m25072b(interfaceC0827q4));
                    }
                }
                return new C0691i(Double.valueOf(c0640f.m26018i()));
            case '\n':
                return m26091c(c0640f, c0917v4, list, true);
            case 11:
                return m26091c(c0640f, c0917v4, list, false);
            case '\f':
                C0935w5.m25046h("reverse", 0, list);
                int m26018i6 = c0640f.m26018i();
                if (m26018i6 != 0) {
                    for (int i2 = 0; i2 < m26018i6 / 2; i2++) {
                        if (c0640f.m26009z(i2)) {
                            InterfaceC0827q m26017m2 = c0640f.m26017m(i2);
                            c0640f.m26010y(i2, null);
                            int i3 = (m26018i6 - 1) - i2;
                            if (c0640f.m26009z(i3)) {
                                c0640f.m26010y(i2, c0640f.m26017m(i3));
                            }
                            c0640f.m26010y(i3, m26017m2);
                        }
                    }
                }
                return c0640f;
            case '\r':
                C0935w5.m25046h("shift", 0, list);
                if (c0640f.m26018i() == 0) {
                    return InterfaceC0827q.f2154c;
                }
                InterfaceC0827q m26017m3 = c0640f.m26017m(0);
                c0640f.m26011x(0);
                return m26017m3;
            case 14:
                C0935w5.m25044j("slice", 2, list);
                if (list.isEmpty()) {
                    return c0640f.mo25086e();
                }
                double m26018i7 = c0640f.m26018i();
                double m25053a2 = C0935w5.m25053a(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue());
                if (m25053a2 < 0.0d) {
                    Double.isNaN(m26018i7);
                    min = Math.max(m25053a2 + m26018i7, 0.0d);
                } else {
                    min = Math.min(m25053a2, m26018i7);
                }
                if (list.size() == 2) {
                    double m25053a3 = C0935w5.m25053a(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue());
                    if (m25053a3 < 0.0d) {
                        Double.isNaN(m26018i7);
                        m26018i7 = Math.max(m26018i7 + m25053a3, 0.0d);
                    } else {
                        m26018i7 = Math.min(m26018i7, m25053a3);
                    }
                }
                C0640f c0640f5 = new C0640f();
                for (int i4 = (int) min; i4 < m26018i7; i4++) {
                    c0640f5.m26010y(c0640f5.m26018i(), c0640f.m26017m(i4));
                }
                return c0640f5;
            case 15:
                C0935w5.m25046h("some", 1, list);
                InterfaceC0827q m25072b8 = c0917v4.m25072b(list.get(0));
                if (m25072b8 instanceof AbstractC0708j) {
                    if (c0640f.m26018i() == 0) {
                        return InterfaceC0827q.f2160j;
                    }
                    AbstractC0708j abstractC0708j2 = (AbstractC0708j) m25072b8;
                    Iterator<Integer> m26015q4 = c0640f.m26015q();
                    while (m26015q4.hasNext()) {
                        int intValue2 = m26015q4.next().intValue();
                        if (c0640f.m26009z(intValue2) && abstractC0708j2.mo24853a(c0917v4, Arrays.asList(c0640f.m26017m(intValue2), new C0691i(Double.valueOf(intValue2)), c0640f)).mo25084g().booleanValue()) {
                            return InterfaceC0827q.f2159i;
                        }
                    }
                    return InterfaceC0827q.f2160j;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 16:
                C0935w5.m25044j("sort", 1, list);
                if (c0640f.m26018i() >= 2) {
                    List<InterfaceC0827q> m26014r = c0640f.m26014r();
                    if (list.isEmpty()) {
                        abstractC0708j = null;
                    } else {
                        InterfaceC0827q m25072b9 = c0917v4.m25072b(list.get(0));
                        if (m25072b9 instanceof AbstractC0708j) {
                            abstractC0708j = (AbstractC0708j) m25072b9;
                        } else {
                            throw new IllegalArgumentException("Comparator should be a method");
                        }
                    }
                    Collections.sort(m26014r, new C0590c0(abstractC0708j, c0917v4));
                    c0640f.m26013v();
                    int i5 = 0;
                    for (InterfaceC0827q interfaceC0827q5 : m26014r) {
                        c0640f.m26010y(i5, interfaceC0827q5);
                        i5++;
                    }
                }
                return c0640f;
            case 17:
                if (list.isEmpty()) {
                    return new C0640f();
                }
                int m25053a4 = (int) C0935w5.m25053a(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue());
                if (m25053a4 < 0) {
                    m25053a4 = Math.max(0, m25053a4 + c0640f.m26018i());
                } else if (m25053a4 > c0640f.m26018i()) {
                    m25053a4 = c0640f.m26018i();
                }
                int m26018i8 = c0640f.m26018i();
                C0640f c0640f6 = new C0640f();
                if (list.size() > 1) {
                    int max = Math.max(0, (int) C0935w5.m25053a(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue()));
                    if (max > 0) {
                        for (int i6 = m25053a4; i6 < Math.min(m26018i8, m25053a4 + max); i6++) {
                            c0640f6.m26010y(c0640f6.m26018i(), c0640f.m26017m(m25053a4));
                            c0640f.m26011x(m25053a4);
                        }
                    }
                    if (list.size() > 2) {
                        for (int i7 = 2; i7 < list.size(); i7++) {
                            InterfaceC0827q m25072b10 = c0917v4.m25072b(list.get(i7));
                            if (!(m25072b10 instanceof C0674h)) {
                                c0640f.m26012w((m25053a4 + i7) - 2, m25072b10);
                            } else {
                                throw new IllegalArgumentException("Failed to parse elements to add");
                            }
                        }
                    }
                } else {
                    while (m25053a4 < m26018i8) {
                        c0640f6.m26010y(c0640f6.m26018i(), c0640f.m26017m(m25053a4));
                        c0640f.m26010y(m25053a4, null);
                        m25053a4++;
                    }
                }
                return c0640f6;
            case 18:
                C0935w5.m25046h(str2, 0, list);
                return new C0895u(c0640f.m26016o(","));
            case 19:
                if (!list.isEmpty()) {
                    C0640f c0640f7 = new C0640f();
                    for (InterfaceC0827q interfaceC0827q6 : list) {
                        InterfaceC0827q m25072b11 = c0917v4.m25072b(interfaceC0827q6);
                        if (!(m25072b11 instanceof C0674h)) {
                            c0640f7.m26010y(c0640f7.m26018i(), m25072b11);
                        } else {
                            throw new IllegalStateException("Argument evaluation failed");
                        }
                    }
                    int m26018i9 = c0640f7.m26018i();
                    Iterator<Integer> m26015q5 = c0640f.m26015q();
                    while (m26015q5.hasNext()) {
                        Integer next2 = m26015q5.next();
                        c0640f7.m26010y(next2.intValue() + m26018i9, c0640f.m26017m(next2.intValue()));
                    }
                    c0640f.m26013v();
                    Iterator<Integer> m26015q6 = c0640f7.m26015q();
                    while (m26015q6.hasNext()) {
                        Integer next3 = m26015q6.next();
                        c0640f.m26010y(next3.intValue(), c0640f7.m26017m(next3.intValue()));
                    }
                }
                return new C0691i(Double.valueOf(c0640f.m26018i()));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    /* renamed from: b */
    public static C0640f m26092b(C0640f c0640f, C0917v4 c0917v4, AbstractC0708j abstractC0708j, Boolean bool, Boolean bool2) {
        C0640f c0640f2 = new C0640f();
        Iterator<Integer> m26015q = c0640f.m26015q();
        while (m26015q.hasNext()) {
            int intValue = m26015q.next().intValue();
            if (c0640f.m26009z(intValue)) {
                InterfaceC0827q mo24853a = abstractC0708j.mo24853a(c0917v4, Arrays.asList(c0640f.m26017m(intValue), new C0691i(Double.valueOf(intValue)), c0640f));
                if (mo24853a.mo25084g().equals(bool)) {
                    return c0640f2;
                }
                if (bool2 == null || mo24853a.mo25084g().equals(bool2)) {
                    c0640f2.m26010y(intValue, mo24853a);
                }
            }
        }
        return c0640f2;
    }

    /* renamed from: c */
    public static InterfaceC0827q m26091c(C0640f c0640f, C0917v4 c0917v4, List<InterfaceC0827q> list, boolean z) {
        InterfaceC0827q interfaceC0827q;
        int i;
        int i2;
        C0935w5.m25045i("reduce", 1, list);
        C0935w5.m25044j("reduce", 2, list);
        InterfaceC0827q m25072b = c0917v4.m25072b(list.get(0));
        if (m25072b instanceof AbstractC0708j) {
            if (list.size() == 2) {
                interfaceC0827q = c0917v4.m25072b(list.get(1));
                if (interfaceC0827q instanceof C0674h) {
                    throw new IllegalArgumentException("Failed to parse initial value");
                }
            } else if (c0640f.m26018i() != 0) {
                interfaceC0827q = null;
            } else {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            AbstractC0708j abstractC0708j = (AbstractC0708j) m25072b;
            int m26018i = c0640f.m26018i();
            if (z) {
                i = 0;
            } else {
                i = m26018i - 1;
            }
            int i3 = -1;
            if (z) {
                i2 = m26018i - 1;
            } else {
                i2 = 0;
            }
            if (true == z) {
                i3 = 1;
            }
            if (interfaceC0827q == null) {
                interfaceC0827q = c0640f.m26017m(i);
                i += i3;
            }
            while ((i2 - i) * i3 >= 0) {
                if (c0640f.m26009z(i)) {
                    interfaceC0827q = abstractC0708j.mo24853a(c0917v4, Arrays.asList(interfaceC0827q, c0640f.m26017m(i), new C0691i(Double.valueOf(i)), c0640f));
                    if (interfaceC0827q instanceof C0674h) {
                        throw new IllegalStateException("Reduce operation failed");
                    }
                    i += i3;
                } else {
                    i += i3;
                }
            }
            return interfaceC0827q;
        }
        throw new IllegalArgumentException("Callback should be a method");
    }
}
