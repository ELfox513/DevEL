package p018b5;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: b5.w5 */
/* loaded from: classes2.dex */
public final class C0935w5 {
    /* renamed from: d */
    public static long m25050d(double d) {
        return m25052b(d) & 4294967295L;
    }

    /* renamed from: e */
    public static EnumC0777n0 m25049e(String str) {
        EnumC0777n0 enumC0777n0 = null;
        if (str != null && !str.isEmpty()) {
            enumC0777n0 = EnumC0777n0.m25605c(Integer.parseInt(str));
        }
        if (enumC0777n0 != null) {
            return enumC0777n0;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    /* renamed from: k */
    public static boolean m25043k(InterfaceC0827q interfaceC0827q) {
        if (interfaceC0827q == null) {
            return false;
        }
        Double mo25085f = interfaceC0827q.mo25085f();
        return !mo25085f.isNaN() && mo25085f.doubleValue() >= 0.0d && mo25085f.equals(Double.valueOf(Math.floor(mo25085f.doubleValue())));
    }

    /* renamed from: c */
    public static int m25051c(C0917v4 c0917v4) {
        int m25052b = m25052b(c0917v4.m25070d("runtime.counter").mo25085f().doubleValue() + 1.0d);
        if (m25052b <= 1000000) {
            c0917v4.m25067g("runtime.counter", new C0691i(Double.valueOf(m25052b)));
            return m25052b;
        }
        throw new IllegalStateException("Instructions allowed exceeded");
    }

    /* renamed from: f */
    public static Object m25048f(InterfaceC0827q interfaceC0827q) {
        if (InterfaceC0827q.f2155e.equals(interfaceC0827q)) {
            return null;
        }
        if (InterfaceC0827q.f2154c.equals(interfaceC0827q)) {
            return "";
        }
        if (interfaceC0827q instanceof C0776n) {
            return m25047g((C0776n) interfaceC0827q);
        }
        if (interfaceC0827q instanceof C0640f) {
            ArrayList arrayList = new ArrayList();
            Iterator<InterfaceC0827q> it = ((C0640f) interfaceC0827q).iterator();
            while (it.hasNext()) {
                Object m25048f = m25048f(it.next());
                if (m25048f != null) {
                    arrayList.add(m25048f);
                }
            }
            return arrayList;
        } else if (!interfaceC0827q.mo25085f().isNaN()) {
            return interfaceC0827q.mo25085f();
        } else {
            return interfaceC0827q.mo25083j();
        }
    }

    /* renamed from: g */
    public static Map<String, Object> m25047g(C0776n c0776n) {
        HashMap hashMap = new HashMap();
        for (String str : c0776n.m25609a()) {
            Object m25048f = m25048f(c0776n.mo25608s(str));
            if (m25048f != null) {
                hashMap.put(str, m25048f);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static double m25053a(double d) {
        int i;
        if (Double.isNaN(d)) {
            return 0.0d;
        }
        if (!Double.isInfinite(d) && d != 0.0d && d != 0.0d) {
            if (d > 0.0d) {
                i = 1;
            } else {
                i = -1;
            }
            double d2 = i;
            double floor = Math.floor(Math.abs(d));
            Double.isNaN(d2);
            return d2 * floor;
        }
        return d;
    }

    /* renamed from: b */
    public static int m25052b(double d) {
        int i;
        double d2;
        if (!Double.isNaN(d) && !Double.isInfinite(d) && d != 0.0d) {
            if (d > 0.0d) {
                i = 1;
            } else {
                i = -1;
            }
            double floor = Math.floor(Math.abs(d));
            Double.isNaN(i);
            return (int) ((d2 * floor) % 4.294967296E9d);
        }
        return 0;
    }

    /* renamed from: h */
    public static void m25046h(String str, int i, List<InterfaceC0827q> list) {
        if (list.size() == i) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
    }

    /* renamed from: i */
    public static void m25045i(String str, int i, List<InterfaceC0827q> list) {
        if (list.size() >= i) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
    }

    /* renamed from: j */
    public static void m25044j(String str, int i, List<InterfaceC0827q> list) {
        if (list.size() <= i) {
            return;
        }
        throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
    }

    /* renamed from: l */
    public static boolean m25042l(InterfaceC0827q interfaceC0827q, InterfaceC0827q interfaceC0827q2) {
        if (!interfaceC0827q.getClass().equals(interfaceC0827q2.getClass())) {
            return false;
        }
        if ((interfaceC0827q instanceof C0912v) || (interfaceC0827q instanceof C0793o)) {
            return true;
        }
        if (interfaceC0827q instanceof C0691i) {
            if (Double.isNaN(interfaceC0827q.mo25085f().doubleValue()) || Double.isNaN(interfaceC0827q2.mo25085f().doubleValue())) {
                return false;
            }
            return interfaceC0827q.mo25085f().equals(interfaceC0827q2.mo25085f());
        } else if (interfaceC0827q instanceof C0895u) {
            return interfaceC0827q.mo25083j().equals(interfaceC0827q2.mo25083j());
        } else {
            if (interfaceC0827q instanceof C0657g) {
                return interfaceC0827q.mo25084g().equals(interfaceC0827q2.mo25084g());
            }
            if (interfaceC0827q != interfaceC0827q2) {
                return false;
            }
            return true;
        }
    }
}
