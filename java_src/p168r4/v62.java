package p168r4;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.Iterator;
import p168r4.u81;
/* renamed from: r4.v62 */
/* loaded from: classes2.dex */
public final class v62<AdT, AdapterT, ListenerT extends u81> implements q12<AdT> {

    /* renamed from: a */
    public final s12<AdapterT, ListenerT> f32614a;

    /* renamed from: b */
    public final y12<AdT, AdapterT, ListenerT> f32615b;

    /* renamed from: c */
    public final mt2 f32616c;

    /* renamed from: d */
    public final i83 f32617d;

    public v62(mt2 mt2Var, i83 i83Var, s12<AdapterT, ListenerT> s12Var, y12<AdT, AdapterT, ListenerT> y12Var) {
        this.f32616c = mt2Var;
        this.f32617d = i83Var;
        this.f32615b = y12Var;
        this.f32614a = s12Var;
    }

    /* renamed from: e */
    public static final String m6224e(String str, int i) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 31);
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        return !no2Var.f28433t.isEmpty();
    }

    /* renamed from: c */
    public final /* synthetic */ Object m6226c(bp2 bp2Var, no2 no2Var, t12 t12Var, Void r4) {
        return this.f32615b.mo4458a(bp2Var, no2Var, t12Var);
    }

    /* renamed from: d */
    public final /* synthetic */ void m6225d(bp2 bp2Var, no2 no2Var, t12 t12Var) {
        this.f32615b.mo4457b(bp2Var, no2Var, t12Var);
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<AdT> mo4840b(final bp2 bp2Var, final no2 no2Var) {
        final t12<AdapterT, ListenerT> t12Var;
        Iterator<String> it = no2Var.f28433t.iterator();
        while (true) {
            if (it.hasNext()) {
                try {
                    t12Var = this.f32614a.mo5497a(it.next(), no2Var.f28435v);
                    break;
                } catch (mp2 unused) {
                }
            } else {
                t12Var = null;
                break;
            }
        }
        if (t12Var == null) {
            return y73.m4812c(new v42("Unable to instantiate mediation adapter class."));
        }
        vm0 vm0Var = new vm0();
        t12Var.f31618c.mo6601p6(new u62(this, t12Var, vm0Var));
        if (no2Var.f28386I) {
            Bundle bundle = bp2Var.f21153a.f34161a.f24779d.f32006x;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        mt2 mt2Var = this.f32616c;
        return xs2.m5025d(new qs2(this, bp2Var, no2Var, t12Var) { // from class: r4.r62

            /* renamed from: a */
            public final v62 f30471a;

            /* renamed from: b */
            public final bp2 f30472b;

            /* renamed from: c */
            public final no2 f30473c;

            /* renamed from: d */
            public final t12 f30474d;

            {
                this.f30471a = this;
                this.f30472b = bp2Var;
                this.f30473c = no2Var;
                this.f30474d = t12Var;
            }

            @Override // p168r4.qs2
            public final void zza() {
                this.f30471a.m6225d(this.f30472b, this.f30473c, this.f30474d);
            }
        }, this.f32617d, gt2.ADAPTER_LOAD_AD_SYN, mt2Var).m11947j(gt2.ADAPTER_LOAD_AD_ACK).m11952e(vm0Var).m11947j(gt2.ADAPTER_WRAP_ADAPTER).m11955b(new ps2(this, bp2Var, no2Var, t12Var) { // from class: r4.t62

            /* renamed from: a */
            public final v62 f31717a;

            /* renamed from: b */
            public final bp2 f31718b;

            /* renamed from: c */
            public final no2 f31719c;

            /* renamed from: d */
            public final t12 f31720d;

            {
                this.f31717a = this;
                this.f31718b = bp2Var;
                this.f31719c = no2Var;
                this.f31720d = t12Var;
            }

            @Override // p168r4.ps2
            /* renamed from: a */
            public final Object mo4065a(Object obj) {
                return this.f31717a.m6226c(this.f31718b, this.f31719c, this.f31720d, (Void) obj);
            }
        }).m11948i();
    }
}
