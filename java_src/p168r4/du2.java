package p168r4;

import java.util.Map;
/* renamed from: r4.du2 */
/* loaded from: classes2.dex */
public final class du2 implements xt2 {

    /* renamed from: a */
    public final hu2 f22432a;

    /* renamed from: b */
    public final fu2 f22433b;

    /* renamed from: c */
    public final tt2 f22434c;

    public du2(tt2 tt2Var, hu2 hu2Var, fu2 fu2Var, byte[] bArr) {
        this.f22434c = tt2Var;
        this.f22432a = hu2Var;
        this.f22433b = fu2Var;
    }

    @Override // p168r4.xt2
    /* renamed from: a */
    public final void mo4985a(wt2 wt2Var) {
        this.f22434c.m6722a(mo4984b(wt2Var));
    }

    @Override // p168r4.xt2
    /* renamed from: b */
    public final String mo4984b(wt2 wt2Var) {
        hu2 hu2Var = this.f22432a;
        Map<String, String> m5581j = wt2Var.m5581j();
        this.f22433b.m11365a(m5581j);
        return hu2Var.m10822a(m5581j);
    }
}
