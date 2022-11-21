package p168r4;

import java.util.List;
/* renamed from: r4.o64 */
/* loaded from: classes2.dex */
public final class o64 {

    /* renamed from: a */
    public final List<C5713e5> f28913a;

    /* renamed from: b */
    public final d14[] f28914b;

    public o64(List<C5713e5> list) {
        this.f28913a = list;
        this.f28914b = new d14[list.size()];
    }

    /* renamed from: a */
    public final void m8874a(d04 d04Var, z64 z64Var) {
        String str;
        for (int i = 0; i < this.f28914b.length; i++) {
            z64Var.m4416a();
            d14 mo10795r = d04Var.mo10795r(z64Var.m4415b(), 3);
            C5713e5 c5713e5 = this.f28913a.get(i);
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
            String str3 = c5713e5.f22803a;
            if (str3 == null) {
                str3 = z64Var.m4414c();
            }
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12579d(str3);
            c5639c5.m12564n(str2);
            c5639c5.m12571h(c5713e5.f22806d);
            c5639c5.m12573g(c5713e5.f22805c);
            c5639c5.m12605G(c5713e5.f22800D);
            c5639c5.m12562p(c5713e5.f22816n);
            mo10795r.mo4004f(c5639c5.m12603I());
            this.f28914b[i] = mo10795r;
        }
    }

    /* renamed from: b */
    public final void m8873b(long j, C6423xb c6423xb) {
        sz3.m6945a(j, c6423xb, this.f28914b);
    }
}
