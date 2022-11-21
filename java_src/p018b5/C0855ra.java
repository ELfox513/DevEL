package p018b5;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: b5.ra */
/* loaded from: classes2.dex */
public final class C0855ra {

    /* renamed from: a */
    public static final Class<?> f2268a;

    /* renamed from: b */
    public static final AbstractC0686hb<?, ?> f2269b;

    /* renamed from: c */
    public static final AbstractC0686hb<?, ?> f2270c;

    /* renamed from: d */
    public static final AbstractC0686hb<?, ?> f2271d;

    /* renamed from: C */
    public static AbstractC0686hb<?, ?> m25417C(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (AbstractC0686hb) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* renamed from: D */
    public static int m25416D(List<?> list) {
        return list.size();
    }

    /* renamed from: I */
    public static int m25411I(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: K */
    public static int m25409K(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: a */
    public static AbstractC0686hb<?, ?> m25393a() {
        return f2270c;
    }

    /* renamed from: b */
    public static AbstractC0686hb<?, ?> m25391b() {
        return f2271d;
    }

    /* renamed from: b0 */
    public static AbstractC0686hb<?, ?> m25390b0() {
        return f2269b;
    }

    /* renamed from: h */
    public static boolean m25384h(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f2268a = cls;
        f2269b = m25417C(false);
        f2270c = m25417C(true);
        f2271d = new C0720jb();
    }

    /* renamed from: B */
    public static void m25418B(int i, List<Long> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25905k(i, list, z);
        }
    }

    /* renamed from: Q */
    public static int m25403Q(int i, Object obj, InterfaceC0821pa interfaceC0821pa) {
        if (obj instanceof C0718j9) {
            int m25976a = AbstractC0649f8.m25976a(i << 3);
            int m25739a = ((C0718j9) obj).m25739a();
            return m25976a + AbstractC0649f8.m25976a(m25739a) + m25739a;
        }
        return AbstractC0649f8.m25976a(i << 3) + AbstractC0649f8.m25979B((InterfaceC0634ea) obj, interfaceC0821pa);
    }

    /* renamed from: c */
    public static <UT, UB> UB m25389c(int i, List<Integer> list, InterfaceC0582b9 interfaceC0582b9, UB ub, AbstractC0686hb<UT, UB> abstractC0686hb) {
        if (interfaceC0582b9 == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (interfaceC0582b9.mo25054h(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) m25388d(i, intValue, ub, abstractC0686hb);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return ub;
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!interfaceC0582b9.mo25054h(intValue2)) {
                    ub = (UB) m25388d(i, intValue2, ub, abstractC0686hb);
                    it.remove();
                }
            }
        }
        return ub;
    }

    /* renamed from: d */
    public static <UT, UB> UB m25388d(int i, int i2, UB ub, AbstractC0686hb<UT, UB> abstractC0686hb) {
        if (ub == null) {
            ub = abstractC0686hb.mo25732e();
        }
        abstractC0686hb.mo25731f(ub, i, i2);
        return ub;
    }

    /* renamed from: g */
    public static void m25385g(Class<?> cls) {
        Class<?> cls2;
        if (!AbstractC0955x8.class.isAssignableFrom(cls) && (cls2 = f2268a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: j */
    public static void m25382j(int i, List<Boolean> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25902n(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m25381k(int i, List<AbstractC0937w7> list, C0666g8 c0666g8) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25900p(i, list);
        }
    }

    /* renamed from: l */
    public static void m25380l(int i, List<Double> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25898r(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m25379m(int i, List<Integer> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25895u(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m25378n(int i, List<Integer> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25893w(i, list, z);
        }
    }

    /* renamed from: o */
    public static void m25377o(int i, List<Long> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25891y(i, list, z);
        }
    }

    /* renamed from: p */
    public static void m25376p(int i, List<Float> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25926A(i, list, z);
        }
    }

    /* renamed from: q */
    public static void m25375q(int i, List<?> list, C0666g8 c0666g8, InterfaceC0821pa interfaceC0821pa) {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c0666g8.m25925B(i, list.get(i2), interfaceC0821pa);
            }
        }
    }

    /* renamed from: r */
    public static void m25374r(int i, List<Integer> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25923D(i, list, z);
        }
    }

    /* renamed from: s */
    public static void m25373s(int i, List<Long> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25921F(i, list, z);
        }
    }

    /* renamed from: t */
    public static void m25372t(int i, List<?> list, C0666g8 c0666g8, InterfaceC0821pa interfaceC0821pa) {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                c0666g8.m25920G(i, list.get(i2), interfaceC0821pa);
            }
        }
    }

    /* renamed from: u */
    public static void m25371u(int i, List<Integer> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25918I(i, list, z);
        }
    }

    /* renamed from: v */
    public static void m25370v(int i, List<Long> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25916K(i, list, z);
        }
    }

    /* renamed from: w */
    public static void m25369w(int i, List<Integer> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25914b(i, list, z);
        }
    }

    /* renamed from: x */
    public static void m25368x(int i, List<Long> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25912d(i, list, z);
        }
    }

    /* renamed from: y */
    public static void m25367y(int i, List<String> list, C0666g8 c0666g8) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25909g(i, list);
        }
    }

    /* renamed from: z */
    public static void m25366z(int i, List<Integer> list, C0666g8 c0666g8, boolean z) {
        if (list != null && !list.isEmpty()) {
            c0666g8.m25907i(i, list, z);
        }
    }

    /* renamed from: A */
    public static int m25419A(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (AbstractC0649f8.m25976a(i << 3) + 1);
    }

    /* renamed from: E */
    public static int m25415E(int i, List<AbstractC0937w7> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m25977D = size * AbstractC0649f8.m25977D(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m25977D += AbstractC0649f8.m25953x(list.get(i2));
        }
        return m25977D;
    }

    /* renamed from: F */
    public static int m25414F(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25413G(list) + (size * AbstractC0649f8.m25977D(i));
    }

    /* renamed from: G */
    public static int m25413G(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0989z8) {
            C0989z8 c0989z8 = (C0989z8) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25951z(c0989z8.m24865e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25951z(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: H */
    public static int m25412H(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (AbstractC0649f8.m25976a(i << 3) + 4);
    }

    /* renamed from: J */
    public static int m25410J(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (AbstractC0649f8.m25976a(i << 3) + 8);
    }

    /* renamed from: L */
    public static int m25408L(int i, List<InterfaceC0634ea> list, InterfaceC0821pa interfaceC0821pa) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC0649f8.m25952y(i, list.get(i3), interfaceC0821pa);
        }
        return i2;
    }

    /* renamed from: M */
    public static int m25407M(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25406N(list) + (size * AbstractC0649f8.m25977D(i));
    }

    /* renamed from: N */
    public static int m25406N(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0989z8) {
            C0989z8 c0989z8 = (C0989z8) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25951z(c0989z8.m24865e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25951z(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: O */
    public static int m25405O(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m25404P(list) + (list.size() * AbstractC0649f8.m25977D(i));
    }

    /* renamed from: P */
    public static int m25404P(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0871s9) {
            C0871s9 c0871s9 = (C0871s9) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25975b(c0871s9.mo25255h(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25975b(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: R */
    public static int m25402R(int i, List<?> list, InterfaceC0821pa interfaceC0821pa) {
        int m25979B;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m25977D = AbstractC0649f8.m25977D(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof C0718j9) {
                m25979B = AbstractC0649f8.m25980A((C0718j9) obj);
            } else {
                m25979B = AbstractC0649f8.m25979B((InterfaceC0634ea) obj, interfaceC0821pa);
            }
            m25977D += m25979B;
        }
        return m25977D;
    }

    /* renamed from: S */
    public static int m25401S(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25400T(list) + (size * AbstractC0649f8.m25977D(i));
    }

    /* renamed from: T */
    public static int m25400T(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0989z8) {
            C0989z8 c0989z8 = (C0989z8) list;
            i = 0;
            while (i2 < size) {
                int m24865e = c0989z8.m24865e(i2);
                i += AbstractC0649f8.m25976a((m24865e >> 31) ^ (m24865e + m24865e));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = list.get(i2).intValue();
                i += AbstractC0649f8.m25976a((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: U */
    public static int m25399U(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25398V(list) + (size * AbstractC0649f8.m25977D(i));
    }

    /* renamed from: V */
    public static int m25398V(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0871s9) {
            C0871s9 c0871s9 = (C0871s9) list;
            i = 0;
            while (i2 < size) {
                long mo25255h = c0871s9.mo25255h(i2);
                i += AbstractC0649f8.m25975b((mo25255h >> 63) ^ (mo25255h + mo25255h));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = list.get(i2).longValue();
                i += AbstractC0649f8.m25975b((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: W */
    public static int m25397W(int i, List<?> list) {
        int m25978C;
        int m25978C2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int m25977D = AbstractC0649f8.m25977D(i) * size;
        if (list instanceof InterfaceC0752l9) {
            InterfaceC0752l9 interfaceC0752l9 = (InterfaceC0752l9) list;
            while (i2 < size) {
                Object mo25653C = interfaceC0752l9.mo25653C(i2);
                if (mo25653C instanceof AbstractC0937w7) {
                    m25978C2 = AbstractC0649f8.m25953x((AbstractC0937w7) mo25653C);
                } else {
                    m25978C2 = AbstractC0649f8.m25978C((String) mo25653C);
                }
                m25977D += m25978C2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof AbstractC0937w7) {
                    m25978C = AbstractC0649f8.m25953x((AbstractC0937w7) obj);
                } else {
                    m25978C = AbstractC0649f8.m25978C((String) obj);
                }
                m25977D += m25978C;
                i2++;
            }
        }
        return m25977D;
    }

    /* renamed from: X */
    public static int m25396X(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25395Y(list) + (size * AbstractC0649f8.m25977D(i));
    }

    /* renamed from: Y */
    public static int m25395Y(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0989z8) {
            C0989z8 c0989z8 = (C0989z8) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25976a(c0989z8.m24865e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25976a(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: Z */
    public static int m25394Z(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m25392a0(list) + (size * AbstractC0649f8.m25977D(i));
    }

    /* renamed from: a0 */
    public static int m25392a0(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0871s9) {
            C0871s9 c0871s9 = (C0871s9) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25975b(c0871s9.mo25255h(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0649f8.m25975b(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static <T, FT extends InterfaceC0802o8<FT>> void m25387e(AbstractC0751l8<FT> abstractC0751l8, T t, T t2) {
        abstractC0751l8.mo25658a(t2);
        throw null;
    }

    /* renamed from: f */
    public static <T, UT, UB> void m25386f(AbstractC0686hb<UT, UB> abstractC0686hb, T t, T t2) {
        abstractC0686hb.mo25729h(t, abstractC0686hb.mo25733d(abstractC0686hb.mo25734c(t), abstractC0686hb.mo25734c(t2)));
    }

    /* renamed from: i */
    public static <T> void m25383i(C0990z9 c0990z9, T t, T t2, long j) {
        C0856rb.m25337x(t, j, C0990z9.m24859b(C0856rb.m25350k(t, j), C0856rb.m25350k(t2, j)));
    }
}
