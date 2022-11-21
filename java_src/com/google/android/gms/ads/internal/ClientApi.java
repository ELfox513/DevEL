package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.util.HashMap;
import p004a3.BinderC0059a0;
import p004a3.BinderC0060b;
import p004a3.BinderC0062c;
import p004a3.BinderC0079t;
import p004a3.BinderC0080u;
import p004a3.BinderC0082w;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p168r4.AbstractBinderC5741ew;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.C6478yt;
import p168r4.InterfaceC6074nw;
import p168r4.InterfaceC6221rv;
import p168r4.InterfaceC6369vv;
import p168r4.ak1;
import p168r4.bu0;
import p168r4.f82;
import p168r4.fb0;
import p168r4.gj2;
import p168r4.go2;
import p168r4.hj2;
import p168r4.ih0;
import p168r4.im0;
import p168r4.ke0;
import p168r4.o60;
import p168r4.q60;
import p168r4.rm2;
import p168r4.s20;
import p168r4.ut1;
import p168r4.vk0;
import p168r4.w20;
import p168r4.we0;
import p168r4.wk2;
import p168r4.yh0;
import p168r4.yj1;
import p235z2.BinderC7600s;
/* loaded from: classes.dex */
public class ClientApi extends AbstractBinderC5741ew {
    @Override // p168r4.InterfaceC5778fw
    /* renamed from: A6 */
    public final vk0 mo11352A6(InterfaceC3512a interfaceC3512a, fb0 fb0Var, int i) {
        return bu0.m12695d((Context) BinderC3514b.m18740t0(interfaceC3512a), fb0Var, i).mo8579y();
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: B1 */
    public final w20 mo11351B1(InterfaceC3512a interfaceC3512a, InterfaceC3512a interfaceC3512a2, InterfaceC3512a interfaceC3512a3) {
        return new yj1((View) BinderC3514b.m18740t0(interfaceC3512a), (HashMap) BinderC3514b.m18740t0(interfaceC3512a2), (HashMap) BinderC3514b.m18740t0(interfaceC3512a3));
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: I3 */
    public final InterfaceC6369vv mo11350I3(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, String str, int i) {
        return new BinderC7600s((Context) BinderC3514b.m18740t0(interfaceC3512a), c6478yt, str, new im0(213806000, i, true, false));
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: K4 */
    public final InterfaceC6369vv mo11349K4(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, String str, fb0 fb0Var, int i) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        rm2 mo8589t = bu0.m12695d(context, fb0Var, i).mo8589t();
        mo8589t.mo7434b(context);
        mo8589t.mo7435a(c6478yt);
        mo8589t.mo7436A(str);
        return mo8589t.zza().zza();
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: O3 */
    public final ke0 mo11348O3(InterfaceC3512a interfaceC3512a, fb0 fb0Var, int i) {
        return bu0.m12695d((Context) BinderC3514b.m18740t0(interfaceC3512a), fb0Var, i).mo8649A();
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: P3 */
    public final InterfaceC6369vv mo11347P3(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, String str, fb0 fb0Var, int i) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        wk2 mo8599o = bu0.m12695d(context, fb0Var, i).mo8599o();
        mo8599o.mo5700b(context);
        mo8599o.mo5701a(c6478yt);
        mo8599o.mo5702A(str);
        return mo8599o.zza().zza();
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: U */
    public final we0 mo11346U(InterfaceC3512a interfaceC3512a) {
        Activity activity = (Activity) BinderC3514b.m18740t0(interfaceC3512a);
        AdOverlayInfoParcel m23098X0 = AdOverlayInfoParcel.m23098X0(activity.getIntent());
        if (m23098X0 == null) {
            return new BinderC0080u(activity);
        }
        int i = m23098X0.f7641v;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return new BinderC0080u(activity);
                        }
                        return new BinderC0059a0(activity);
                    }
                    return new BinderC0082w(activity, m23098X0);
                }
                return new BinderC0062c(activity);
            }
            return new BinderC0060b(activity);
        }
        return new BinderC0079t(activity);
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: b4 */
    public final InterfaceC6074nw mo11345b4(InterfaceC3512a interfaceC3512a, int i) {
        return bu0.m12694e((Context) BinderC3514b.m18740t0(interfaceC3512a), i).mo8603m();
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: i5 */
    public final s20 mo11344i5(InterfaceC3512a interfaceC3512a, InterfaceC3512a interfaceC3512a2) {
        return new ak1((FrameLayout) BinderC3514b.m18740t0(interfaceC3512a), (FrameLayout) BinderC3514b.m18740t0(interfaceC3512a2), 213806000);
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: j6 */
    public final InterfaceC6369vv mo11343j6(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, String str, fb0 fb0Var, int i) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        gj2 mo8593r = bu0.m12695d(context, fb0Var, i).mo8593r();
        mo8593r.mo9560u(str);
        mo8593r.mo9561a(context);
        hj2 zza = mo8593r.zza();
        if (i >= ((Integer) C5592av.m12935c().m8098c(C6225rz.f30778C3)).intValue()) {
            return zza.mo9263a();
        }
        return zza.zza();
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: m1 */
    public final InterfaceC6221rv mo11342m1(InterfaceC3512a interfaceC3512a, String str, fb0 fb0Var, int i) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        return new f82(bu0.m12695d(context, fb0Var, i), context, str);
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: o4 */
    public final ih0 mo11341o4(InterfaceC3512a interfaceC3512a, fb0 fb0Var, int i) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        go2 mo8583w = bu0.m12695d(context, fb0Var, i).mo8583w();
        mo8583w.mo11048a(context);
        return mo8583w.zza().zza();
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: q5 */
    public final q60 mo11340q5(InterfaceC3512a interfaceC3512a, fb0 fb0Var, int i, o60 o60Var) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        ut1 mo8620c = bu0.m12695d(context, fb0Var, i).mo8620c();
        mo8620c.mo4548a(context);
        mo8620c.mo4547b(o60Var);
        return mo8620c.zza().mo4068b();
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: x5 */
    public final yh0 mo11339x5(InterfaceC3512a interfaceC3512a, String str, fb0 fb0Var, int i) {
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        go2 mo8583w = bu0.m12695d(context, fb0Var, i).mo8583w();
        mo8583w.mo11048a(context);
        mo8583w.mo11047u(str);
        return mo8583w.zza().mo10779a();
    }
}
