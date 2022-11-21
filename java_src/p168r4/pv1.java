package p168r4;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import p004a3.C0074o;
import p004a3.InterfaceC0076q;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.pv1 */
/* loaded from: classes2.dex */
public final class pv1 implements InterfaceC0076q, qt0 {

    /* renamed from: a */
    public final Context f29813a;

    /* renamed from: b */
    public final im0 f29814b;

    /* renamed from: d */
    public iv1 f29815d;

    /* renamed from: k */
    public cs0 f29816k;

    /* renamed from: p */
    public boolean f29817p;

    /* renamed from: q */
    public boolean f29818q;

    /* renamed from: r */
    public long f29819r;

    /* renamed from: s */
    public InterfaceC6481yw f29820s;

    /* renamed from: t */
    public boolean f29821t;

    public pv1(Context context, im0 im0Var) {
        this.f29813a = context;
        this.f29814b = im0Var;
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: A2 */
    public final void mo4171A2() {
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: C6 */
    public final synchronized void mo4170C6(int i) {
        this.f29816k.destroy();
        if (!this.f29821t) {
            C0543w1.m26251k("Inspector closed.");
            InterfaceC6481yw interfaceC6481yw = this.f29820s;
            if (interfaceC6481yw != null) {
                try {
                    interfaceC6481yw.mo4541q0(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.f29818q = false;
        this.f29817p = false;
        this.f29819r = 0L;
        this.f29821t = false;
        this.f29820s = null;
    }

    @Override // p168r4.qt0
    /* renamed from: R */
    public final synchronized void mo5285R(boolean z) {
        if (z) {
            C0543w1.m26251k("Ad inspector loaded.");
            this.f29817p = true;
            m8124g();
            return;
        }
        cm0.m12437f("Ad inspector failed to load.");
        try {
            InterfaceC6481yw interfaceC6481yw = this.f29820s;
            if (interfaceC6481yw != null) {
                interfaceC6481yw.mo4541q0(dq2.m11989d(17, null, null));
            }
        } catch (RemoteException unused) {
        }
        this.f29821t = true;
        this.f29816k.destroy();
    }

    /* renamed from: a */
    public final void m8128a(iv1 iv1Var) {
        this.f29815d = iv1Var;
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

    /* renamed from: f */
    public final synchronized boolean m8125f(InterfaceC6481yw interfaceC6481yw) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue()) {
            cm0.m12437f("Ad inspector had an internal error.");
            try {
                interfaceC6481yw.mo4541q0(dq2.m11989d(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        } else if (this.f29815d == null) {
            cm0.m12437f("Ad inspector had an internal error.");
            try {
                interfaceC6481yw.mo4541q0(dq2.m11989d(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        } else {
            if (!this.f29817p && !this.f29818q) {
                if (C7601t.m932k().mo24763a() >= this.f29819r + ((Integer) C5592av.m12935c().m8098c(C6225rz.f31120s6)).intValue()) {
                    return true;
                }
            }
            cm0.m12437f("Ad inspector cannot be opened because it is already open.");
            try {
                interfaceC6481yw.mo4541q0(dq2.m11989d(19, null, null));
            } catch (RemoteException unused3) {
            }
            return false;
        }
    }

    /* renamed from: g */
    public final synchronized void m8124g() {
        if (this.f29817p && this.f29818q) {
            qm0.f30194e.execute(new Runnable(this) { // from class: r4.ov1

                /* renamed from: a */
                public final pv1 f29162a;

                {
                    this.f29162a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f29162a.m8126d();
                }
            });
        }
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: j0 */
    public final synchronized void mo4163j0() {
        this.f29818q = true;
        m8124g();
    }

    /* renamed from: b */
    public final synchronized void m8127b(InterfaceC6481yw interfaceC6481yw, v50 v50Var) {
        if (!m8125f(interfaceC6481yw)) {
            return;
        }
        try {
            C7601t.m938e();
            cs0 m8708a = os0.m8708a(this.f29813a, vt0.m6023b(), "", false, false, null, null, this.f29814b, null, null, null, C5882ip.m10583a(), null, null);
            this.f29816k = m8708a;
            st0 mo5057o0 = m8708a.mo5057o0();
            if (mo5057o0 == null) {
                cm0.m12437f("Failed to obtain a web view for the ad inspector");
                try {
                    interfaceC6481yw.mo4541q0(dq2.m11989d(17, "Failed to obtain a web view for the ad inspector", null));
                    return;
                } catch (RemoteException unused) {
                    return;
                }
            }
            this.f29820s = interfaceC6481yw;
            mo5057o0.mo7008d0(null, null, null, null, null, false, null, null, null, null, null, null, null, null, v50Var, null);
            mo5057o0.mo7000s0(this);
            this.f29816k.loadUrl((String) C5592av.m12935c().m8098c(C6225rz.f31104q6));
            C7601t.m940c();
            C0074o.m27689a(this.f29813a, new AdOverlayInfoParcel(this, this.f29816k, 1, this.f29814b), true);
            this.f29819r = C7601t.m932k().mo24763a();
        } catch (ns0 e) {
            cm0.m12436g("Failed to obtain a web view for the ad inspector", e);
            try {
                interfaceC6481yw.mo4541q0(dq2.m11989d(17, "Failed to obtain a web view for the ad inspector", null));
            } catch (RemoteException unused2) {
            }
        }
    }

    /* renamed from: d */
    public final /* synthetic */ void m8126d() {
        this.f29816k.mo5081g("window.inspectorInfo", this.f29815d.m10495m().toString());
    }
}
