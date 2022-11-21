package p168r4;

import android.content.Context;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.util.regex.Pattern;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.iz1 */
/* loaded from: classes2.dex */
public final class iz1 implements ic1, InterfaceC5812gt, d81, n71 {

    /* renamed from: a */
    public final Context f25647a;

    /* renamed from: b */
    public final vp2 f25648b;

    /* renamed from: d */
    public final bp2 f25649d;

    /* renamed from: k */
    public final no2 f25650k;

    /* renamed from: p */
    public final c12 f25651p;

    /* renamed from: q */
    public Boolean f25652q;

    /* renamed from: r */
    public final boolean f25653r = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30990c5)).booleanValue();

    /* renamed from: s */
    public final xt2 f25654s;

    /* renamed from: t */
    public final String f25655t;

    @Override // p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        if (this.f25650k.f28415f0) {
            m10447j(m10448d("click"));
        }
    }

    @Override // p168r4.n71
    /* renamed from: S */
    public final void mo5818S(C5996lt c5996lt) {
        C5996lt c5996lt2;
        if (!this.f25653r) {
            return;
        }
        int i = c5996lt.f27361a;
        String str = c5996lt.f27362b;
        if (c5996lt.f27363d.equals("com.google.android.gms.ads") && (c5996lt2 = c5996lt.f27364k) != null && !c5996lt2.f27363d.equals("com.google.android.gms.ads")) {
            C5996lt c5996lt3 = c5996lt.f27364k;
            i = c5996lt3.f27361a;
            str = c5996lt3.f27362b;
        }
        String m6040a = this.f25648b.m6040a(str);
        wt2 m10448d = m10448d("ifts");
        m10448d.m5588c("reason", "adapter");
        if (i >= 0) {
            m10448d.m5588c("arec", String.valueOf(i));
        }
        if (m6040a != null) {
            m10448d.m5588c("areec", m6040a);
        }
        this.f25654s.mo4985a(m10448d);
    }

    @Override // p168r4.n71
    /* renamed from: U */
    public final void mo5817U(ch1 ch1Var) {
        if (!this.f25653r) {
            return;
        }
        wt2 m10448d = m10448d("ifts");
        m10448d.m5588c("reason", "exception");
        if (!TextUtils.isEmpty(ch1Var.getMessage())) {
            m10448d.m5588c("msg", ch1Var.getMessage());
        }
        this.f25654s.mo4985a(m10448d);
    }

    /* renamed from: a */
    public final boolean m10449a() {
        if (this.f25652q == null) {
            synchronized (this) {
                if (this.f25652q == null) {
                    String str = (String) C5592av.m12935c().m8098c(C6225rz.f30951Y0);
                    C7601t.m939d();
                    String m26323c0 = C0497k2.m26323c0(this.f25647a);
                    boolean z = false;
                    if (str != null && m26323c0 != null) {
                        try {
                            z = Pattern.matches(str, m26323c0);
                        } catch (RuntimeException e) {
                            C7601t.m935h().m9056k(e, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.f25652q = Boolean.valueOf(z);
                }
            }
        }
        return this.f25652q.booleanValue();
    }

    @Override // p168r4.n71
    /* renamed from: e */
    public final void mo5813e() {
        if (!this.f25653r) {
            return;
        }
        xt2 xt2Var = this.f25654s;
        wt2 m10448d = m10448d("ifts");
        m10448d.m5588c("reason", "blocked");
        xt2Var.mo4985a(m10448d);
    }

    /* renamed from: j */
    public final void m10447j(wt2 wt2Var) {
        if (this.f25650k.f28415f0) {
            this.f25651p.m12657g(new e12(C7601t.m932k().mo24763a(), this.f25649d.f21154b.f20574b.f31426b, this.f25654s.mo4984b(wt2Var), 2));
            return;
        }
        this.f25654s.mo4985a(wt2Var);
    }

    public iz1(Context context, vp2 vp2Var, bp2 bp2Var, no2 no2Var, c12 c12Var, xt2 xt2Var, String str) {
        this.f25647a = context;
        this.f25648b = vp2Var;
        this.f25649d = bp2Var;
        this.f25650k = no2Var;
        this.f25651p = c12Var;
        this.f25654s = xt2Var;
        this.f25655t = str;
    }

    @Override // p168r4.ic1
    /* renamed from: b */
    public final void mo6029b() {
        if (!m10449a()) {
            return;
        }
        this.f25654s.mo4985a(m10448d("adapter_impression"));
    }

    @Override // p168r4.ic1
    /* renamed from: c */
    public final void mo6028c() {
        if (!m10449a()) {
            return;
        }
        this.f25654s.mo4985a(m10448d("adapter_shown"));
    }

    /* renamed from: d */
    public final wt2 m10448d(String str) {
        String str2;
        wt2 m5590a = wt2.m5590a(str);
        m5590a.m5584g(this.f25649d, null);
        m5590a.m5582i(this.f25650k);
        m5590a.m5588c("request_id", this.f25655t);
        if (!this.f25650k.f28433t.isEmpty()) {
            m5590a.m5588c("ancn", this.f25650k.f28433t.get(0));
        }
        if (this.f25650k.f28415f0) {
            C7601t.m939d();
            if (true != C0497k2.m26313i(this.f25647a)) {
                str2 = "offline";
            } else {
                str2 = "online";
            }
            m5590a.m5588c("device_connectivity", str2);
            m5590a.m5588c("event_timestamp", String.valueOf(C7601t.m932k().mo24763a()));
            m5590a.m5588c("offline_ad", Config.SITE_API_VERSION);
        }
        return m5590a;
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final void mo5385g() {
        if (!m10449a() && !this.f25650k.f28415f0) {
            return;
        }
        m10447j(m10448d("impression"));
    }
}
