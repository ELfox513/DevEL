package p237z4;

import java.util.Iterator;
import java.util.Map;
/* renamed from: z4.n1 */
/* loaded from: classes2.dex */
public final class C7683n1 implements InterfaceC7678m1 {
    @Override // p237z4.InterfaceC7678m1
    /* renamed from: a */
    public final Object mo641a(Object obj) {
        ((C7669l1) obj).m669c();
        return obj;
    }

    @Override // p237z4.InterfaceC7678m1
    /* renamed from: b */
    public final Map<?, ?> mo640b(Object obj) {
        return (C7669l1) obj;
    }

    @Override // p237z4.InterfaceC7678m1
    /* renamed from: d */
    public final C7664k1<?, ?> mo638d(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // p237z4.InterfaceC7678m1
    /* renamed from: c */
    public final Object mo639c(Object obj, Object obj2) {
        C7669l1 c7669l1 = (C7669l1) obj;
        C7669l1 c7669l12 = (C7669l1) obj2;
        if (!c7669l12.isEmpty()) {
            if (!c7669l1.m671a()) {
                c7669l1 = c7669l1.m668f();
            }
            c7669l1.m670b(c7669l12);
        }
        return c7669l1;
    }

    @Override // p237z4.InterfaceC7678m1
    /* renamed from: e */
    public final int mo637e(int i, Object obj, Object obj2) {
        C7669l1 c7669l1 = (C7669l1) obj;
        if (c7669l1.isEmpty()) {
            return 0;
        }
        Iterator it = c7669l1.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }
}
