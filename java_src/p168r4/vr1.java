package p168r4;

import android.content.Context;
import android.text.TextUtils;
import com.prineside.tdi2.Config;
import java.util.regex.Pattern;
import p016b3.C0497k2;
import p077h3.C4011p;
import p235z2.C7601t;
/* renamed from: r4.vr1 */
/* loaded from: classes2.dex */
public final class vr1 implements ic1, InterfaceC5812gt, d81, n71 {

    /* renamed from: a */
    public final Context f32785a;

    /* renamed from: b */
    public final vp2 f32786b;

    /* renamed from: d */
    public final ls1 f32787d;

    /* renamed from: k */
    public final bp2 f32788k;

    /* renamed from: p */
    public final no2 f32789p;

    /* renamed from: q */
    public final c12 f32790q;

    /* renamed from: r */
    public Boolean f32791r;

    /* renamed from: s */
    public final boolean f32792s = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30990c5)).booleanValue();

    @Override // p168r4.InterfaceC5812gt
    /* renamed from: F0 */
    public final void mo3609F0() {
        if (this.f32789p.f28415f0) {
            m6026j(m6027d("click"));
        }
    }

    @Override // p168r4.n71
    /* renamed from: S */
    public final void mo5818S(C5996lt c5996lt) {
        C5996lt c5996lt2;
        if (!this.f32792s) {
            return;
        }
        ks1 m6027d = m6027d("ifts");
        m6027d.m9954d("reason", "adapter");
        int i = c5996lt.f27361a;
        String str = c5996lt.f27362b;
        if (c5996lt.f27363d.equals("com.google.android.gms.ads") && (c5996lt2 = c5996lt.f27364k) != null && !c5996lt2.f27363d.equals("com.google.android.gms.ads")) {
            C5996lt c5996lt3 = c5996lt.f27364k;
            i = c5996lt3.f27361a;
            str = c5996lt3.f27362b;
        }
        if (i >= 0) {
            m6027d.m9954d("arec", String.valueOf(i));
        }
        String m6040a = this.f32786b.m6040a(str);
        if (m6040a != null) {
            m6027d.m9954d("areec", m6040a);
        }
        m6027d.m9953e();
    }

    @Override // p168r4.n71
    /* renamed from: U */
    public final void mo5817U(ch1 ch1Var) {
        if (!this.f32792s) {
            return;
        }
        ks1 m6027d = m6027d("ifts");
        m6027d.m9954d("reason", "exception");
        if (!TextUtils.isEmpty(ch1Var.getMessage())) {
            m6027d.m9954d("msg", ch1Var.getMessage());
        }
        m6027d.m9953e();
    }

    /* renamed from: a */
    public final boolean m6030a() {
        if (this.f32791r == null) {
            synchronized (this) {
                if (this.f32791r == null) {
                    String str = (String) C5592av.m12935c().m8098c(C6225rz.f30951Y0);
                    C7601t.m939d();
                    String m26323c0 = C0497k2.m26323c0(this.f32785a);
                    boolean z = false;
                    if (str != null && m26323c0 != null) {
                        try {
                            z = Pattern.matches(str, m26323c0);
                        } catch (RuntimeException e) {
                            C7601t.m935h().m9056k(e, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.f32791r = Boolean.valueOf(z);
                }
            }
        }
        return this.f32791r.booleanValue();
    }

    /* renamed from: d */
    public final ks1 m6027d(String str) {
        String str2;
        ks1 m9572d = this.f32787d.m9572d();
        m9572d.m9956b(this.f32788k.f21154b.f20574b);
        m9572d.m9955c(this.f32789p);
        m9572d.m9954d("action", str);
        if (!this.f32789p.f28433t.isEmpty()) {
            m9572d.m9954d("ancn", this.f32789p.f28433t.get(0));
        }
        if (this.f32789p.f28415f0) {
            C7601t.m939d();
            if (true != C0497k2.m26313i(this.f32785a)) {
                str2 = "offline";
            } else {
                str2 = "online";
            }
            m9572d.m9954d("device_connectivity", str2);
            m9572d.m9954d("event_timestamp", String.valueOf(C7601t.m932k().mo24763a()));
            m9572d.m9954d("offline_ad", Config.SITE_API_VERSION);
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31063l5)).booleanValue()) {
            boolean m17554a = C4011p.m17554a(this.f32788k);
            m9572d.m9954d("scar", String.valueOf(m17554a));
            if (m17554a) {
                String m17553b = C4011p.m17553b(this.f32788k);
                if (!TextUtils.isEmpty(m17553b)) {
                    m9572d.m9954d("ragent", m17553b);
                }
                String m17552c = C4011p.m17552c(this.f32788k);
                if (!TextUtils.isEmpty(m17552c)) {
                    m9572d.m9954d("rtype", m17552c);
                }
            }
        }
        return m9572d;
    }

    @Override // p168r4.n71
    /* renamed from: e */
    public final void mo5813e() {
        if (!this.f32792s) {
            return;
        }
        ks1 m6027d = m6027d("ifts");
        m6027d.m9954d("reason", "blocked");
        m6027d.m9953e();
    }

    /* renamed from: j */
    public final void m6026j(ks1 ks1Var) {
        if (this.f32789p.f28415f0) {
            this.f32790q.m12657g(new e12(C7601t.m932k().mo24763a(), this.f32788k.f21154b.f20574b.f31426b, ks1Var.m9952f(), 2));
            return;
        }
        ks1Var.m9953e();
    }

    public vr1(Context context, vp2 vp2Var, ls1 ls1Var, bp2 bp2Var, no2 no2Var, c12 c12Var) {
        this.f32785a = context;
        this.f32786b = vp2Var;
        this.f32787d = ls1Var;
        this.f32788k = bp2Var;
        this.f32789p = no2Var;
        this.f32790q = c12Var;
    }

    @Override // p168r4.ic1
    /* renamed from: b */
    public final void mo6029b() {
        if (!m6030a()) {
            return;
        }
        m6027d("adapter_impression").m9953e();
    }

    @Override // p168r4.ic1
    /* renamed from: c */
    public final void mo6028c() {
        if (!m6030a()) {
            return;
        }
        m6027d("adapter_shown").m9953e();
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final void mo5385g() {
        if (!m6030a() && !this.f32789p.f28415f0) {
            return;
        }
        m6026j(m6027d("impression"));
    }
}
