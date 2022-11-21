package p203v3;

import java.util.Map;
import java.util.Set;
import p097j5.C4348j;
import p145p.C5270a;
import p185t3.C6734b;
import p194u3.C6895c;
/* renamed from: v3.c1 */
/* loaded from: classes.dex */
public final class C7001c1 {

    /* renamed from: a */
    public final C5270a<C6995b<?>, C6734b> f35925a;

    /* renamed from: b */
    public final C5270a<C6995b<?>, String> f35926b;

    /* renamed from: c */
    public final C4348j<Map<C6995b<?>, String>> f35927c;

    /* renamed from: d */
    public int f35928d;

    /* renamed from: e */
    public boolean f35929e;

    /* renamed from: a */
    public final Set<C6995b<?>> m2723a() {
        return this.f35925a.keySet();
    }

    /* renamed from: b */
    public final void m2722b(C6995b<?> c6995b, C6734b c6734b, String str) {
        this.f35925a.put(c6995b, c6734b);
        this.f35926b.put(c6995b, str);
        this.f35928d--;
        if (!c6734b.m3524b1()) {
            this.f35929e = true;
        }
        if (this.f35928d == 0) {
            if (this.f35929e) {
                this.f35927c.m16774b(new C6895c(this.f35925a));
                return;
            }
            this.f35927c.m16773c(this.f35926b);
        }
    }
}
