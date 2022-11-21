package p168r4;

import java.util.List;
/* renamed from: r4.c74 */
/* loaded from: classes2.dex */
public final class c74 {

    /* renamed from: a */
    public final List<C5713e5> f21436a;

    /* renamed from: b */
    public final d14[] f21437b;

    public c74(List<C5713e5> list) {
        this.f21436a = list;
        this.f21437b = new d14[list.size()];
    }

    /* renamed from: a */
    public final void m12513a(d04 d04Var, z64 z64Var) {
        String str;
        for (int i = 0; i < this.f21437b.length; i++) {
            z64Var.m4416a();
            d14 mo10795r = d04Var.mo10795r(z64Var.m4415b(), 3);
            C5713e5 c5713e5 = this.f21436a.get(i);
            String str2 = c5713e5.f22814l;
            boolean z = true;
            if (!"application/cea-608".equals(str2) && !"application/cea-708".equals(str2)) {
                z = false;
            }
            String valueOf = String.valueOf(str2);
            if (valueOf.length() != 0) {
                str = "Invalid closed caption mime type provided: ".concat(valueOf);
            } else {
                str = new String("Invalid closed caption mime type provided: ");
            }
            C5903ja.m10373b(z, str);
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12579d(z64Var.m4414c());
            c5639c5.m12564n(str2);
            c5639c5.m12571h(c5713e5.f22806d);
            c5639c5.m12573g(c5713e5.f22805c);
            c5639c5.m12605G(c5713e5.f22800D);
            c5639c5.m12562p(c5713e5.f22816n);
            mo10795r.mo4004f(c5639c5.m12603I());
            this.f21437b[i] = mo10795r;
        }
    }

    /* renamed from: b */
    public final void m12512b(long j, C6423xb c6423xb) {
        if (c6423xb.m5407l() < 9) {
            return;
        }
        int m5423D = c6423xb.m5423D();
        int m5423D2 = c6423xb.m5423D();
        int m5397v = c6423xb.m5397v();
        if (m5423D == 434 && m5423D2 == 1195456820 && m5397v == 3) {
            sz3.m6944b(j, c6423xb, this.f21437b);
        }
    }
}
