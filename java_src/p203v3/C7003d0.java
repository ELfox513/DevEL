package p203v3;

import p185t3.C6738d;
import p220x3.C7289o;
/* renamed from: v3.d0 */
/* loaded from: classes.dex */
public final class C7003d0 {

    /* renamed from: a */
    public final C6995b<?> f35930a;

    /* renamed from: b */
    public final C6738d f35931b;

    public /* synthetic */ C7003d0(C6995b c6995b, C6738d c6738d, C7056x c7056x) {
        this.f35930a = c6995b;
        this.f35931b = c6738d;
    }

    /* renamed from: a */
    public static /* synthetic */ C6995b m2719a(C7003d0 c7003d0) {
        return c7003d0.f35930a;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof C7003d0)) {
            C7003d0 c7003d0 = (C7003d0) obj;
            if (C7289o.m1908a(this.f35930a, c7003d0.f35930a) && C7289o.m1908a(this.f35931b, c7003d0.f35931b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return C7289o.m1907b(this.f35930a, this.f35931b);
    }

    public final String toString() {
        return C7289o.m1906c(this).m1905a("key", this.f35930a).m1905a("feature", this.f35931b).toString();
    }
}
