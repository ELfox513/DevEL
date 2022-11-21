package p168r4;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: r4.sw2 */
/* loaded from: classes2.dex */
public final class sw2 implements vv2 {

    /* renamed from: g */
    public static final sw2 f31543g = new sw2();

    /* renamed from: h */
    public static final Handler f31544h = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    public static Handler f31545i = null;

    /* renamed from: j */
    public static final Runnable f31546j = new ow2();

    /* renamed from: k */
    public static final Runnable f31547k = new pw2();

    /* renamed from: b */
    public int f31549b;

    /* renamed from: f */
    public long f31553f;

    /* renamed from: a */
    public final List<rw2> f31548a = new ArrayList();

    /* renamed from: d */
    public final lw2 f31551d = new lw2();

    /* renamed from: c */
    public final yv2 f31550c = new yv2();

    /* renamed from: e */
    public final mw2 f31552e = new mw2(new vw2());

    /* renamed from: f */
    public static sw2 m6982f() {
        return f31543g;
    }

    /* renamed from: j */
    public static /* synthetic */ void m6978j(sw2 sw2Var) {
        sw2Var.f31549b = 0;
        sw2Var.f31553f = System.nanoTime();
        sw2Var.f31551d.m9549d();
        long nanoTime = System.nanoTime();
        xv2 m4546a = sw2Var.f31550c.m4546a();
        if (sw2Var.f31551d.m9551b().size() > 0) {
            Iterator<String> it = sw2Var.f31551d.m9551b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject m11045b = gw2.m11045b(0, 0, 0, 0);
                View m9545h = sw2Var.f31551d.m9545h(next);
                xv2 m4545b = sw2Var.f31550c.m4545b();
                String m9550c = sw2Var.f31551d.m9550c(next);
                if (m9550c != null) {
                    JSONObject mo4064c = m4545b.mo4064c(m9545h);
                    gw2.m11043d(mo4064c, next);
                    gw2.m11042e(mo4064c, m9550c);
                    gw2.m11040g(m11045b, mo4064c);
                }
                gw2.m11039h(m11045b);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                sw2Var.f31552e.m9258b(m11045b, hashSet, nanoTime);
            }
        }
        if (sw2Var.f31551d.m9552a().size() > 0) {
            JSONObject m11045b2 = gw2.m11045b(0, 0, 0, 0);
            sw2Var.m6977k(null, m4546a, m11045b2, 1);
            gw2.m11039h(m11045b2);
            sw2Var.f31552e.m9259a(m11045b2, sw2Var.f31551d.m9552a(), nanoTime);
        } else {
            sw2Var.f31552e.m9257c();
        }
        sw2Var.f31551d.m9548e();
        long nanoTime2 = System.nanoTime() - sw2Var.f31553f;
        if (sw2Var.f31548a.size() > 0) {
            for (rw2 rw2Var : sw2Var.f31548a) {
                TimeUnit.NANOSECONDS.toMillis(nanoTime2);
                rw2Var.m7313a();
                if (rw2Var instanceof qw2) {
                    ((qw2) rw2Var).zza();
                }
            }
        }
    }

    /* renamed from: l */
    public static final void m6976l() {
        Handler handler = f31545i;
        if (handler != null) {
            handler.removeCallbacks(f31547k);
            f31545i = null;
        }
    }

    /* renamed from: i */
    public final void m6979i() {
        m6976l();
    }

    /* renamed from: k */
    public final void m6977k(View view, xv2 xv2Var, JSONObject jSONObject, int i) {
        xv2Var.mo4063d(view, jSONObject, this, i == 1);
    }

    /* renamed from: g */
    public final void m6981g() {
        if (f31545i == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f31545i = handler;
            handler.post(f31546j);
            f31545i.postDelayed(f31547k, 200L);
        }
    }

    @Override // p168r4.vv2
    /* renamed from: a */
    public final void mo5988a(View view, xv2 xv2Var, JSONObject jSONObject) {
        int m9543j;
        if (jw2.m10162b(view) != null || (m9543j = this.f31551d.m9543j(view)) == 3) {
            return;
        }
        JSONObject mo4064c = xv2Var.mo4064c(view);
        gw2.m11040g(jSONObject, mo4064c);
        String m9546g = this.f31551d.m9546g(view);
        if (m9546g != null) {
            gw2.m11043d(mo4064c, m9546g);
            this.f31551d.m9547f();
        } else {
            kw2 m9544i = this.f31551d.m9544i(view);
            if (m9544i != null) {
                gw2.m11041f(mo4064c, m9544i);
            }
            m6977k(view, xv2Var, mo4064c, m9543j);
        }
        this.f31549b++;
    }

    /* renamed from: h */
    public final void m6980h() {
        m6976l();
        this.f31548a.clear();
        f31544h.post(new nw2(this));
    }
}
