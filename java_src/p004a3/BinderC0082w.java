package p004a3;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import p060f4.InterfaceC3512a;
import p168r4.C5592av;
import p168r4.C6225rz;
import p168r4.InterfaceC5812gt;
import p168r4.cf1;
import p168r4.ve0;
import p235z2.C7601t;
/* renamed from: a3.w */
/* loaded from: classes.dex */
public final class BinderC0082w extends ve0 {

    /* renamed from: a */
    public final AdOverlayInfoParcel f148a;

    /* renamed from: b */
    public final Activity f149b;

    /* renamed from: d */
    public boolean f150d = false;

    /* renamed from: k */
    public boolean f151k = false;

    public BinderC0082w(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f148a = adOverlayInfoParcel;
        this.f149b = activity;
    }

    /* renamed from: a */
    public final synchronized void m27687a() {
        if (!this.f151k) {
            InterfaceC0076q interfaceC0076q = this.f148a.f7633d;
            if (interfaceC0076q != null) {
                interfaceC0076q.mo4170C6(4);
            }
            this.f151k = true;
        }
    }

    @Override // p168r4.we0
    /* renamed from: c */
    public final void mo5759c() {
    }

    @Override // p168r4.we0
    /* renamed from: g */
    public final boolean mo5757g() {
        return false;
    }

    @Override // p168r4.we0
    /* renamed from: h */
    public final void mo5756h() {
    }

    @Override // p168r4.we0
    /* renamed from: i0 */
    public final void mo5754i0(InterfaceC3512a interfaceC3512a) {
    }

    @Override // p168r4.we0
    /* renamed from: j */
    public final void mo5753j() {
    }

    @Override // p168r4.we0
    /* renamed from: m2 */
    public final void mo5749m2(int i, int i2, Intent intent) {
    }

    @Override // p168r4.we0
    /* renamed from: r */
    public final void mo5747r() {
    }

    @Override // p168r4.we0
    /* renamed from: u0 */
    public final void mo5746u0(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f150d);
    }

    @Override // p168r4.we0
    /* renamed from: d */
    public final void mo5758d() {
        InterfaceC0076q interfaceC0076q = this.f148a.f7633d;
        if (interfaceC0076q != null) {
            interfaceC0076q.mo4168c();
        }
    }

    @Override // p168r4.we0
    /* renamed from: i */
    public final void mo5755i() {
        if (this.f150d) {
            this.f149b.finish();
            return;
        }
        this.f150d = true;
        InterfaceC0076q interfaceC0076q = this.f148a.f7633d;
        if (interfaceC0076q != null) {
            interfaceC0076q.mo4165e3();
        }
    }

    @Override // p168r4.we0
    /* renamed from: k */
    public final void mo5752k() {
        InterfaceC0076q interfaceC0076q = this.f148a.f7633d;
        if (interfaceC0076q != null) {
            interfaceC0076q.mo4171A2();
        }
        if (this.f149b.isFinishing()) {
            m27687a();
        }
    }

    @Override // p168r4.we0
    /* renamed from: l0 */
    public final void mo5751l0(Bundle bundle) {
        InterfaceC0076q interfaceC0076q;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31080n6)).booleanValue()) {
            this.f149b.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f148a;
        if (adOverlayInfoParcel == null) {
            this.f149b.finish();
        } else if (z) {
            this.f149b.finish();
        } else {
            if (bundle == null) {
                InterfaceC5812gt interfaceC5812gt = adOverlayInfoParcel.f7632b;
                if (interfaceC5812gt != null) {
                    interfaceC5812gt.mo3609F0();
                }
                cf1 cf1Var = this.f148a.f7630J;
                if (cf1Var != null) {
                    cf1Var.mo5096a();
                }
                if (this.f149b.getIntent() != null && this.f149b.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (interfaceC0076q = this.f148a.f7633d) != null) {
                    interfaceC0076q.mo4163j0();
                }
            }
            C7601t.m941b();
            Activity activity = this.f149b;
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.f148a;
            C0064e c0064e = adOverlayInfoParcel2.f7631a;
            if (!C0058a.m27708b(activity, c0064e, adOverlayInfoParcel2.f7639t, c0064e.f108t)) {
                this.f149b.finish();
            }
        }
    }

    @Override // p168r4.we0
    /* renamed from: m */
    public final void mo5750m() {
        if (this.f149b.isFinishing()) {
            m27687a();
        }
    }

    @Override // p168r4.we0
    /* renamed from: o */
    public final void mo5748o() {
        if (this.f149b.isFinishing()) {
            m27687a();
        }
    }
}
