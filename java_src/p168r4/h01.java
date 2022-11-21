package p168r4;
/* renamed from: r4.h01 */
/* loaded from: classes2.dex */
public final class h01 {

    /* renamed from: a */
    public final xt2 f24388a;

    /* renamed from: b */
    public final ls1 f24389b;

    /* renamed from: c */
    public final bp2 f24390c;

    public h01(ls1 ls1Var, bp2 bp2Var, xt2 xt2Var) {
        this.f24388a = xt2Var;
        this.f24389b = ls1Var;
        this.f24390c = bp2Var;
    }

    /* renamed from: b */
    public static String m11020b(int i) {
        int i2 = i - 1;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : "h";
    }

    /* renamed from: a */
    public final void m11021a(long j, int i) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
            xt2 xt2Var = this.f24388a;
            wt2 m5590a = wt2.m5590a("ad_closed");
            m5590a.m5583h(this.f24390c.f21154b.f20574b);
            m5590a.m5588c("show_time", String.valueOf(j));
            m5590a.m5588c("ad_format", "app_open_ad");
            m5590a.m5588c("acr", m11020b(i));
            xt2Var.mo4985a(m5590a);
            return;
        }
        ks1 m9572d = this.f24389b.m9572d();
        m9572d.m9956b(this.f24390c.f21154b.f20574b);
        m9572d.m9954d("action", "ad_closed");
        m9572d.m9954d("show_time", String.valueOf(j));
        m9572d.m9954d("ad_format", "app_open_ad");
        m9572d.m9954d("acr", m11020b(i));
        m9572d.m9953e();
    }
}
