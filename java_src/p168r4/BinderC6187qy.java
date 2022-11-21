package p168r4;

import android.os.Bundle;
import android.os.RemoteException;
import p060f4.InterfaceC3512a;
/* renamed from: r4.qy */
/* loaded from: classes2.dex */
public final class BinderC6187qy extends xh0 {
    @Override // p168r4.yh0
    /* renamed from: A3 */
    public final void mo4716A3(InterfaceC5631bx interfaceC5631bx) {
    }

    @Override // p168r4.yh0
    /* renamed from: D5 */
    public final void mo4715D5(bi0 bi0Var) {
    }

    @Override // p168r4.yh0
    /* renamed from: F3 */
    public final void mo4714F3(ni0 ni0Var) {
    }

    @Override // p168r4.yh0
    /* renamed from: L2 */
    public final void mo4713L2(C6293tt c6293tt, fi0 fi0Var) {
        m7641g7(fi0Var);
    }

    @Override // p168r4.yh0
    /* renamed from: M0 */
    public final void mo4712M0(boolean z) {
    }

    @Override // p168r4.yh0
    /* renamed from: M5 */
    public final void mo4711M5(InterfaceC5742ex interfaceC5742ex) {
    }

    @Override // p168r4.yh0
    /* renamed from: b0 */
    public final void mo4710b0(InterfaceC3512a interfaceC3512a) {
    }

    @Override // p168r4.yh0
    /* renamed from: g */
    public final Bundle mo4709g() {
        return new Bundle();
    }

    @Override // p168r4.yh0
    /* renamed from: h */
    public final String mo4708h() {
        return "";
    }

    @Override // p168r4.yh0
    /* renamed from: i1 */
    public final void mo4707i1(InterfaceC3512a interfaceC3512a, boolean z) {
    }

    @Override // p168r4.yh0
    /* renamed from: j */
    public final boolean mo4706j() {
        return false;
    }

    @Override // p168r4.yh0
    /* renamed from: k */
    public final vh0 mo4705k() {
        return null;
    }

    @Override // p168r4.yh0
    /* renamed from: l */
    public final InterfaceC5853hx mo4704l() {
        return null;
    }

    @Override // p168r4.yh0
    /* renamed from: r3 */
    public final void mo4703r3(C6293tt c6293tt, fi0 fi0Var) {
        m7641g7(fi0Var);
    }

    @Override // p168r4.yh0
    /* renamed from: t2 */
    public final void mo4702t2(hi0 hi0Var) {
    }

    /* renamed from: g7 */
    public static void m7641g7(final fi0 fi0Var) {
        cm0.m12440c("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        vl0.f32748b.post(new Runnable(fi0Var) { // from class: r4.py

            /* renamed from: a */
            public final fi0 f29844a;

            {
                this.f29844a = fi0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                fi0 fi0Var2 = this.f29844a;
                if (fi0Var2 != null) {
                    try {
                        fi0Var2.mo4084C(1);
                    } catch (RemoteException e) {
                        cm0.m12434i("#007 Could not call remote method.", e);
                    }
                }
            }
        });
    }
}
