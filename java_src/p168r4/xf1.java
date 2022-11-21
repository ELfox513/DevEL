package p168r4;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.xf1 */
/* loaded from: classes2.dex */
public final class xf1 extends i31 {

    /* renamed from: i */
    public final Context f33581i;

    /* renamed from: j */
    public final WeakReference<cs0> f33582j;

    /* renamed from: k */
    public final le1 f33583k;

    /* renamed from: l */
    public final dh1 f33584l;

    /* renamed from: m */
    public final d41 f33585m;

    /* renamed from: n */
    public final sx2 f33586n;

    /* renamed from: o */
    public final w71 f33587o;

    /* renamed from: p */
    public boolean f33588p;

    /* renamed from: h */
    public final boolean m5330h() {
        return this.f33585m.m12225a();
    }

    public final void finalize() {
        try {
            cs0 cs0Var = this.f33582j.get();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30963Z4)).booleanValue()) {
                if (!this.f33588p && cs0Var != null) {
                    qm0.f30194e.execute(wf1.m5738a(cs0Var));
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
    public final boolean m5331g(boolean z, Activity activity) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31106r0)).booleanValue()) {
            C7601t.m939d();
            if (C0497k2.m26312j(this.f33581i)) {
                cm0.m12437f("Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies");
                this.f33587o.mo5813e();
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31114s0)).booleanValue()) {
                    this.f33586n.m6954a(this.f24945a.f21154b.f20574b.f31426b);
                }
                return false;
            }
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30949X6)).booleanValue() && this.f33588p) {
            cm0.m12437f("The interstitial ad has been showed.");
            this.f33587o.mo5818S(dq2.m11989d(10, null, null));
        }
        if (!this.f33588p) {
            this.f33583k.zza();
            Activity activity2 = activity;
            if (activity == null) {
                activity2 = this.f33581i;
            }
            try {
                this.f33584l.mo4920a(z, activity2, this.f33587o);
                this.f33583k.m9672a();
                this.f33588p = true;
                return true;
            } catch (ch1 e) {
                this.f33587o.mo5817U(e);
            }
        }
        return false;
    }

    public xf1(h31 h31Var, Context context, cs0 cs0Var, le1 le1Var, dh1 dh1Var, d41 d41Var, sx2 sx2Var, w71 w71Var) {
        super(h31Var);
        this.f33588p = false;
        this.f33581i = context;
        this.f33582j = new WeakReference<>(cs0Var);
        this.f33583k = le1Var;
        this.f33584l = dh1Var;
        this.f33585m = d41Var;
        this.f33586n = sx2Var;
        this.f33587o = w71Var;
    }
}
