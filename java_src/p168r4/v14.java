package p168r4;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: r4.v14 */
/* loaded from: classes2.dex */
public final class v14 extends x14 {

    /* renamed from: b */
    public long f32546b;

    /* renamed from: c */
    public long[] f32547c;

    /* renamed from: d */
    public long[] f32548d;

    public v14() {
        super(new zz3());
        this.f32546b = -9223372036854775807L;
        this.f32547c = new long[0];
        this.f32548d = new long[0];
    }

    /* renamed from: g */
    public static Double m6243g(C6423xb c6423xb) {
        return Double.valueOf(Double.longBitsToDouble(c6423xb.m5421F()));
    }

    @Override // p168r4.x14
    /* renamed from: a */
    public final boolean mo4931a(C6423xb c6423xb) {
        return true;
    }

    /* renamed from: d */
    public final long m6246d() {
        return this.f32546b;
    }

    /* renamed from: e */
    public final long[] m6245e() {
        return this.f32547c;
    }

    /* renamed from: f */
    public final long[] m6244f() {
        return this.f32548d;
    }

    /* renamed from: j */
    public static Object m6240j(C6423xb c6423xb, int i) {
        if (i != 0) {
            boolean z = false;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 8) {
                            if (i != 10) {
                                if (i != 11) {
                                    return null;
                                }
                                Date date = new Date((long) m6243g(c6423xb).doubleValue());
                                c6423xb.m5400s(2);
                                return date;
                            }
                            int m5417b = c6423xb.m5417b();
                            ArrayList arrayList = new ArrayList(m5417b);
                            for (int i2 = 0; i2 < m5417b; i2++) {
                                Object m6240j = m6240j(c6423xb, c6423xb.m5397v());
                                if (m6240j != null) {
                                    arrayList.add(m6240j);
                                }
                            }
                            return arrayList;
                        }
                        return m6241i(c6423xb);
                    }
                    HashMap hashMap = new HashMap();
                    while (true) {
                        String m6242h = m6242h(c6423xb);
                        int m5397v = c6423xb.m5397v();
                        if (m5397v == 9) {
                            return hashMap;
                        }
                        Object m6240j2 = m6240j(c6423xb, m5397v);
                        if (m6240j2 != null) {
                            hashMap.put(m6242h, m6240j2);
                        }
                    }
                } else {
                    return m6242h(c6423xb);
                }
            } else {
                if (c6423xb.m5397v() == 1) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        } else {
            return m6243g(c6423xb);
        }
    }

    /* renamed from: h */
    public static String m6242h(C6423xb c6423xb) {
        int m5396w = c6423xb.m5396w();
        int m5404o = c6423xb.m5404o();
        c6423xb.m5400s(m5396w);
        return new String(c6423xb.m5402q(), m5404o, m5396w);
    }

    /* renamed from: i */
    public static HashMap<String, Object> m6241i(C6423xb c6423xb) {
        int m5417b = c6423xb.m5417b();
        HashMap<String, Object> hashMap = new HashMap<>(m5417b);
        for (int i = 0; i < m5417b; i++) {
            String m6242h = m6242h(c6423xb);
            Object m6240j = m6240j(c6423xb, c6423xb.m5397v());
            if (m6240j != null) {
                hashMap.put(m6242h, m6240j);
            }
        }
        return hashMap;
    }

    @Override // p168r4.x14
    /* renamed from: b */
    public final boolean mo4930b(C6423xb c6423xb, long j) {
        if (c6423xb.m5397v() != 2 || !"onMetaData".equals(m6242h(c6423xb)) || c6423xb.m5397v() != 8) {
            return false;
        }
        HashMap<String, Object> m6241i = m6241i(c6423xb);
        Object obj = m6241i.get("duration");
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (doubleValue > 0.0d) {
                this.f32546b = (long) (doubleValue * 1000000.0d);
            }
        }
        Object obj2 = m6241i.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f32547c = new long[size];
                this.f32548d = new long[size];
                for (int i = 0; i < size; i++) {
                    Object obj5 = list.get(i);
                    Object obj6 = list2.get(i);
                    if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                        this.f32547c[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.f32548d[i] = ((Double) obj5).longValue();
                    } else {
                        this.f32547c = new long[0];
                        this.f32548d = new long[0];
                        break;
                    }
                }
            }
        }
        return false;
    }
}
