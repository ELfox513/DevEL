package p168r4;

import android.os.RemoteException;
import java.util.Collections;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.oy */
/* loaded from: classes2.dex */
public final class BinderC6113oy extends AbstractBinderC6036mw {

    /* renamed from: a */
    public n70 f29268a;

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: B0 */
    public final void mo8571B0(String str) {
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: H0 */
    public final void mo8570H0(boolean z) {
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: N5 */
    public final void mo8569N5(InterfaceC6481yw interfaceC6481yw) {
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: O5 */
    public final void mo8568O5(InterfaceC3512a interfaceC3512a, String str) {
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: Q */
    public final void mo8567Q(String str) {
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: S2 */
    public final void mo8566S2(C6261sy c6261sy) {
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: Y0 */
    public final void mo8565Y0(n70 n70Var) {
        this.f29268a = n70Var;
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: i */
    public final float mo8562i() {
        return 1.0f;
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: j2 */
    public final void mo8561j2(float f) {
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: k */
    public final boolean mo8560k() {
        return false;
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: l */
    public final String mo8559l() {
        return "";
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: m */
    public final List<g70> mo8558m() {
        return Collections.emptyList();
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: p5 */
    public final void mo8557p5(String str, InterfaceC3512a interfaceC3512a) {
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: r */
    public final void mo8556r() {
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: s1 */
    public final void mo8555s1(fb0 fb0Var) {
    }

    /* renamed from: a */
    public final /* synthetic */ void m8564a() {
        n70 n70Var = this.f29268a;
        if (n70Var != null) {
            try {
                n70Var.mo4540c5(Collections.emptyList());
            } catch (RemoteException e) {
                cm0.m12436g("Could not notify onComplete event.", e);
            }
        }
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: c */
    public final void mo8563c() {
        cm0.m12440c("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        vl0.f32748b.post(new Runnable(this) { // from class: r4.ny

            /* renamed from: a */
            public final BinderC6113oy f28712a;

            {
                this.f28712a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28712a.m8564a();
            }
        });
    }
}
