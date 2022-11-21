package p168r4;

import android.content.Context;
import android.view.View;
import p060f4.InterfaceC3512a;
import p145p.C5270a;
import p235z2.C7601t;
/* renamed from: r4.x21 */
/* loaded from: classes2.dex */
public final class x21 implements y81, d81 {

    /* renamed from: a */
    public final Context f33415a;

    /* renamed from: b */
    public final cs0 f33416b;

    /* renamed from: d */
    public final no2 f33417d;

    /* renamed from: k */
    public final im0 f33418k;

    /* renamed from: p */
    public InterfaceC3512a f33419p;

    /* renamed from: q */
    public boolean f33420q;

    public x21(Context context, cs0 cs0Var, no2 no2Var, im0 im0Var) {
        this.f33415a = context;
        this.f33416b = cs0Var;
        this.f33417d = no2Var;
        this.f33418k = im0Var;
    }

    /* renamed from: a */
    public final synchronized void m5521a() {
        re0 re0Var;
        se0 se0Var;
        if (!this.f33417d.f28393P) {
            return;
        }
        if (this.f33416b == null) {
            return;
        }
        if (!C7601t.m924s().mo7874e0(this.f33415a)) {
            return;
        }
        im0 im0Var = this.f33418k;
        int i = im0Var.f25172b;
        int i2 = im0Var.f25173d;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        String sb2 = sb.toString();
        String m9962a = this.f33417d.f28395R.m9962a();
        if (this.f33417d.f28395R.m9961b() == 1) {
            re0Var = re0.VIDEO;
            se0Var = se0.DEFINED_BY_JAVASCRIPT;
        } else {
            re0Var = re0.HTML_DISPLAY;
            if (this.f33417d.f28414f == 1) {
                se0Var = se0.ONE_PIXEL;
            } else {
                se0Var = se0.BEGIN_TO_RENDER;
            }
        }
        InterfaceC3512a mo7876d = C7601t.m924s().mo7876d(sb2, this.f33416b.mo5122J(), "", "javascript", m9962a, se0Var, re0Var, this.f33417d.f28421i0);
        this.f33419p = mo7876d;
        cs0 cs0Var = this.f33416b;
        if (mo7876d != null) {
            C7601t.m924s().mo7875e(this.f33419p, (View) cs0Var);
            this.f33416b.mo5032y0(this.f33419p);
            C7601t.m924s().zzf(this.f33419p);
            this.f33420q = true;
            this.f33416b.mo5125H0("onSdkLoaded", new C5270a());
        }
    }

    @Override // p168r4.y81
    /* renamed from: d */
    public final synchronized void mo4268d() {
        if (this.f33420q) {
            return;
        }
        m5521a();
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final synchronized void mo5385g() {
        cs0 cs0Var;
        if (!this.f33420q) {
            m5521a();
        }
        if (this.f33417d.f28393P && this.f33419p != null && (cs0Var = this.f33416b) != null) {
            cs0Var.mo5125H0("onSdkImpression", new C5270a());
        }
    }
}
