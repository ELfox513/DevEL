package p168r4;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.bm3 */
/* loaded from: classes2.dex */
public final class bm3 {

    /* renamed from: b */
    public static volatile bm3 f21117b;

    /* renamed from: c */
    public static volatile bm3 f21118c;

    /* renamed from: d */
    public static final bm3 f21119d = new bm3(true);

    /* renamed from: a */
    public final Map<am3, nm3<?, ?>> f21120a;

    public bm3() {
        this.f21120a = new HashMap();
    }

    /* renamed from: a */
    public static bm3 m12746a() {
        bm3 bm3Var = f21117b;
        if (bm3Var == null) {
            synchronized (bm3.class) {
                bm3Var = f21117b;
                if (bm3Var == null) {
                    bm3Var = f21119d;
                    f21117b = bm3Var;
                }
            }
        }
        return bm3Var;
    }

    public bm3(boolean z) {
        this.f21120a = Collections.emptyMap();
    }

    /* renamed from: b */
    public static bm3 m12745b() {
        bm3 bm3Var = f21118c;
        if (bm3Var != null) {
            return bm3Var;
        }
        synchronized (bm3.class) {
            bm3 bm3Var2 = f21118c;
            if (bm3Var2 != null) {
                return bm3Var2;
            }
            bm3 m10248b = jm3.m10248b(bm3.class);
            f21118c = m10248b;
            return m10248b;
        }
    }

    /* renamed from: c */
    public final <ContainingType extends ao3> nm3<ContainingType, ?> m12744c(ContainingType containingtype, int i) {
        return (nm3<ContainingType, ?>) this.f21120a.get(new am3(containingtype, i));
    }
}
