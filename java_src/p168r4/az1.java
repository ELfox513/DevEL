package p168r4;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.az1 */
/* loaded from: classes2.dex */
public final class az1 extends fg0 {

    /* renamed from: a */
    public final Context f20773a;

    /* renamed from: b */
    public final Executor f20774b;

    /* renamed from: d */
    public final zg0 f20775d;

    /* renamed from: k */
    public final ux0 f20776k;

    /* renamed from: p */
    public final ArrayDeque<xy1> f20777p;

    /* renamed from: q */
    public final ah0 f20778q;

    /* renamed from: r */
    public final fz1 f20779r;

    /* renamed from: n7 */
    public final synchronized void m12904n7(xy1 xy1Var) {
        m12901q();
        this.f20777p.addLast(xy1Var);
    }

    /* renamed from: o7 */
    public final synchronized xy1 m12903o7(String str) {
        Iterator<xy1> it = this.f20777p.iterator();
        while (it.hasNext()) {
            xy1 next = it.next();
            if (next.f33810c.equals(str)) {
                it.remove();
                return next;
            }
        }
        return null;
    }

    /* renamed from: p7 */
    public final synchronized xy1 m12902p7(String str) {
        Iterator<xy1> it = this.f20777p.iterator();
        while (it.hasNext()) {
            xy1 next = it.next();
            if (next.f33811d.equals(str)) {
                it.remove();
                return next;
            }
        }
        return null;
    }

    /* renamed from: q */
    public final synchronized void m12901q() {
        int intValue = l10.f27015c.m6673e().intValue();
        while (this.f20777p.size() >= intValue) {
            this.f20777p.removeFirst();
        }
    }

    /* renamed from: k7 */
    public static h83<JSONObject> m12907k7(og0 og0Var, mt2 mt2Var, final xg2 xg2Var) {
        e73 e73Var = new e73(xg2Var) { // from class: r4.oy1

            /* renamed from: a */
            public final xg2 f29270a;

            {
                this.f29270a = xg2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f29270a.mo5317a().m10662a(C7601t.m939d().m26336S((Bundle) obj));
            }
        };
        return mt2Var.m11682e(gt2.GMS_SIGNALS, y73.m4814a(og0Var.f28978a)).m11954c(e73Var).m11955b(py1.f29846a).m11948i();
    }

    /* renamed from: l7 */
    public static h83<rg0> m12906l7(h83<JSONObject> h83Var, mt2 mt2Var, ea0 ea0Var) {
        return mt2Var.m11682e(gt2.BUILD_URL, h83Var).m11954c(ea0Var.m11838a("AFMA_getAdDictionary", ba0.f20928b, qy1.f30360a)).m11948i();
    }

    /* renamed from: g7 */
    public final h83<InputStream> m12912g7(final og0 og0Var, int i) {
        if (!l10.f27013a.m6673e().booleanValue()) {
            return y73.m4812c(new Exception("Split request is disabled."));
        }
        br2 br2Var = og0Var.f28986t;
        if (br2Var == null) {
            return y73.m4812c(new Exception("Pool configuration missing from request."));
        }
        if (br2Var.f21182p != 0 && br2Var.f21183q != 0) {
            ea0 m6599a = C7601t.m926q().m6599a(this.f20773a, im0.m10595X0());
            xg2 mo6295a = this.f20776k.mo6295a(og0Var, i);
            mt2 mo5315c = mo6295a.mo5315c();
            final h83<JSONObject> m12907k7 = m12907k7(og0Var, mo5315c, mo6295a);
            final h83<rg0> m12906l7 = m12906l7(m12907k7, mo5315c, m6599a);
            return mo5315c.m11681f(gt2.GET_URL_AND_CACHE_KEY, m12907k7, m12906l7).m6383a(new Callable(this, m12906l7, m12907k7, og0Var) { // from class: r4.sy1

                /* renamed from: a */
                public final az1 f31582a;

                /* renamed from: b */
                public final h83 f31583b;

                /* renamed from: c */
                public final h83 f31584c;

                /* renamed from: d */
                public final og0 f31585d;

                {
                    this.f31582a = this;
                    this.f31583b = m12906l7;
                    this.f31584c = m12907k7;
                    this.f31585d = og0Var;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f31582a.m12908j7(this.f31583b, this.f31584c, this.f31585d);
                }
            }).m11948i();
        }
        return y73.m4812c(new Exception("Caching is disabled."));
    }

    /* renamed from: h7 */
    public final h83<InputStream> m12911h7(String str) {
        xy1 m12902p7;
        String str2;
        if (!l10.f27013a.m6673e().booleanValue()) {
            return y73.m4812c(new Exception("Split request is disabled."));
        }
        vy1 vy1Var = new vy1(this);
        if (l10.f27016d.m6673e().booleanValue()) {
            m12902p7 = m12903o7(str);
        } else {
            m12902p7 = m12902p7(str);
        }
        if (m12902p7 == null) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = "URL to be removed not found for cache key: ".concat(valueOf);
            } else {
                str2 = new String("URL to be removed not found for cache key: ");
            }
            return y73.m4812c(new Exception(str2));
        }
        return y73.m4814a(vy1Var);
    }

    /* renamed from: i */
    public final /* synthetic */ void m12910i() {
        tm0.m6790a(this.f20775d.mo4258a(), "persistFlags");
    }

    /* renamed from: m7 */
    public final void m12905m7(h83<InputStream> h83Var, kg0 kg0Var) {
        y73.m4799p(y73.m4806i(h83Var, new e73(this) { // from class: r4.uy1

            /* renamed from: a */
            public final az1 f32495a;

            {
                this.f32495a = this;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return y73.m4814a(cq2.m12375a((InputStream) obj));
            }
        }, qm0.f30190a), new wy1(this, kg0Var), qm0.f30195f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public az1(Context context, Context context2, Executor executor, ah0 ah0Var, ux0 ux0Var, zg0 zg0Var, ArrayDeque<xy1> arrayDeque, fz1 fz1Var) {
        C6225rz.m7278a(context);
        this.f20773a = context;
        this.f20774b = context2;
        this.f20778q = executor;
        this.f20775d = ux0Var;
        this.f20776k = ah0Var;
        this.f20777p = zg0Var;
        this.f20779r = arrayDeque;
    }

    @Override // p168r4.gg0
    /* renamed from: c3 */
    public final void mo11169c3(String str, kg0 kg0Var) {
        m12905m7(m12911h7(str), kg0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007f  */
    /* renamed from: f7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p168r4.h83<java.io.InputStream> m12913f7(p168r4.og0 r12, int r13) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.az1.m12913f7(r4.og0, int):r4.h83");
    }

    /* renamed from: i7 */
    public final h83<InputStream> m12909i7(og0 og0Var, int i) {
        ea0 m6599a = C7601t.m926q().m6599a(this.f20773a, im0.m10595X0());
        if (!q10.f29881a.m6673e().booleanValue()) {
            return y73.m4812c(new Exception("Signal collection disabled."));
        }
        xg2 mo6295a = this.f20776k.mo6295a(og0Var, i);
        final ig2<JSONObject> mo5316b = mo6295a.mo5316b();
        return mo6295a.mo5315c().m11682e(gt2.GET_SIGNALS, y73.m4814a(og0Var.f28978a)).m11954c(new e73(mo5316b) { // from class: r4.ty1

            /* renamed from: a */
            public final ig2 f32083a;

            {
                this.f32083a = mo5316b;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f32083a.m10662a(C7601t.m939d().m26336S((Bundle) obj));
            }
        }).m11947j(gt2.JS_SIGNALS).m11954c(m6599a.m11838a("google.afma.request.getSignals", ba0.f20928b, ba0.f20929c)).m11948i();
    }

    /* renamed from: j7 */
    public final /* synthetic */ InputStream m12908j7(h83 h83Var, h83 h83Var2, og0 og0Var) {
        String m7504i = ((rg0) h83Var.get()).m7504i();
        String str = og0Var.f28985s;
        m12904n7(new xy1((rg0) h83Var.get(), (JSONObject) h83Var2.get(), str, m7504i));
        return new ByteArrayInputStream(m7504i.getBytes(n03.f28056c));
    }

    @Override // p168r4.gg0
    /* renamed from: k4 */
    public final void mo11168k4(og0 og0Var, kg0 kg0Var) {
        m12905m7(m12912g7(og0Var, Binder.getCallingUid()), kg0Var);
    }

    @Override // p168r4.gg0
    /* renamed from: t5 */
    public final void mo11167t5(og0 og0Var, kg0 kg0Var) {
        h83<InputStream> m12913f7 = m12913f7(og0Var, Binder.getCallingUid());
        m12905m7(m12913f7, kg0Var);
        m12913f7.mo6087c(new Runnable(this) { // from class: r4.ry1

            /* renamed from: a */
            public final az1 f30754a;

            {
                this.f30754a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f30754a.m12910i();
            }
        }, this.f20774b);
    }

    @Override // p168r4.gg0
    /* renamed from: w6 */
    public final void mo11166w6(og0 og0Var, kg0 kg0Var) {
        m12905m7(m12909i7(og0Var, Binder.getCallingUid()), kg0Var);
    }
}
