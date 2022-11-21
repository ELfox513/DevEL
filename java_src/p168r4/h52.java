package p168r4;
/* renamed from: r4.h52 */
/* loaded from: classes2.dex */
public final class h52 {

    /* renamed from: a */
    public final vp2 f24445a;

    /* renamed from: b */
    public final dq1 f24446b;

    /* renamed from: c */
    public final ls1 f24447c;

    /* renamed from: d */
    public final xt2 f24448d;

    public h52(vp2 vp2Var, dq1 dq1Var, ls1 ls1Var, xt2 xt2Var) {
        this.f24445a = vp2Var;
        this.f24446b = dq1Var;
        this.f24447c = ls1Var;
        this.f24448d = xt2Var;
    }

    /* renamed from: a */
    public final void m10982a(so2 so2Var, no2 no2Var, int i, u12 u12Var, long j) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31040i6)).booleanValue()) {
            wt2 m5590a = wt2.m5590a("adapter_status");
            m5590a.m5583h(so2Var);
            m5590a.m5582i(no2Var);
            m5590a.m5588c("adapter_l", String.valueOf(j));
            m5590a.m5588c("sc", Integer.toString(i));
            if (u12Var != null) {
                m5590a.m5588c("arec", Integer.toString(u12Var.m6650b().f27361a));
                String m6040a = this.f24445a.m6040a(u12Var.getMessage());
                if (m6040a != null) {
                    m5590a.m5588c("areec", m6040a);
                }
            }
            cq1 m11993d = this.f24446b.m11993d(no2Var.f28433t);
            if (m11993d != null) {
                m5590a.m5588c("ancn", m11993d.f21652a);
                rd0 rd0Var = m11993d.f21653b;
                if (rd0Var != null) {
                    m5590a.m5588c("adapter_v", rd0Var.toString());
                }
                rd0 rd0Var2 = m11993d.f21654c;
                if (rd0Var2 != null) {
                    m5590a.m5588c("adapter_sv", rd0Var2.toString());
                }
            }
            this.f24448d.mo4985a(m5590a);
            return;
        }
        ks1 m9572d = this.f24447c.m9572d();
        m9572d.m9956b(so2Var);
        m9572d.m9955c(no2Var);
        m9572d.m9954d("action", "adapter_status");
        m9572d.m9954d("adapter_l", String.valueOf(j));
        m9572d.m9954d("sc", Integer.toString(i));
        if (u12Var != null) {
            m9572d.m9954d("arec", Integer.toString(u12Var.m6650b().f27361a));
            String m6040a2 = this.f24445a.m6040a(u12Var.getMessage());
            if (m6040a2 != null) {
                m9572d.m9954d("areec", m6040a2);
            }
        }
        cq1 m11993d2 = this.f24446b.m11993d(no2Var.f28433t);
        if (m11993d2 != null) {
            m9572d.m9954d("ancn", m11993d2.f21652a);
            rd0 rd0Var3 = m11993d2.f21653b;
            if (rd0Var3 != null) {
                m9572d.m9954d("adapter_v", rd0Var3.toString());
            }
            rd0 rd0Var4 = m11993d2.f21654c;
            if (rd0Var4 != null) {
                m9572d.m9954d("adapter_sv", rd0Var4.toString());
            }
        }
        m9572d.m9953e();
    }
}
