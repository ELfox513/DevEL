package p018b5;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: b5.x6 */
/* loaded from: classes2.dex */
public final class C0953x6 {
    /* renamed from: a */
    public static InterfaceC0827q m24989a(C0816p5 c0816p5) {
        if (c0816p5 == null) {
            return InterfaceC0827q.f2154c;
        }
        int m25508C = c0816p5.m25508C() - 1;
        if (m25508C != 1) {
            if (m25508C != 2) {
                if (m25508C != 3) {
                    if (m25508C == 4) {
                        List<C0816p5> m25503w = c0816p5.m25503w();
                        ArrayList arrayList = new ArrayList();
                        for (C0816p5 c0816p52 : m25503w) {
                            arrayList.add(m24989a(c0816p52));
                        }
                        return new C0844r(c0816p5.m25505u(), arrayList);
                    }
                    throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
                } else if (c0816p5.m25501z()) {
                    return new C0657g(Boolean.valueOf(c0816p5.m25502x()));
                } else {
                    return new C0657g(null);
                }
            } else if (c0816p5.m25510A()) {
                return new C0691i(Double.valueOf(c0816p5.m25507s()));
            } else {
                return new C0691i(null);
            }
        } else if (c0816p5.m25509B()) {
            return new C0895u(c0816p5.m25504v());
        } else {
            return InterfaceC0827q.f2161l;
        }
    }

    /* renamed from: b */
    public static InterfaceC0827q m24988b(Object obj) {
        if (obj == null) {
            return InterfaceC0827q.f2155e;
        }
        if (obj instanceof String) {
            return new C0895u((String) obj);
        }
        if (obj instanceof Double) {
            return new C0691i((Double) obj);
        }
        if (obj instanceof Long) {
            return new C0691i(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new C0691i(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new C0657g((Boolean) obj);
        }
        if (obj instanceof Map) {
            C0776n c0776n = new C0776n();
            Map map = (Map) obj;
            for (Object obj2 : map.keySet()) {
                InterfaceC0827q m24988b = m24988b(map.get(obj2));
                if (obj2 != null) {
                    if (!(obj2 instanceof String)) {
                        obj2 = obj2.toString();
                    }
                    c0776n.mo25606u((String) obj2, m24988b);
                }
            }
            return c0776n;
        } else if (obj instanceof List) {
            C0640f c0640f = new C0640f();
            for (Object obj3 : (List) obj) {
                c0640f.m26010y(c0640f.m26018i(), m24988b(obj3));
            }
            return c0640f;
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }
}
