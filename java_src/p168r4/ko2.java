package p168r4;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.util.regex.Pattern;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.ko2 */
/* loaded from: classes2.dex */
public final class ko2 extends hh0 {

    /* renamed from: a */
    public final ao2 f26499a;

    /* renamed from: b */
    public final qn2 f26500b;

    /* renamed from: d */
    public final cp2 f26501d;

    /* renamed from: k */
    public uo1 f26502k;

    /* renamed from: p */
    public boolean f26503p = false;

    public ko2(ao2 ao2Var, qn2 qn2Var, cp2 cp2Var) {
        this.f26499a = ao2Var;
        this.f26500b = qn2Var;
        this.f26501d = cp2Var;
    }

    @Override // p168r4.ih0
    /* renamed from: N4 */
    public final synchronized void mo9988N4(boolean z) {
        C7297q.m1888e("setImmersiveMode must be called on the main UI thread.");
        this.f26503p = z;
    }

    /* renamed from: O */
    public final synchronized boolean m9987O() {
        boolean z;
        uo1 uo1Var = this.f26502k;
        if (uo1Var != null) {
            z = uo1Var.m6462j() ? false : true;
        }
        return z;
    }

    @Override // p168r4.ih0
    /* renamed from: P1 */
    public final synchronized void mo9986P1(mh0 mh0Var) {
        C7297q.m1888e("loadAd must be called on the main UI thread.");
        String str = mh0Var.f27725b;
        String str2 = (String) C5592av.m12935c().m8098c(C6225rz.f30834J3);
        if (str2 != null && str != null) {
            try {
                if (Pattern.matches(str2, str)) {
                    return;
                }
            } catch (RuntimeException e) {
                C7601t.m935h().m9056k(e, "NonagonUtil.isPatternMatched");
            }
        }
        if (m9987O()) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30850L3)).booleanValue()) {
                return;
            }
        }
        sn2 sn2Var = new sn2(null);
        this.f26502k = null;
        this.f26499a.m12981i(1);
        this.f26499a.mo6509b(mh0Var.f27724a, mh0Var.f27725b, sn2Var, new io2(this));
    }

    @Override // p168r4.ih0
    /* renamed from: a0 */
    public final synchronized void mo9984a0(InterfaceC3512a interfaceC3512a) {
        Context context;
        C7297q.m1888e("resume must be called on the main UI thread.");
        if (this.f26502k != null) {
            if (interfaceC3512a == null) {
                context = null;
            } else {
                context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
            }
            this.f26502k.m10733c().m10383Z0(context);
        }
    }

    @Override // p168r4.ih0
    /* renamed from: a6 */
    public final synchronized void mo9983a6(InterfaceC3512a interfaceC3512a) {
        C7297q.m1888e("showAd must be called on the main UI thread.");
        if (this.f26502k != null) {
            Activity activity = null;
            if (interfaceC3512a != null) {
                Object m18740t0 = BinderC3514b.m18740t0(interfaceC3512a);
                if (m18740t0 instanceof Activity) {
                    activity = (Activity) m18740t0;
                }
            }
            this.f26502k.m6465g(this.f26503p, activity);
        }
    }

    @Override // p168r4.ih0
    /* renamed from: b */
    public final synchronized void mo9982b() {
        mo9983a6(null);
    }

    @Override // p168r4.ih0
    /* renamed from: d */
    public final void mo9980d() {
        mo9972m0(null);
    }

    @Override // p168r4.ih0
    /* renamed from: f */
    public final void mo9978f() {
        mo9968s0(null);
    }

    @Override // p168r4.ih0
    /* renamed from: g */
    public final void mo9976g() {
        mo9984a0(null);
    }

    @Override // p168r4.ih0
    /* renamed from: h0 */
    public final synchronized void mo9974h0(String str) {
        C7297q.m1888e("setUserId must be called on the main UI thread.");
        this.f26501d.f21649a = str;
    }

    @Override // p168r4.ih0
    /* renamed from: k */
    public final synchronized String mo9973k() {
        uo1 uo1Var = this.f26502k;
        if (uo1Var == null || uo1Var.m10732d() == null) {
            return null;
        }
        return this.f26502k.m10732d().mo10772c();
    }

    @Override // p168r4.ih0
    /* renamed from: m0 */
    public final synchronized void mo9972m0(InterfaceC3512a interfaceC3512a) {
        Context context;
        C7297q.m1888e("pause must be called on the main UI thread.");
        if (this.f26502k != null) {
            if (interfaceC3512a == null) {
                context = null;
            } else {
                context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
            }
            this.f26502k.m10733c().m10384T0(context);
        }
    }

    @Override // p168r4.ih0
    /* renamed from: n */
    public final synchronized InterfaceC5853hx mo9971n() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30981b5)).booleanValue()) {
            return null;
        }
        uo1 uo1Var = this.f26502k;
        if (uo1Var == null) {
            return null;
        }
        return uo1Var.m10732d();
    }

    @Override // p168r4.ih0
    /* renamed from: r */
    public final boolean mo9969r() {
        uo1 uo1Var = this.f26502k;
        return uo1Var != null && uo1Var.m6461k();
    }

    @Override // p168r4.ih0
    /* renamed from: s0 */
    public final synchronized void mo9968s0(InterfaceC3512a interfaceC3512a) {
        C7297q.m1888e("destroy must be called on the main UI thread.");
        Context context = null;
        this.f26500b.m7778L(null);
        if (this.f26502k != null) {
            if (interfaceC3512a != null) {
                context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
            }
            this.f26502k.m10733c().m10382e1(context);
        }
    }

    @Override // p168r4.ih0
    /* renamed from: v6 */
    public final synchronized void mo9967v6(String str) {
        C7297q.m1888e("#008 Must be called on the main UI thread.: setCustomData");
        this.f26501d.f21650b = str;
    }

    @Override // p168r4.ih0
    /* renamed from: A5 */
    public final void mo9989A5(lh0 lh0Var) {
        C7297q.m1888e("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f26500b.m7776Q(lh0Var);
    }

    @Override // p168r4.ih0
    /* renamed from: R4 */
    public final void mo9985R4(gh0 gh0Var) {
        C7297q.m1888e("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f26500b.m7774U(gh0Var);
    }

    @Override // p168r4.ih0
    /* renamed from: c */
    public final boolean mo9981c() {
        C7297q.m1888e("isLoaded must be called on the main UI thread.");
        return m9987O();
    }

    @Override // p168r4.ih0
    /* renamed from: d1 */
    public final void mo9979d1(InterfaceC6517zv interfaceC6517zv) {
        C7297q.m1888e("setAdMetadataListener can only be called from the UI thread.");
        if (interfaceC6517zv == null) {
            this.f26500b.m7778L(null);
        } else {
            this.f26500b.m7778L(new jo2(this, interfaceC6517zv));
        }
    }

    @Override // p168r4.ih0
    /* renamed from: q */
    public final Bundle mo9970q() {
        C7297q.m1888e("getAdMetadata can only be called from the UI thread.");
        uo1 uo1Var = this.f26502k;
        if (uo1Var != null) {
            return uo1Var.m6460l();
        }
        return new Bundle();
    }
}
