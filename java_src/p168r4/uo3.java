package p168r4;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: r4.uo3 */
/* loaded from: classes2.dex */
public final class uo3 {

    /* renamed from: a */
    public static final Class<?> f32346a;

    /* renamed from: b */
    public static final hp3<?, ?> f32347b;

    /* renamed from: c */
    public static final hp3<?, ?> f32348c;

    /* renamed from: d */
    public static final hp3<?, ?> f32349d;

    /* renamed from: C */
    public static hp3<?, ?> m6457C(boolean z) {
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
            return (hp3) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* renamed from: R */
    public static int m6442R(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: T */
    public static int m6440T(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: V */
    public static int m6438V(List<?> list) {
        return list.size();
    }

    /* renamed from: a */
    public static hp3<?, ?> m6433a() {
        return f32347b;
    }

    /* renamed from: b */
    public static hp3<?, ?> m6431b() {
        return f32348c;
    }

    /* renamed from: c */
    public static hp3<?, ?> m6429c() {
        return f32349d;
    }

    /* renamed from: d */
    public static boolean m6428d(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f32346a = cls;
        f32347b = m6457C(false);
        f32348c = m6457C(true);
        f32349d = new jp3();
    }

    /* renamed from: A */
    public static void m6459A(Class<?> cls) {
        Class<?> cls2;
        if (!pm3.class.isAssignableFrom(cls) && (cls2 = f32346a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: B */
    public static void m6458B(int i, List<?> list, xl3 xl3Var, ro3 ro3Var) {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                xl3Var.m5280D(i, list.get(i2), ro3Var);
            }
        }
    }

    /* renamed from: Y */
    public static int m6435Y(int i, Object obj, ro3 ro3Var) {
        if (obj instanceof en3) {
            int m5676B = wl3.m5676B(i << 3);
            int m11706a = ((en3) obj).m11706a();
            return m5676B + wl3.m5676B(m11706a) + m11706a;
        }
        return wl3.m5676B(i << 3) + wl3.m5671c((ao3) obj, ro3Var);
    }

    /* renamed from: g */
    public static <UT, UB> UB m6425g(int i, List<Integer> list, tm3 tm3Var, UB ub, hp3<UT, UB> hp3Var) {
        if (tm3Var == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (tm3Var.mo5370h(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) m6424h(i, intValue, ub, hp3Var);
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
                if (!tm3Var.mo5370h(intValue2)) {
                    ub = (UB) m6424h(i, intValue2, ub, hp3Var);
                    it.remove();
                }
            }
        }
        return ub;
    }

    /* renamed from: h */
    public static <UT, UB> UB m6424h(int i, int i2, UB ub, hp3<UT, UB> hp3Var) {
        if (ub == null) {
            ub = hp3Var.mo10219g();
        }
        hp3Var.mo10224b(ub, i, i2);
        return ub;
    }

    /* renamed from: j */
    public static void m6422j(int i, List<Double> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5271b(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m6421k(int i, List<Float> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5272a(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m6420l(int i, List<Long> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5275I(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m6419m(int i, List<Long> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5274J(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m6418n(int i, List<Long> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5262k(i, list, z);
        }
    }

    /* renamed from: o */
    public static void m6417o(int i, List<Long> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5273K(i, list, z);
        }
    }

    /* renamed from: p */
    public static void m6416p(int i, List<Long> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5264i(i, list, z);
        }
    }

    /* renamed from: q */
    public static void m6415q(int i, List<Integer> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5277G(i, list, z);
        }
    }

    /* renamed from: r */
    public static void m6414r(int i, List<Integer> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5266g(i, list, z);
        }
    }

    /* renamed from: s */
    public static void m6413s(int i, List<Integer> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5263j(i, list, z);
        }
    }

    /* renamed from: t */
    public static void m6412t(int i, List<Integer> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5276H(i, list, z);
        }
    }

    /* renamed from: u */
    public static void m6411u(int i, List<Integer> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5265h(i, list, z);
        }
    }

    /* renamed from: v */
    public static void m6410v(int i, List<Integer> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5270c(i, list, z);
        }
    }

    /* renamed from: w */
    public static void m6409w(int i, List<Boolean> list, xl3 xl3Var, boolean z) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5269d(i, list, z);
        }
    }

    /* renamed from: x */
    public static void m6408x(int i, List<String> list, xl3 xl3Var) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5268e(i, list);
        }
    }

    /* renamed from: y */
    public static void m6407y(int i, List<ll3> list, xl3 xl3Var) {
        if (list != null && !list.isEmpty()) {
            xl3Var.m5267f(i, list);
        }
    }

    /* renamed from: z */
    public static void m6406z(int i, List<?> list, xl3 xl3Var, ro3 ro3Var) {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                xl3Var.m5281C(i, list.get(i2), ro3Var);
            }
        }
    }

    /* renamed from: D */
    public static int m6456D(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ln3) {
            ln3 ln3Var = (ln3) list;
            i = 0;
            while (i2 < size) {
                i += wl3.m5675C(ln3Var.m9606g(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += wl3.m5675C(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: E */
    public static int m6455E(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m6456D(list) + (list.size() * wl3.m5648z(i));
    }

    /* renamed from: F */
    public static int m6454F(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ln3) {
            ln3 ln3Var = (ln3) list;
            i = 0;
            while (i2 < size) {
                i += wl3.m5675C(ln3Var.m9606g(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += wl3.m5675C(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: G */
    public static int m6453G(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m6454F(list) + (size * wl3.m5648z(i));
    }

    /* renamed from: H */
    public static int m6452H(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof ln3) {
            ln3 ln3Var = (ln3) list;
            i = 0;
            while (i2 < size) {
                long m9606g = ln3Var.m9606g(i2);
                i += wl3.m5675C((m9606g >> 63) ^ (m9606g + m9606g));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = list.get(i2).longValue();
                i += wl3.m5675C((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: I */
    public static int m6451I(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m6452H(list) + (size * wl3.m5648z(i));
    }

    /* renamed from: J */
    public static int m6450J(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            i = 0;
            while (i2 < size) {
                i += wl3.m5677A(qm3Var.m7783g(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += wl3.m5677A(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: K */
    public static int m6449K(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m6450J(list) + (size * wl3.m5648z(i));
    }

    /* renamed from: L */
    public static int m6448L(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            i = 0;
            while (i2 < size) {
                i += wl3.m5677A(qm3Var.m7783g(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += wl3.m5677A(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: M */
    public static int m6447M(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m6448L(list) + (size * wl3.m5648z(i));
    }

    /* renamed from: N */
    public static int m6446N(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            i = 0;
            while (i2 < size) {
                i += wl3.m5676B(qm3Var.m7783g(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += wl3.m5676B(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    /* renamed from: O */
    public static int m6445O(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m6446N(list) + (size * wl3.m5648z(i));
    }

    /* renamed from: P */
    public static int m6444P(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof qm3) {
            qm3 qm3Var = (qm3) list;
            i = 0;
            while (i2 < size) {
                int m7783g = qm3Var.m7783g(i2);
                i += wl3.m5676B((m7783g >> 31) ^ (m7783g + m7783g));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = list.get(i2).intValue();
                i += wl3.m5676B((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: Q */
    public static int m6443Q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m6444P(list) + (size * wl3.m5648z(i));
    }

    /* renamed from: S */
    public static int m6441S(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (wl3.m5676B(i << 3) + 4);
    }

    /* renamed from: U */
    public static int m6439U(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (wl3.m5676B(i << 3) + 8);
    }

    /* renamed from: W */
    public static int m6437W(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (wl3.m5676B(i << 3) + 1);
    }

    /* renamed from: X */
    public static int m6436X(int i, List<?> list) {
        int m5674D;
        int m5674D2;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int m5648z = wl3.m5648z(i) * size;
        if (list instanceof gn3) {
            gn3 gn3Var = (gn3) list;
            while (i2 < size) {
                Object mo9289W = gn3Var.mo9289W(i2);
                if (mo9289W instanceof ll3) {
                    m5674D2 = wl3.m5672b((ll3) mo9289W);
                } else {
                    m5674D2 = wl3.m5674D((String) mo9289W);
                }
                m5648z += m5674D2;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof ll3) {
                    m5674D = wl3.m5672b((ll3) obj);
                } else {
                    m5674D = wl3.m5674D((String) obj);
                }
                m5648z += m5674D;
                i2++;
            }
        }
        return m5648z;
    }

    /* renamed from: Z */
    public static int m6434Z(int i, List<?> list, ro3 ro3Var) {
        int m5671c;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m5648z = wl3.m5648z(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof en3) {
                m5671c = wl3.m5673a((en3) obj);
            } else {
                m5671c = wl3.m5671c((ao3) obj, ro3Var);
            }
            m5648z += m5671c;
        }
        return m5648z;
    }

    /* renamed from: a0 */
    public static int m6432a0(int i, List<ll3> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int m5648z = size * wl3.m5648z(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            m5648z += wl3.m5672b(list.get(i2));
        }
        return m5648z;
    }

    /* renamed from: b0 */
    public static int m6430b0(int i, List<ao3> list, ro3 ro3Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += wl3.m5668f(i, list.get(i3), ro3Var);
        }
        return i2;
    }

    /* renamed from: e */
    public static <T, FT extends fm3<FT>> void m6427e(cm3<FT> cm3Var, T t, T t2) {
        cm3Var.mo12094b(t2);
        throw null;
    }

    /* renamed from: f */
    public static <T, UT, UB> void m6426f(hp3<UT, UB> hp3Var, T t, T t2) {
        hp3Var.mo10217i(t, hp3Var.mo10212o(hp3Var.mo10216j(t), hp3Var.mo10216j(t2)));
    }

    /* renamed from: i */
    public static <T> void m6423i(vn3 vn3Var, T t, T t2, long j) {
        rp3.m7367w(t, j, vn3.m6056c(rp3.m7368v(t, j), rp3.m7368v(t2, j)));
    }
}
