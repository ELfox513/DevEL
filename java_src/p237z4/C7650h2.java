package p237z4;

import java.util.List;
/* renamed from: z4.h2 */
/* loaded from: classes2.dex */
public final class C7650h2 {

    /* renamed from: a */
    public static final Class<?> f37694a = m757A();

    /* renamed from: b */
    public static final AbstractC7731x2<?, ?> f37695b = m754D(false);

    /* renamed from: c */
    public static final AbstractC7731x2<?, ?> f37696c = m754D(true);

    /* renamed from: d */
    public static final AbstractC7731x2<?, ?> f37697d = new C7739z2();

    /* renamed from: A */
    public static Class<?> m757A() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: B */
    public static Class<?> m756B() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: D */
    public static AbstractC7731x2<?, ?> m754D(boolean z) {
        try {
            Class<?> m756B = m756B();
            if (m756B == null) {
                return null;
            }
            return (AbstractC7731x2) m756B.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: I */
    public static int m749I(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: K */
    public static int m747K(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: M */
    public static int m745M(List<?> list) {
        return list.size();
    }

    /* renamed from: u */
    public static boolean m709u(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: x */
    public static AbstractC7731x2<?, ?> m706x() {
        return f37695b;
    }

    /* renamed from: y */
    public static AbstractC7731x2<?, ?> m705y() {
        return f37696c;
    }

    /* renamed from: z */
    public static AbstractC7731x2<?, ?> m704z() {
        return f37697d;
    }

    /* renamed from: E */
    public static void m753E(int i, List<Long> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo408y(i, list, z);
        }
    }

    /* renamed from: G */
    public static void m751G(int i, List<Long> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo419n(i, list, z);
        }
    }

    /* renamed from: H */
    public static void m750H(Class<?> cls) {
        Class<?> cls2;
        if (!AbstractC7673m0.class.isAssignableFrom(cls) && (cls2 = f37694a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: J */
    public static void m748J(int i, List<Integer> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo426g(i, list, z);
        }
    }

    /* renamed from: L */
    public static void m746L(int i, List<Integer> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo416q(i, list, z);
        }
    }

    /* renamed from: N */
    public static void m744N(int i, List<Integer> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo443F(i, list, z);
        }
    }

    /* renamed from: O */
    public static void m743O(int i, List<Integer> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo418o(i, list, z);
        }
    }

    /* renamed from: P */
    public static void m742P(int i, List<Integer> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo414s(i, list, z);
        }
    }

    /* renamed from: Q */
    public static void m741Q(int i, List<Integer> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo425h(i, list, z);
        }
    }

    /* renamed from: R */
    public static void m740R(int i, List<Boolean> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo429e(i, list, z);
        }
    }

    /* renamed from: b */
    public static void m729b(int i, List<String> list, InterfaceC7705r3 interfaceC7705r3) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo435N(i, list);
        }
    }

    /* renamed from: c */
    public static void m727c(int i, List<?> list, InterfaceC7705r3 interfaceC7705r3, InterfaceC7640f2 interfaceC7640f2) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo444E(i, list, interfaceC7640f2);
        }
    }

    /* renamed from: d */
    public static void m726d(int i, List<Double> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo442G(i, list, z);
        }
    }

    /* renamed from: i */
    public static void m721i(int i, List<AbstractC7652i> list, InterfaceC7705r3 interfaceC7705r3) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo440I(i, list);
        }
    }

    /* renamed from: j */
    public static void m720j(int i, List<?> list, InterfaceC7705r3 interfaceC7705r3, InterfaceC7640f2 interfaceC7640f2) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo441H(i, list, interfaceC7640f2);
        }
    }

    /* renamed from: k */
    public static void m719k(int i, List<Float> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo437L(i, list, z);
        }
    }

    /* renamed from: l */
    public static int m718l(int i, Object obj, InterfaceC7640f2 interfaceC7640f2) {
        if (obj instanceof C7733y0) {
            return AbstractC7726x.m524b(i, (C7733y0) obj);
        }
        return AbstractC7726x.m537G(i, (InterfaceC7703r1) obj, interfaceC7640f2);
    }

    /* renamed from: p */
    public static void m714p(int i, List<Long> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo421l(i, list, z);
        }
    }

    /* renamed from: t */
    public static void m710t(int i, List<Long> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo446C(i, list, z);
        }
    }

    /* renamed from: w */
    public static void m707w(int i, List<Long> list, InterfaceC7705r3 interfaceC7705r3, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC7705r3.mo447B(i, list, z);
        }
    }

    /* renamed from: C */
    public static int m755C(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C7682n0) {
            C7682n0 c7682n0 = (C7682n0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m500s(c7682n0.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m500s(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: F */
    public static int m752F(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C7682n0) {
            C7682n0 c7682n0 = (C7682n0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m499t(c7682n0.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m499t(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: S */
    public static int m739S(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m731a(list) + (list.size() * AbstractC7726x.m503q(i));
    }

    /* renamed from: T */
    public static int m738T(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m722h(list) + (size * AbstractC7726x.m503q(i));
    }

    /* renamed from: U */
    public static int m737U(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m715o(list) + (size * AbstractC7726x.m503q(i));
    }

    /* renamed from: V */
    public static int m736V(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m711s(list) + (size * AbstractC7726x.m503q(i));
    }

    /* renamed from: W */
    public static int m735W(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m708v(list) + (size * AbstractC7726x.m503q(i));
    }

    /* renamed from: X */
    public static int m734X(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m755C(list) + (size * AbstractC7726x.m503q(i));
    }

    /* renamed from: Y */
    public static int m733Y(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m752F(list) + (size * AbstractC7726x.m503q(i));
    }

    /* renamed from: Z */
    public static int m732Z(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC7726x.m505o0(i, 0);
    }

    /* renamed from: a */
    public static int m731a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C7639f1) {
            C7639f1 c7639f1 = (C7639f1) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m493w0(c7639f1.m787e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m493w0(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: a0 */
    public static int m730a0(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC7726x.m510k0(i, 0L);
    }

    /* renamed from: b0 */
    public static int m728b0(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC7726x.m531Q(i, true);
    }

    /* renamed from: e */
    public static <T, FT extends InterfaceC7648h0<FT>> void m725e(AbstractC7619c0<FT> abstractC7619c0, T t, T t2) {
        C7638f0<FT> mo875c = abstractC7619c0.mo875c(t2);
        if (!mo875c.f37681a.isEmpty()) {
            abstractC7619c0.mo874d(t).m799g(mo875c);
        }
    }

    /* renamed from: f */
    public static <T> void m724f(InterfaceC7678m1 interfaceC7678m1, T t, T t2, long j) {
        C7627d3.m846g(t, j, interfaceC7678m1.mo639c(C7627d3.m861G(t, j), C7627d3.m861G(t2, j)));
    }

    /* renamed from: g */
    public static <T, UT, UB> void m723g(AbstractC7731x2<UT, UB> abstractC7731x2, T t, T t2) {
        abstractC7731x2.mo397d(t, abstractC7731x2.mo396e(abstractC7731x2.mo394g(t), abstractC7731x2.mo394g(t2)));
    }

    /* renamed from: h */
    public static int m722h(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C7639f1) {
            C7639f1 c7639f1 = (C7639f1) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m491x0(c7639f1.m787e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m491x0(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: m */
    public static int m717m(int i, List<?> list) {
        int m498t0;
        int m498t02;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int m503q = AbstractC7726x.m503q(i) * size;
        if (list instanceof InterfaceC7610a1) {
            InterfaceC7610a1 interfaceC7610a1 = (InterfaceC7610a1) list;
            while (i2 < size) {
                Object mo406G0 = interfaceC7610a1.mo406G0(i2);
                if (mo406G0 instanceof AbstractC7652i) {
                    m498t02 = AbstractC7726x.m536H((AbstractC7652i) mo406G0);
                } else {
                    m498t02 = AbstractC7726x.m498t0((String) mo406G0);
                }
                m503q += m498t02;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof AbstractC7652i) {
                    m498t0 = AbstractC7726x.m536H((AbstractC7652i) obj);
                } else {
                    m498t0 = AbstractC7726x.m498t0((String) obj);
                }
                m503q += m498t0;
                i2++;
            }
        }
        return m503q;
    }

    /* renamed from: n */
    public static int m716n(int i, List<?> list, InterfaceC7640f2 interfaceC7640f2) {
        int m520d;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m503q = AbstractC7726x.m503q(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof C7733y0) {
                m520d = AbstractC7726x.m522c((C7733y0) obj);
            } else {
                m520d = AbstractC7726x.m520d((InterfaceC7703r1) obj, interfaceC7640f2);
            }
            m503q += m520d;
        }
        return m503q;
    }

    /* renamed from: o */
    public static int m715o(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C7639f1) {
            C7639f1 c7639f1 = (C7639f1) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m489y0(c7639f1.m787e(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m489y0(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: q */
    public static int m713q(int i, List<AbstractC7652i> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m503q = size * AbstractC7726x.m503q(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m503q += AbstractC7726x.m536H(list.get(i2));
        }
        return m503q;
    }

    /* renamed from: r */
    public static int m712r(int i, List<InterfaceC7703r1> list, InterfaceC7640f2 interfaceC7640f2) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC7726x.m532P(i, list.get(i3), interfaceC7640f2);
        }
        return i2;
    }

    /* renamed from: s */
    public static int m711s(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C7682n0) {
            C7682n0 c7682n0 = (C7682n0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m494w(c7682n0.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m494w(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: v */
    public static int m708v(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C7682n0) {
            C7682n0 c7682n0 = (C7682n0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m501r(c7682n0.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC7726x.m501r(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }
}
