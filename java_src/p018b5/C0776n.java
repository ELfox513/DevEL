package p018b5;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: b5.n */
/* loaded from: classes2.dex */
public class C0776n implements InterfaceC0827q, InterfaceC0759m {

    /* renamed from: a */
    public final Map<String, InterfaceC0827q> f1982a = new HashMap();

    /* renamed from: a */
    public final List<String> m25609a() {
        return new ArrayList(this.f1982a.keySet());
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: f */
    public final Double mo25085f() {
        return Double.valueOf(Double.NaN);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: g */
    public final Boolean mo25084g() {
        return Boolean.TRUE;
    }

    public final int hashCode() {
        return this.f1982a.hashCode();
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: j */
    public final String mo25083j() {
        return "[object Object]";
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: k */
    public final Iterator<InterfaceC0827q> mo25082k() {
        return C0725k.m25722b(this.f1982a);
    }

    @Override // p018b5.InterfaceC0759m
    /* renamed from: t */
    public final boolean mo25607t(String str) {
        return this.f1982a.containsKey(str);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: e */
    public final InterfaceC0827q mo25086e() {
        C0776n c0776n = new C0776n();
        for (Map.Entry<String, InterfaceC0827q> entry : this.f1982a.entrySet()) {
            if (entry.getValue() instanceof InterfaceC0759m) {
                c0776n.f1982a.put(entry.getKey(), entry.getValue());
            } else {
                c0776n.f1982a.put(entry.getKey(), entry.getValue().mo25086e());
            }
        }
        return c0776n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0776n)) {
            return false;
        }
        return this.f1982a.equals(((C0776n) obj).f1982a);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: l */
    public InterfaceC0827q mo24969l(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        if ("toString".equals(str)) {
            return new C0895u(toString());
        }
        return C0725k.m25723a(this, new C0895u(str), c0917v4, list);
    }

    @Override // p018b5.InterfaceC0759m
    /* renamed from: s */
    public final InterfaceC0827q mo25608s(String str) {
        if (this.f1982a.containsKey(str)) {
            return this.f1982a.get(str);
        }
        return InterfaceC0827q.f2154c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (!this.f1982a.isEmpty()) {
            for (String str : this.f1982a.keySet()) {
                sb.append(String.format("%s: %s,", str, this.f1982a.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // p018b5.InterfaceC0759m
    /* renamed from: u */
    public final void mo25606u(String str, InterfaceC0827q interfaceC0827q) {
        if (interfaceC0827q == null) {
            this.f1982a.remove(str);
        } else {
            this.f1982a.put(str, interfaceC0827q);
        }
    }
}
