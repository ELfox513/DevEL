package p168r4;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.uo1 */
/* loaded from: classes2.dex */
public final class uo1 extends i31 {

    /* renamed from: i */
    public final Context f32332i;

    /* renamed from: j */
    public final WeakReference<cs0> f32333j;

    /* renamed from: k */
    public final dh1 f32334k;

    /* renamed from: l */
    public final le1 f32335l;

    /* renamed from: m */
    public final w71 f32336m;

    /* renamed from: n */
    public final e91 f32337n;

    /* renamed from: o */
    public final d41 f32338o;

    /* renamed from: p */
    public final vh0 f32339p;

    /* renamed from: q */
    public final sx2 f32340q;

    /* renamed from: r */
    public boolean f32341r;

    /* renamed from: h */
    public final boolean m6464h() {
        return this.f32341r;
    }

    /* renamed from: i */
    public final vh0 m6463i() {
        return this.f32339p;
    }

    /* renamed from: j */
    public final boolean m6462j() {
        return this.f32338o.m12225a();
    }

    /* renamed from: l */
    public final Bundle m6460l() {
        return this.f32337n.m11839T0();
    }

    public final void finalize() {
        try {
            cs0 cs0Var = this.f32333j.get();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30963Z4)).booleanValue()) {
                if (!this.f32341r && cs0Var != null) {
                    qm0.f30194e.execute(to1.m6768a(cs0Var));
                }
            } else if (cs0Var != null) {
                cs0Var.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.content.Context] */
    /* renamed from: g */
    public final boolean m6465g(boolean z, Activity activity) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31106r0)).booleanValue()) {
            C7601t.m939d();
            if (C0497k2.m26312j(this.f32332i)) {
                cm0.m12437f("Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f32336m.mo5813e();
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31114s0)).booleanValue()) {
                    this.f32340q.m6954a(this.f24945a.f21154b.f20574b.f31426b);
                }
                return false;
            }
        }
        if (this.f32341r) {
            cm0.m12437f("The rewarded ad have been showed.");
            this.f32336m.mo5818S(dq2.m11989d(10, null, null));
            return false;
        }
        this.f32341r = true;
        this.f32335l.zza();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.f32332i;
        }
        try {
            this.f32334k.mo4920a(z, activity2, this.f32336m);
            this.f32335l.m9672a();
            return true;
        } catch (ch1 e) {
            this.f32336m.mo5817U(e);
            return false;
        }
    }

    /* renamed from: k */
    public final boolean m6461k() {
        cs0 cs0Var = this.f32333j.get();
        if (cs0Var != null && !cs0Var.mo5127G0()) {
            return true;
        }
        return false;
    }

    public uo1(h31 h31Var, Context context, cs0 cs0Var, dh1 dh1Var, le1 le1Var, w71 w71Var, e91 e91Var, d41 d41Var, no2 no2Var, sx2 sx2Var) {
        super(h31Var);
        String str;
        int i;
        this.f32341r = false;
        this.f32332i = context;
        this.f32334k = dh1Var;
        this.f32333j = new WeakReference<>(cs0Var);
        this.f32335l = le1Var;
        this.f32336m = w71Var;
        this.f32337n = e91Var;
        this.f32338o = d41Var;
        this.f32340q = sx2Var;
        rh0 rh0Var = no2Var.f28426m;
        if (rh0Var != null) {
            str = rh0Var.f30573a;
        } else {
            str = "";
        }
        if (rh0Var != null) {
            i = rh0Var.f30574b;
        } else {
            i = 1;
        }
        this.f32339p = new pi0(str, i);
    }
}
