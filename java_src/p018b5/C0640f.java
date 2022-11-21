package p018b5;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
/* renamed from: b5.f */
/* loaded from: classes2.dex */
public final class C0640f implements Iterable<InterfaceC0827q>, InterfaceC0827q, InterfaceC0759m {

    /* renamed from: a */
    public final SortedMap<Integer, InterfaceC0827q> f1806a;

    /* renamed from: b */
    public final Map<String, InterfaceC0827q> f1807b;

    public C0640f() {
        this.f1806a = new TreeMap();
        this.f1807b = new TreeMap();
    }

    /* renamed from: d */
    public final int m26019d() {
        return this.f1806a.size();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0640f)) {
            return false;
        }
        C0640f c0640f = (C0640f) obj;
        if (m26018i() != c0640f.m26018i()) {
            return false;
        }
        if (this.f1806a.isEmpty()) {
            return c0640f.f1806a.isEmpty();
        }
        for (int intValue = this.f1806a.firstKey().intValue(); intValue <= this.f1806a.lastKey().intValue(); intValue++) {
            if (!m26017m(intValue).equals(c0640f.m26017m(intValue))) {
                return false;
            }
        }
        return true;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: g */
    public final Boolean mo25084g() {
        return Boolean.TRUE;
    }

    public final int hashCode() {
        return this.f1806a.hashCode() * 31;
    }

    @Override // java.lang.Iterable
    public final Iterator<InterfaceC0827q> iterator() {
        return new C0623e(this);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: j */
    public final String mo25083j() {
        return m26016o(",");
    }

    /* renamed from: q */
    public final Iterator<Integer> m26015q() {
        return this.f1806a.keySet().iterator();
    }

    @Override // p018b5.InterfaceC0759m
    /* renamed from: t */
    public final boolean mo25607t(String str) {
        return "length".equals(str) || this.f1807b.containsKey(str);
    }

    public final String toString() {
        return m26016o(",");
    }

    /* renamed from: v */
    public final void m26013v() {
        this.f1806a.clear();
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: e */
    public final InterfaceC0827q mo25086e() {
        C0640f c0640f = new C0640f();
        for (Map.Entry<Integer, InterfaceC0827q> entry : this.f1806a.entrySet()) {
            if (entry.getValue() instanceof InterfaceC0759m) {
                c0640f.f1806a.put(entry.getKey(), entry.getValue());
            } else {
                c0640f.f1806a.put(entry.getKey(), entry.getValue().mo25086e());
            }
        }
        return c0640f;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: f */
    public final Double mo25085f() {
        if (this.f1806a.size() == 1) {
            return m26017m(0).mo25085f();
        }
        if (this.f1806a.size() <= 0) {
            return Double.valueOf(0.0d);
        }
        return Double.valueOf(Double.NaN);
    }

    /* renamed from: i */
    public final int m26018i() {
        if (this.f1806a.isEmpty()) {
            return 0;
        }
        return this.f1806a.lastKey().intValue() + 1;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: k */
    public final Iterator<InterfaceC0827q> mo25082k() {
        return new C0606d(this, this.f1806a.keySet().iterator(), this.f1807b.keySet().iterator());
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: l */
    public final InterfaceC0827q mo24969l(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        if (!"concat".equals(str) && !"every".equals(str) && !"filter".equals(str) && !"forEach".equals(str) && !"indexOf".equals(str) && !"join".equals(str) && !"lastIndexOf".equals(str) && !"map".equals(str) && !"pop".equals(str) && !"push".equals(str) && !"reduce".equals(str) && !"reduceRight".equals(str) && !"reverse".equals(str) && !"shift".equals(str) && !"slice".equals(str) && !"some".equals(str) && !"sort".equals(str) && !"splice".equals(str) && !"toString".equals(str) && !"unshift".equals(str)) {
            return C0725k.m25723a(this, new C0895u(str), c0917v4, list);
        }
        return C0607d0.m26093a(str, this, c0917v4, list);
    }

    /* renamed from: o */
    public final String m26016o(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb = new StringBuilder();
        if (!this.f1806a.isEmpty()) {
            for (int i = 0; i < m26018i(); i++) {
                InterfaceC0827q m26017m = m26017m(i);
                sb.append(str);
                if (!(m26017m instanceof C0912v) && !(m26017m instanceof C0793o)) {
                    sb.append(m26017m.mo25083j());
                }
            }
            sb.delete(0, str.length());
        }
        return sb.toString();
    }

    /* renamed from: r */
    public final List<InterfaceC0827q> m26014r() {
        ArrayList arrayList = new ArrayList(m26018i());
        for (int i = 0; i < m26018i(); i++) {
            arrayList.add(m26017m(i));
        }
        return arrayList;
    }

    @Override // p018b5.InterfaceC0759m
    /* renamed from: s */
    public final InterfaceC0827q mo25608s(String str) {
        InterfaceC0827q interfaceC0827q;
        if ("length".equals(str)) {
            return new C0691i(Double.valueOf(m26018i()));
        }
        if (mo25607t(str) && (interfaceC0827q = this.f1807b.get(str)) != null) {
            return interfaceC0827q;
        }
        return InterfaceC0827q.f2154c;
    }

    @Override // p018b5.InterfaceC0759m
    /* renamed from: u */
    public final void mo25606u(String str, InterfaceC0827q interfaceC0827q) {
        if (interfaceC0827q == null) {
            this.f1807b.remove(str);
        } else {
            this.f1807b.put(str, interfaceC0827q);
        }
    }

    /* renamed from: w */
    public final void m26012w(int i, InterfaceC0827q interfaceC0827q) {
        if (i >= 0) {
            if (i >= m26018i()) {
                m26010y(i, interfaceC0827q);
                return;
            }
            for (int intValue = this.f1806a.lastKey().intValue(); intValue >= i; intValue--) {
                SortedMap<Integer, InterfaceC0827q> sortedMap = this.f1806a;
                Integer valueOf = Integer.valueOf(intValue);
                InterfaceC0827q interfaceC0827q2 = sortedMap.get(valueOf);
                if (interfaceC0827q2 != null) {
                    m26010y(intValue + 1, interfaceC0827q2);
                    this.f1806a.remove(valueOf);
                }
            }
            m26010y(i, interfaceC0827q);
            return;
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append("Invalid value index: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: x */
    public final void m26011x(int i) {
        int intValue = this.f1806a.lastKey().intValue();
        if (i <= intValue && i >= 0) {
            this.f1806a.remove(Integer.valueOf(i));
            if (i == intValue) {
                SortedMap<Integer, InterfaceC0827q> sortedMap = this.f1806a;
                int i2 = i - 1;
                Integer valueOf = Integer.valueOf(i2);
                if (!sortedMap.containsKey(valueOf) && i2 >= 0) {
                    this.f1806a.put(valueOf, InterfaceC0827q.f2154c);
                    return;
                }
                return;
            }
            while (true) {
                i++;
                if (i <= this.f1806a.lastKey().intValue()) {
                    SortedMap<Integer, InterfaceC0827q> sortedMap2 = this.f1806a;
                    Integer valueOf2 = Integer.valueOf(i);
                    InterfaceC0827q interfaceC0827q = sortedMap2.get(valueOf2);
                    if (interfaceC0827q != null) {
                        this.f1806a.put(Integer.valueOf(i - 1), interfaceC0827q);
                        this.f1806a.remove(valueOf2);
                    }
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: y */
    public final void m26010y(int i, InterfaceC0827q interfaceC0827q) {
        if (i <= 32468) {
            if (i >= 0) {
                if (interfaceC0827q == null) {
                    this.f1806a.remove(Integer.valueOf(i));
                    return;
                } else {
                    this.f1806a.put(Integer.valueOf(i), interfaceC0827q);
                    return;
                }
            }
            StringBuilder sb = new StringBuilder(32);
            sb.append("Out of bounds index: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        throw new IllegalStateException("Array too large");
    }

    /* renamed from: z */
    public final boolean m26009z(int i) {
        if (i >= 0 && i <= this.f1806a.lastKey().intValue()) {
            return this.f1806a.containsKey(Integer.valueOf(i));
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append("Out of bounds index: ");
        sb.append(i);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public C0640f(List<InterfaceC0827q> list) {
        this();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                m26010y(i, list.get(i));
            }
        }
    }

    /* renamed from: m */
    public final InterfaceC0827q m26017m(int i) {
        InterfaceC0827q interfaceC0827q;
        if (i < m26018i()) {
            if (m26009z(i) && (interfaceC0827q = this.f1806a.get(Integer.valueOf(i))) != null) {
                return interfaceC0827q;
            }
            return InterfaceC0827q.f2154c;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }
}
