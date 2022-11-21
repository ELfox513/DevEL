package p018b5;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: b5.j */
/* loaded from: classes2.dex */
public abstract class AbstractC0708j implements InterfaceC0827q, InterfaceC0759m {

    /* renamed from: a */
    public final String f1911a;

    /* renamed from: b */
    public final Map<String, InterfaceC0827q> f1912b = new HashMap();

    public AbstractC0708j(String str) {
        this.f1911a = str;
    }

    /* renamed from: a */
    public abstract InterfaceC0827q mo24853a(C0917v4 c0917v4, List<InterfaceC0827q> list);

    /* renamed from: b */
    public final String m25779b() {
        return this.f1911a;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: e */
    public InterfaceC0827q mo25086e() {
        return this;
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
        String str = this.f1911a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: j */
    public final String mo25083j() {
        return this.f1911a;
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: k */
    public final Iterator<InterfaceC0827q> mo25082k() {
        return C0725k.m25722b(this.f1912b);
    }

    @Override // p018b5.InterfaceC0759m
    /* renamed from: t */
    public final boolean mo25607t(String str) {
        return this.f1912b.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC0708j)) {
            return false;
        }
        AbstractC0708j abstractC0708j = (AbstractC0708j) obj;
        String str = this.f1911a;
        if (str == null) {
            return false;
        }
        return str.equals(abstractC0708j.f1911a);
    }

    @Override // p018b5.InterfaceC0827q
    /* renamed from: l */
    public final InterfaceC0827q mo24969l(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        if ("toString".equals(str)) {
            return new C0895u(this.f1911a);
        }
        return C0725k.m25723a(this, new C0895u(str), c0917v4, list);
    }

    @Override // p018b5.InterfaceC0759m
    /* renamed from: s */
    public final InterfaceC0827q mo25608s(String str) {
        if (this.f1912b.containsKey(str)) {
            return this.f1912b.get(str);
        }
        return InterfaceC0827q.f2154c;
    }

    @Override // p018b5.InterfaceC0759m
    /* renamed from: u */
    public final void mo25606u(String str, InterfaceC0827q interfaceC0827q) {
        if (interfaceC0827q == null) {
            this.f1912b.remove(str);
        } else {
            this.f1912b.put(str, interfaceC0827q);
        }
    }
}
