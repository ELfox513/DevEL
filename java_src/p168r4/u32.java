package p168r4;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import p004a3.C0074o;
import p004a3.InterfaceC0083x;
import p016b3.C0497k2;
import p235z2.C7591j;
import p235z2.C7601t;
/* renamed from: r4.u32 */
/* loaded from: classes2.dex */
public final class u32 implements dh1 {

    /* renamed from: a */
    public final Context f32154a;

    /* renamed from: b */
    public final im0 f32155b;

    /* renamed from: c */
    public final h83<yf1> f32156c;

    /* renamed from: d */
    public final no2 f32157d;

    /* renamed from: e */
    public final cs0 f32158e;

    /* renamed from: f */
    public final hp2 f32159f;

    /* renamed from: g */
    public final x50 f32160g;

    /* renamed from: h */
    public final boolean f32161h;

    public u32(Context context, im0 im0Var, h83<yf1> h83Var, no2 no2Var, cs0 cs0Var, hp2 hp2Var, boolean z, x50 x50Var) {
        this.f32154a = context;
        this.f32155b = im0Var;
        this.f32156c = h83Var;
        this.f32157d = no2Var;
        this.f32158e = cs0Var;
        this.f32159f = hp2Var;
        this.f32160g = x50Var;
        this.f32161h = z;
    }

    @Override // p168r4.dh1
    /* renamed from: a */
    public final void mo4920a(boolean z, Context context, w71 w71Var) {
        boolean z2;
        boolean z3;
        float f;
        yf1 yf1Var = (yf1) y73.m4797r(this.f32156c);
        this.f32158e.mo5098Y0(true);
        if (this.f32161h) {
            z2 = this.f32160g.m5500c(false);
        } else {
            z2 = false;
        }
        C7601t.m939d();
        boolean m26310l = C0497k2.m26310l(this.f32154a);
        if (this.f32161h) {
            z3 = this.f32160g.m5499d();
        } else {
            z3 = false;
        }
        if (this.f32161h) {
            f = this.f32160g.m5498e();
        } else {
            f = 0.0f;
        }
        C7591j c7591j = new C7591j(z2, m26310l, z3, f, -1, z, this.f32157d.f28388K, false);
        if (w71Var != null) {
            w71Var.m5815c();
        }
        C7601t.m940c();
        sg1 mo4734j = yf1Var.mo4734j();
        cs0 cs0Var = this.f32158e;
        no2 no2Var = this.f32157d;
        int i = no2Var.f28390M;
        im0 im0Var = this.f32155b;
        String str = no2Var.f28379B;
        uo2 uo2Var = no2Var.f28432s;
        C0074o.m27689a(context, new AdOverlayInfoParcel((InterfaceC5812gt) null, mo4734j, (InterfaceC0083x) null, cs0Var, i, im0Var, str, c7591j, uo2Var.f32343b, uo2Var.f32342a, this.f32159f.f24781f, w71Var), true);
    }
}
