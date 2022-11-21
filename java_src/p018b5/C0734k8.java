package p018b5;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: b5.k8 */
/* loaded from: classes2.dex */
public final class C0734k8 {

    /* renamed from: b */
    public static volatile C0734k8 f1933b;

    /* renamed from: c */
    public static volatile C0734k8 f1934c;

    /* renamed from: d */
    public static final C0734k8 f1935d = new C0734k8(true);

    /* renamed from: a */
    public final Map<C0717j8, C0938w8<?, ?>> f1936a;

    public C0734k8() {
        this.f1936a = new HashMap();
    }

    /* renamed from: a */
    public static C0734k8 m25701a() {
        C0734k8 c0734k8 = f1933b;
        if (c0734k8 == null) {
            synchronized (C0734k8.class) {
                c0734k8 = f1933b;
                if (c0734k8 == null) {
                    c0734k8 = f1935d;
                    f1933b = c0734k8;
                }
            }
        }
        return c0734k8;
    }

    public C0734k8(boolean z) {
        this.f1936a = Collections.emptyMap();
    }

    /* renamed from: b */
    public static C0734k8 m25700b() {
        C0734k8 c0734k8 = f1934c;
        if (c0734k8 != null) {
            return c0734k8;
        }
        synchronized (C0734k8.class) {
            C0734k8 c0734k82 = f1934c;
            if (c0734k82 != null) {
                return c0734k82;
            }
            C0734k8 m25259b = AbstractC0870s8.m25259b(C0734k8.class);
            f1934c = m25259b;
            return m25259b;
        }
    }

    /* renamed from: c */
    public final <ContainingType extends InterfaceC0634ea> C0938w8<ContainingType, ?> m25699c(ContainingType containingtype, int i) {
        return (C0938w8<ContainingType, ?>) this.f1936a.get(new C0717j8(containingtype, i));
    }
}
