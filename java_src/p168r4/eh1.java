package p168r4;

import android.content.Context;
import android.view.View;
import p004a3.InterfaceC0076q;
import p060f4.InterfaceC3512a;
import p145p.C5270a;
import p235z2.C7601t;
/* renamed from: r4.eh1 */
/* loaded from: classes2.dex */
public final class eh1 implements y81, InterfaceC0076q {

    /* renamed from: a */
    public final Context f22984a;

    /* renamed from: b */
    public final cs0 f22985b;

    /* renamed from: d */
    public final no2 f22986d;

    /* renamed from: k */
    public final im0 f22987k;

    /* renamed from: p */
    public final EnumC6178qp f22988p;

    /* renamed from: q */
    public InterfaceC3512a f22989q;

    public eh1(Context context, cs0 cs0Var, no2 no2Var, im0 im0Var, EnumC6178qp enumC6178qp) {
        this.f22984a = context;
        this.f22985b = cs0Var;
        this.f22986d = no2Var;
        this.f22987k = im0Var;
        this.f22988p = enumC6178qp;
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: A2 */
    public final void mo4171A2() {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: C6 */
    public final void mo4170C6(int i) {
        this.f22989q = null;
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: c */
    public final void mo4168c() {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e */
    public final void mo4166e() {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e3 */
    public final void mo4165e3() {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: j0 */
    public final void mo4163j0() {
        cs0 cs0Var;
        if (this.f22989q == null || (cs0Var = this.f22985b) == null) {
            return;
        }
        cs0Var.mo5125H0("onSdkImpression", new C5270a());
    }

    @Override // p168r4.y81
    /* renamed from: d */
    public final void mo4268d() {
        se0 se0Var;
        se0 se0Var2;
        re0 re0Var;
        EnumC6178qp enumC6178qp = this.f22988p;
        if ((enumC6178qp == EnumC6178qp.REWARD_BASED_VIDEO_AD || enumC6178qp == EnumC6178qp.INTERSTITIAL || enumC6178qp == EnumC6178qp.APP_OPEN) && this.f22986d.f28393P && this.f22985b != null && C7601t.m924s().mo7874e0(this.f22984a)) {
            im0 im0Var = this.f22987k;
            int i = im0Var.f25172b;
            int i2 = im0Var.f25173d;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String m9962a = this.f22986d.f28395R.m9962a();
            if (this.f22986d.f28395R.m9961b() == 1) {
                re0Var = re0.VIDEO;
                se0Var2 = se0.DEFINED_BY_JAVASCRIPT;
            } else {
                if (this.f22986d.f28398U == 2) {
                    se0Var = se0.UNSPECIFIED;
                } else {
                    se0Var = se0.BEGIN_TO_RENDER;
                }
                se0Var2 = se0Var;
                re0Var = re0.HTML_DISPLAY;
            }
            InterfaceC3512a mo7876d = C7601t.m924s().mo7876d(sb2, this.f22985b.mo5122J(), "", "javascript", m9962a, se0Var2, re0Var, this.f22986d.f28421i0);
            this.f22989q = mo7876d;
            if (mo7876d != null) {
                C7601t.m924s().mo7875e(this.f22989q, (View) this.f22985b);
                this.f22985b.mo5032y0(this.f22989q);
                C7601t.m924s().zzf(this.f22989q);
                this.f22985b.mo5125H0("onSdkLoaded", new C5270a());
            }
        }
    }
}
