package p018b5;

import java.util.Collections;
import java.util.TreeMap;
/* renamed from: b5.ag */
/* loaded from: classes2.dex */
public final class C0571ag {

    /* renamed from: a */
    public final TreeMap<Integer, C0810p> f1734a = new TreeMap<>();

    /* renamed from: b */
    public final TreeMap<Integer, C0810p> f1735b = new TreeMap<>();

    /* renamed from: a */
    public final void m26163a(String str, int i, C0810p c0810p, String str2) {
        String str3;
        TreeMap<Integer, C0810p> treeMap;
        if ("create".equals(str2)) {
            treeMap = this.f1735b;
        } else if ("edit".equals(str2)) {
            treeMap = this.f1734a;
        } else {
            String valueOf = String.valueOf(str2);
            if (valueOf.length() != 0) {
                str3 = "Unknown callback type: ".concat(valueOf);
            } else {
                str3 = new String("Unknown callback type: ");
            }
            throw new IllegalStateException(str3);
        }
        if (treeMap.containsKey(Integer.valueOf(i))) {
            i = treeMap.lastKey().intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i), c0810p);
    }

    /* renamed from: b */
    public final void m26162b(C0917v4 c0917v4, C0589c c0589c) {
        C0956x9 c0956x9 = new C0956x9(c0589c);
        for (Integer num : this.f1734a.keySet()) {
            C0572b clone = c0589c.m26126b().clone();
            int m26161c = m26161c(c0917v4, this.f1734a.get(num), c0956x9);
            if (m26161c == 2 || m26161c == -1) {
                c0589c.m26122f(clone);
            }
        }
        for (Integer num2 : this.f1735b.keySet()) {
            m26161c(c0917v4, this.f1735b.get(num2), c0956x9);
        }
    }

    /* renamed from: c */
    public static final int m26161c(C0917v4 c0917v4, C0810p c0810p, InterfaceC0827q interfaceC0827q) {
        InterfaceC0827q mo24853a = c0810p.mo24853a(c0917v4, Collections.singletonList(interfaceC0827q));
        if (mo24853a instanceof C0691i) {
            return C0935w5.m25052b(mo24853a.mo25085f().doubleValue());
        }
        return -1;
    }
}
