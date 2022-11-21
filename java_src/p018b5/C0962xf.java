package p018b5;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: b5.xf */
/* loaded from: classes2.dex */
public final class C0962xf extends AbstractC0708j {

    /* renamed from: d */
    public final C0971y7 f2421d;

    /* renamed from: k */
    public final Map<String, AbstractC0708j> f2422k;

    public C0962xf(C0971y7 c0971y7) {
        super("require");
        this.f2422k = new HashMap();
        this.f2421d = c0971y7;
    }

    @Override // p018b5.AbstractC0708j
    /* renamed from: a */
    public final InterfaceC0827q mo24853a(C0917v4 c0917v4, List<InterfaceC0827q> list) {
        AbstractC0708j abstractC0708j;
        String str;
        C0935w5.m25046h("require", 1, list);
        String mo25083j = c0917v4.m25072b(list.get(0)).mo25083j();
        if (this.f2422k.containsKey(mo25083j)) {
            return this.f2422k.get(mo25083j);
        }
        C0971y7 c0971y7 = this.f2421d;
        if (c0971y7.f2436a.containsKey(mo25083j)) {
            try {
                abstractC0708j = c0971y7.f2436a.get(mo25083j).call();
            } catch (Exception unused) {
                String valueOf = String.valueOf(mo25083j);
                if (valueOf.length() != 0) {
                    str = "Failed to create API implementation: ".concat(valueOf);
                } else {
                    str = new String("Failed to create API implementation: ");
                }
                throw new IllegalStateException(str);
            }
        } else {
            abstractC0708j = InterfaceC0827q.f2154c;
        }
        if (abstractC0708j instanceof AbstractC0708j) {
            this.f2422k.put(mo25083j, (AbstractC0708j) abstractC0708j);
        }
        return abstractC0708j;
    }
}
