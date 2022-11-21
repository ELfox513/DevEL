package p144o7;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import p144o7.C5102a0;
import p144o7.C5226u;
/* renamed from: o7.j1 */
/* loaded from: classes2.dex */
public final class C5162j1 {

    /* renamed from: a */
    public static final Class<?> f19459a = m14415B();

    /* renamed from: b */
    public static final AbstractC5195o1<?, ?> f19460b = m14414C(false);

    /* renamed from: c */
    public static final AbstractC5195o1<?, ?> f19461c = m14414C(true);

    /* renamed from: d */
    public static final AbstractC5195o1<?, ?> f19462d = new C5202q1();

    /* renamed from: B */
    public static Class<?> m14415B() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: C */
    public static AbstractC5195o1<?, ?> m14414C(boolean z) {
        try {
            Class<?> m14413D = m14413D();
            if (m14413D == null) {
                return null;
            }
            return (AbstractC5195o1) m14413D.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: D */
    public static Class<?> m14413D() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: H */
    public static AbstractC5195o1<?, ?> m14409H() {
        return f19460b;
    }

    /* renamed from: I */
    public static AbstractC5195o1<?, ?> m14408I() {
        return f19461c;
    }

    /* renamed from: K */
    public static boolean m14406K(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: M */
    public static AbstractC5195o1<?, ?> m14404M() {
        return f19462d;
    }

    /* renamed from: b */
    public static int m14388b(List<?> list) {
        return list.size();
    }

    /* renamed from: g */
    public static int m14379g(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: i */
    public static int m14377i(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: A */
    public static <UT, UB> UB m14416A(int i, List<Integer> list, C5102a0.InterfaceC5107e interfaceC5107e, UB ub, AbstractC5195o1<UT, UB> abstractC5195o1) {
        if (interfaceC5107e == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (interfaceC5107e.mo14647a(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) m14405L(i, intValue, ub, abstractC5195o1);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (!interfaceC5107e.mo14647a(intValue2)) {
                    ub = (UB) m14405L(i, intValue2, ub, abstractC5195o1);
                    it.remove();
                }
            }
        }
        return ub;
    }

    /* renamed from: J */
    public static void m14407J(Class<?> cls) {
        Class<?> cls2;
        if (!AbstractC5248y.class.isAssignableFrom(cls) && (cls2 = f19459a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: L */
    public static <UT, UB> UB m14405L(int i, int i2, UB ub, AbstractC5195o1<UT, UB> abstractC5195o1) {
        if (ub == null) {
            ub = abstractC5195o1.mo14118n();
        }
        abstractC5195o1.mo14125e(ub, i, i2);
        return ub;
    }

    /* renamed from: N */
    public static void m14403N(int i, List<Boolean> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13879B(i, list, z);
        }
    }

    /* renamed from: O */
    public static void m14402O(int i, List<AbstractC5137h> list, InterfaceC5242v1 interfaceC5242v1) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13866O(i, list);
        }
    }

    /* renamed from: P */
    public static void m14401P(int i, List<Double> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13868M(i, list, z);
        }
    }

    /* renamed from: Q */
    public static void m14400Q(int i, List<Integer> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13869L(i, list, z);
        }
    }

    /* renamed from: R */
    public static void m14399R(int i, List<Integer> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13880A(i, list, z);
        }
    }

    /* renamed from: S */
    public static void m14398S(int i, List<Long> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13842x(i, list, z);
        }
    }

    /* renamed from: T */
    public static void m14397T(int i, List<Float> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13865a(i, list, z);
        }
    }

    /* renamed from: U */
    public static void m14396U(int i, List<?> list, InterfaceC5242v1 interfaceC5242v1, InterfaceC5150h1 interfaceC5150h1) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13864b(i, list, interfaceC5150h1);
        }
    }

    /* renamed from: V */
    public static void m14395V(int i, List<Integer> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13848r(i, list, z);
        }
    }

    /* renamed from: W */
    public static void m14394W(int i, List<Long> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13870K(i, list, z);
        }
    }

    /* renamed from: X */
    public static void m14393X(int i, List<?> list, InterfaceC5242v1 interfaceC5242v1, InterfaceC5150h1 interfaceC5150h1) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13861e(i, list, interfaceC5150h1);
        }
    }

    /* renamed from: Y */
    public static void m14392Y(int i, List<Integer> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13841y(i, list, z);
        }
    }

    /* renamed from: Z */
    public static void m14391Z(int i, List<Long> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13857i(i, list, z);
        }
    }

    /* renamed from: a0 */
    public static void m14389a0(int i, List<Integer> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13873H(i, list, z);
        }
    }

    /* renamed from: b0 */
    public static void m14387b0(int i, List<Long> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13877D(i, list, z);
        }
    }

    /* renamed from: c0 */
    public static void m14385c0(int i, List<String> list, InterfaceC5242v1 interfaceC5242v1) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13852n(i, list);
        }
    }

    /* renamed from: d0 */
    public static void m14383d0(int i, List<Integer> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13878C(i, list, z);
        }
    }

    /* renamed from: e0 */
    public static void m14381e0(int i, List<Long> list, InterfaceC5242v1 interfaceC5242v1, boolean z) {
        if (list != null && !list.isEmpty()) {
            interfaceC5242v1.mo13856j(i, list, z);
        }
    }

    /* renamed from: o */
    public static int m14371o(int i, Object obj, InterfaceC5150h1 interfaceC5150h1) {
        if (obj instanceof C5132f0) {
            return AbstractC5163k.m14359A(i, (C5132f0) obj);
        }
        return AbstractC5163k.m14351F(i, (InterfaceC5210s0) obj, interfaceC5150h1);
    }

    /* renamed from: z */
    public static <UT, UB> UB m14360z(int i, List<Integer> list, C5102a0.InterfaceC5106d<?> interfaceC5106d, UB ub, AbstractC5195o1<UT, UB> abstractC5195o1) {
        if (interfaceC5106d == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (interfaceC5106d.mo14648a(intValue) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) m14405L(i, intValue, ub, abstractC5195o1);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = it.next().intValue();
                if (interfaceC5106d.mo14648a(intValue2) == null) {
                    ub = (UB) m14405L(i, intValue2, ub, abstractC5195o1);
                    it.remove();
                }
            }
        }
        return ub;
    }

    /* renamed from: E */
    public static <T, FT extends C5226u.InterfaceC5228b<FT>> void m14412E(AbstractC5200q<FT> abstractC5200q, T t, T t2) {
        C5226u<FT> mo14103c = abstractC5200q.mo14103c(t2);
        if (!mo14103c.m13962n()) {
            abstractC5200q.mo14102d(t).m13955u(mo14103c);
        }
    }

    /* renamed from: F */
    public static <T> void m14411F(InterfaceC5191n0 interfaceC5191n0, T t, T t2, long j) {
        C5212s1.m14065O(t, j, interfaceC5191n0.mo14176a(C5212s1.m14079A(t, j), C5212s1.m14079A(t2, j)));
    }

    /* renamed from: G */
    public static <T, UT, UB> void m14410G(AbstractC5195o1<UT, UB> abstractC5195o1, T t, T t2) {
        abstractC5195o1.mo14116p(t, abstractC5195o1.mo14119k(abstractC5195o1.mo14123g(t), abstractC5195o1.mo14123g(t2)));
    }

    /* renamed from: a */
    public static int m14390a(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(size);
        }
        return size * AbstractC5163k.m14317d(i, true);
    }

    /* renamed from: c */
    public static int m14386c(int i, List<AbstractC5137h> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m14328U = size * AbstractC5163k.m14328U(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m14328U += AbstractC5163k.m14311h(list.get(i2));
        }
        return m14328U;
    }

    /* renamed from: d */
    public static int m14384d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m14382e = m14382e(list);
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(m14382e);
        }
        return m14382e + (size * AbstractC5163k.m14328U(i));
    }

    /* renamed from: e */
    public static int m14382e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14305l(c5256z.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14305l(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static int m14380f(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(size * 4);
        }
        return size * AbstractC5163k.m14304m(i, 0);
    }

    /* renamed from: h */
    public static int m14378h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(size * 8);
        }
        return size * AbstractC5163k.m14301o(i, 0L);
    }

    /* renamed from: j */
    public static int m14376j(int i, List<InterfaceC5210s0> list, InterfaceC5150h1 interfaceC5150h1) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC5163k.m14294s(i, list.get(i3), interfaceC5150h1);
        }
        return i2;
    }

    /* renamed from: k */
    public static int m14375k(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m14374l = m14374l(list);
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(m14374l);
        }
        return m14374l + (size * AbstractC5163k.m14328U(i));
    }

    /* renamed from: l */
    public static int m14374l(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14289w(c5256z.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14289w(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: m */
    public static int m14373m(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int m14372n = m14372n(list);
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(m14372n);
        }
        return m14372n + (list.size() * AbstractC5163k.m14328U(i));
    }

    /* renamed from: n */
    public static int m14372n(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C5161j0) {
            C5161j0 c5161j0 = (C5161j0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14285y(c5161j0.m14422o(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14285y(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: p */
    public static int m14370p(int i, List<?> list, InterfaceC5150h1 interfaceC5150h1) {
        int m14349H;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m14328U = AbstractC5163k.m14328U(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof C5132f0) {
                m14349H = AbstractC5163k.m14357B((C5132f0) obj);
            } else {
                m14349H = AbstractC5163k.m14349H((InterfaceC5210s0) obj, interfaceC5150h1);
            }
            m14328U += m14349H;
        }
        return m14328U;
    }

    /* renamed from: q */
    public static int m14369q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m14368r = m14368r(list);
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(m14368r);
        }
        return m14368r + (size * AbstractC5163k.m14328U(i));
    }

    /* renamed from: r */
    public static int m14368r(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14335P(c5256z.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14335P(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: s */
    public static int m14367s(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m14366t = m14366t(list);
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(m14366t);
        }
        return m14366t + (size * AbstractC5163k.m14328U(i));
    }

    /* renamed from: t */
    public static int m14366t(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C5161j0) {
            C5161j0 c5161j0 = (C5161j0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14331R(c5161j0.m14422o(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14331R(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: u */
    public static int m14365u(int i, List<?> list) {
        int m14329T;
        int m14329T2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int m14328U = AbstractC5163k.m14328U(i) * size;
        if (list instanceof InterfaceC5149h0) {
            InterfaceC5149h0 interfaceC5149h0 = (InterfaceC5149h0) list;
            while (i2 < size) {
                Object mo14094I0 = interfaceC5149h0.mo14094I0(i2);
                if (mo14094I0 instanceof AbstractC5137h) {
                    m14329T2 = AbstractC5163k.m14311h((AbstractC5137h) mo14094I0);
                } else {
                    m14329T2 = AbstractC5163k.m14329T((String) mo14094I0);
                }
                m14328U += m14329T2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof AbstractC5137h) {
                    m14329T = AbstractC5163k.m14311h((AbstractC5137h) obj);
                } else {
                    m14329T = AbstractC5163k.m14329T((String) obj);
                }
                m14328U += m14329T;
                i2++;
            }
        }
        return m14328U;
    }

    /* renamed from: v */
    public static int m14364v(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m14363w = m14363w(list);
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(m14363w);
        }
        return m14363w + (size * AbstractC5163k.m14328U(i));
    }

    /* renamed from: w */
    public static int m14363w(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C5256z) {
            C5256z c5256z = (C5256z) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14326W(c5256z.getInt(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14326W(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: x */
    public static int m14362x(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m14361y = m14361y(list);
        if (z) {
            return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(m14361y);
        }
        return m14361y + (size * AbstractC5163k.m14328U(i));
    }

    /* renamed from: y */
    public static int m14361y(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C5161j0) {
            C5161j0 c5161j0 = (C5161j0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14324Y(c5161j0.m14422o(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC5163k.m14324Y(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }
}
