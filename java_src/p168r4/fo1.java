package p168r4;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
import p235z2.C7582a;
import p235z2.C7583b;
/* renamed from: r4.fo1 */
/* loaded from: classes2.dex */
public final class fo1 {

    /* renamed from: b */
    public final C7582a f23584b;

    /* renamed from: c */
    public final os0 f23585c;

    /* renamed from: d */
    public final Context f23586d;

    /* renamed from: e */
    public final ls1 f23587e;

    /* renamed from: f */
    public final xt2 f23588f;

    /* renamed from: g */
    public final Executor f23589g;

    /* renamed from: h */
    public final C6300u f23590h;

    /* renamed from: i */
    public final im0 f23591i;

    /* renamed from: k */
    public final c12 f23593k;

    /* renamed from: l */
    public final pu2 f23594l;

    /* renamed from: m */
    public h83<cs0> f23595m;

    /* renamed from: a */
    public final zn1 f23583a = new zn1(null);

    /* renamed from: j */
    public final j60 f23592j = new j60();

    public fo1(do1 do1Var) {
        this.f23586d = do1.m12066c(do1Var);
        this.f23589g = do1.m12062g(do1Var);
        this.f23590h = do1.m12061h(do1Var);
        this.f23591i = do1.m12060i(do1Var);
        this.f23584b = do1.m12068a(do1Var);
        this.f23585c = do1.m12067b(do1Var);
        this.f23593k = do1.m12063f(do1Var);
        this.f23594l = do1.m12059j(do1Var);
        this.f23587e = do1.m12065d(do1Var);
        this.f23588f = do1.m12064e(do1Var);
    }

    /* renamed from: b */
    public final synchronized void m11455b() {
        h83<cs0> m4805j = y73.m4805j(os0.m8707b(this.f23586d, this.f23591i, (String) C5592av.m12935c().m8098c(C6225rz.f31036i2), this.f23590h, this.f23584b), new p03(this) { // from class: r4.rn1

            /* renamed from: a */
            public final fo1 f30633a;

            {
                this.f30633a = this;
            }

            @Override // p168r4.p03
            public final Object apply(Object obj) {
                cs0 cs0Var = (cs0) obj;
                this.f30633a.m11446k(cs0Var);
                return cs0Var;
            }
        }, this.f23589g);
        this.f23595m = m4805j;
        tm0.m6790a(m4805j, "NativeJavascriptExecutor.initializeEngine");
    }

    /* renamed from: c */
    public final synchronized void m11454c() {
        h83<cs0> h83Var = this.f23595m;
        if (h83Var == null) {
            return;
        }
        y73.m4799p(h83Var, new tn1(this), this.f23589g);
        this.f23595m = null;
    }

    /* renamed from: d */
    public final synchronized h83<JSONObject> m11453d(final String str, final JSONObject jSONObject) {
        h83<cs0> h83Var = this.f23595m;
        if (h83Var == null) {
            return y73.m4814a(null);
        }
        return y73.m4806i(h83Var, new e73(this, str, jSONObject) { // from class: r4.sn1

            /* renamed from: a */
            public final fo1 f31418a;

            /* renamed from: b */
            public final String f31419b;

            /* renamed from: c */
            public final JSONObject f31420c;

            {
                this.f31418a = this;
                this.f31419b = str;
                this.f31420c = jSONObject;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f31418a.m11447j(this.f31419b, this.f31420c, (cs0) obj);
            }
        }, this.f23589g);
    }

    /* renamed from: e */
    public final synchronized void m11452e(String str, u50<Object> u50Var) {
        h83<cs0> h83Var = this.f23595m;
        if (h83Var == null) {
            return;
        }
        y73.m4799p(h83Var, new un1(this, str, u50Var), this.f23589g);
    }

    /* renamed from: f */
    public final synchronized void m11451f(String str, u50<Object> u50Var) {
        h83<cs0> h83Var = this.f23595m;
        if (h83Var == null) {
            return;
        }
        y73.m4799p(h83Var, new vn1(this, str, u50Var), this.f23589g);
    }

    /* renamed from: g */
    public final synchronized void m11450g(String str, Map<String, ?> map) {
        h83<cs0> h83Var = this.f23595m;
        if (h83Var == null) {
            return;
        }
        y73.m4799p(h83Var, new wn1(this, "sendMessageToNativeJs", map), this.f23589g);
    }

    /* renamed from: h */
    public final synchronized void m11449h(no2 no2Var, so2 so2Var) {
        h83<cs0> h83Var = this.f23595m;
        if (h83Var == null) {
            return;
        }
        y73.m4799p(h83Var, new yn1(this, no2Var, so2Var), this.f23589g);
    }

    /* renamed from: i */
    public final <T> void m11448i(WeakReference<T> weakReference, String str, u50<T> u50Var) {
        m11452e(str, new eo1(this, weakReference, str, u50Var, null));
    }

    /* renamed from: j */
    public final /* synthetic */ h83 m11447j(String str, JSONObject jSONObject, cs0 cs0Var) {
        return this.f23592j.m10396c(cs0Var, str, jSONObject);
    }

    /* renamed from: k */
    public final /* synthetic */ cs0 m11446k(cs0 cs0Var) {
        cs0Var.mo5080g0("/result", this.f23592j);
        st0 mo5057o0 = cs0Var.mo5057o0();
        zn1 zn1Var = this.f23583a;
        mo5057o0.mo7008d0(null, zn1Var, zn1Var, zn1Var, zn1Var, false, null, new C7583b(this.f23586d, null, null), null, null, this.f23593k, this.f23594l, this.f23587e, this.f23588f, null, null);
        return cs0Var;
    }
}
