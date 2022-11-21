package p168r4;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import p004a3.C0074o;
import p004a3.InterfaceC0083x;
import p235z2.C7591j;
import p235z2.C7601t;
/* renamed from: r4.f22 */
/* loaded from: classes2.dex */
public final class f22 implements dh1 {

    /* renamed from: a */
    public final im0 f23256a;

    /* renamed from: b */
    public final h83<r01> f23257b;

    /* renamed from: c */
    public final no2 f23258c;

    /* renamed from: d */
    public final cs0 f23259d;

    /* renamed from: e */
    public final hp2 f23260e;

    /* renamed from: f */
    public final x50 f23261f;

    /* renamed from: g */
    public final boolean f23262g;

    public f22(im0 im0Var, h83<r01> h83Var, no2 no2Var, cs0 cs0Var, hp2 hp2Var, boolean z, x50 x50Var) {
        this.f23256a = im0Var;
        this.f23257b = h83Var;
        this.f23258c = no2Var;
        this.f23259d = cs0Var;
        this.f23260e = hp2Var;
        this.f23262g = z;
        this.f23261f = x50Var;
    }

    @Override // p168r4.dh1
    /* renamed from: a */
    public final void mo4920a(boolean z, Context context, w71 w71Var) {
        boolean z2;
        boolean z3;
        float f;
        int i;
        r01 r01Var = (r01) y73.m4797r(this.f23257b);
        this.f23259d.mo5098Y0(true);
        if (this.f23262g) {
            z2 = this.f23261f.m5500c(true);
        } else {
            z2 = true;
        }
        if (this.f23262g) {
            z3 = this.f23261f.m5499d();
        } else {
            z3 = false;
        }
        if (this.f23262g) {
            f = this.f23261f.m5498e();
        } else {
            f = 0.0f;
        }
        C7591j c7591j = new C7591j(z2, true, z3, f, -1, z, this.f23258c.f28388K, false);
        if (w71Var != null) {
            w71Var.m5815c();
        }
        C7601t.m940c();
        sg1 mo7629j = r01Var.mo7629j();
        cs0 cs0Var = this.f23259d;
        int i2 = this.f23258c.f28390M;
        if (i2 == -1) {
            C5739eu c5739eu = this.f23260e.f24785j;
            if (c5739eu != null) {
                int i3 = c5739eu.f23140a;
                if (i3 == 1) {
                    i = 7;
                } else if (i3 == 2) {
                    i = 6;
                }
                im0 im0Var = this.f23256a;
                no2 no2Var = this.f23258c;
                String str = no2Var.f28379B;
                uo2 uo2Var = no2Var.f28432s;
                C0074o.m27689a(context, new AdOverlayInfoParcel((InterfaceC5812gt) null, mo7629j, (InterfaceC0083x) null, cs0Var, i, im0Var, str, c7591j, uo2Var.f32343b, uo2Var.f32342a, this.f23260e.f24781f, w71Var), true);
            }
            cm0.m12442a("Error setting app open orientation; no targeting orientation available.");
            i2 = this.f23258c.f28390M;
        }
        i = i2;
        im0 im0Var2 = this.f23256a;
        no2 no2Var2 = this.f23258c;
        String str2 = no2Var2.f28379B;
        uo2 uo2Var2 = no2Var2.f28432s;
        C0074o.m27689a(context, new AdOverlayInfoParcel((InterfaceC5812gt) null, mo7629j, (InterfaceC0083x) null, cs0Var, i, im0Var2, str2, c7591j, uo2Var2.f32343b, uo2Var2.f32342a, this.f23260e.f24781f, w71Var), true);
    }
}
