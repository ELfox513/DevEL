package p168r4;

import android.content.Context;
import android.view.View;
import java.util.Map;
import org.json.JSONObject;
import p016b3.C0497k2;
import p026c4.InterfaceC1055p;
import p235z2.C7582a;
import p235z2.C7601t;
/* renamed from: r4.r80 */
/* loaded from: classes2.dex */
public final class r80 implements j80, g80 {

    /* renamed from: a */
    public final cs0 f30500a;

    @Override // p168r4.j80
    /* renamed from: A */
    public final void mo7590A(String str) {
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        m7588V(new Runnable(this, format) { // from class: r4.l80

            /* renamed from: a */
            public final r80 f27123a;

            /* renamed from: b */
            public final String f27124b;

            {
                this.f27123a = this;
                this.f27124b = format;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f27123a.m7585e(this.f27124b);
            }
        });
    }

    @Override // p168r4.q90
    /* renamed from: A0 */
    public final void mo7573A0(String str, u50<? super q90> u50Var) {
        this.f30500a.mo5080g0(str, new q80(this, u50Var));
    }

    @Override // p168r4.e80
    /* renamed from: H0 */
    public final void mo5125H0(String str, Map map) {
        f80.m11596d(this, str, map);
    }

    @Override // p168r4.s80
    /* renamed from: K0 */
    public final void mo5120K0(String str, JSONObject jSONObject) {
        f80.m11599a(this, str, jSONObject);
    }

    @Override // p168r4.j80
    /* renamed from: Q */
    public final void mo7589Q(final String str) {
        m7588V(new Runnable(this, str) { // from class: r4.m80

            /* renamed from: a */
            public final r80 f27536a;

            /* renamed from: b */
            public final String f27537b;

            {
                this.f27536a = this;
                this.f27537b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f27536a.m7586b(this.f27537b);
            }
        });
    }

    @Override // p168r4.q90
    /* renamed from: U */
    public final void mo7572U(String str, final u50<? super q90> u50Var) {
        this.f30500a.mo5094a1(str, new InterfaceC1055p(u50Var) { // from class: r4.o80

            /* renamed from: a */
            public final u50 f28920a;

            {
                this.f28920a = u50Var;
            }

            @Override // p026c4.InterfaceC1055p
            public final boolean apply(Object obj) {
                u50 u50Var2;
                u50 u50Var3 = this.f28920a;
                u50 u50Var4 = (u50) obj;
                if (u50Var4 instanceof q80) {
                    u50Var2 = ((q80) u50Var4).f30035a;
                    if (u50Var2.equals(u50Var3)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m7587a(String str) {
        this.f30500a.loadUrl(str);
    }

    /* renamed from: b */
    public final /* synthetic */ void m7586b(String str) {
        this.f30500a.loadData(str, "text/html", "UTF-8");
    }

    @Override // p168r4.e80
    /* renamed from: c */
    public final void mo5091c(String str, JSONObject jSONObject) {
        f80.m11597c(this, str, jSONObject);
    }

    /* renamed from: e */
    public final /* synthetic */ void m7585e(String str) {
        this.f30500a.loadData(str, "text/html", "UTF-8");
    }

    @Override // p168r4.s80
    /* renamed from: g */
    public final void mo5081g(String str, String str2) {
        f80.m11598b(this, str, str2);
    }

    @Override // p168r4.j80
    /* renamed from: h */
    public final boolean mo7584h() {
        return this.f30500a.mo5083f0();
    }

    @Override // p168r4.j80
    /* renamed from: i */
    public final r90 mo7583i() {
        return new r90(this);
    }

    @Override // p168r4.j80
    /* renamed from: j */
    public final void mo7582j() {
        this.f30500a.destroy();
    }

    @Override // p168r4.s80
    /* renamed from: q */
    public final void mo5052q(final String str) {
        m7588V(new Runnable(this, str) { // from class: r4.k80

            /* renamed from: a */
            public final r80 f26339a;

            /* renamed from: b */
            public final String f26340b;

            {
                this.f26339a = this;
                this.f26340b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f26339a.m7579y(this.f26340b);
            }
        });
    }

    @Override // p168r4.j80
    /* renamed from: s */
    public final void mo7581s(final String str) {
        m7588V(new Runnable(this, str) { // from class: r4.n80

            /* renamed from: a */
            public final r80 f28197a;

            /* renamed from: b */
            public final String f28198b;

            {
                this.f28197a = this;
                this.f28198b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28197a.m7587a(this.f28198b);
            }
        });
    }

    @Override // p168r4.j80
    /* renamed from: u */
    public final void mo7580u(i80 i80Var) {
        this.f30500a.mo5057o0().mo7010V(p80.m8452b(i80Var));
    }

    /* renamed from: y */
    public final /* synthetic */ void m7579y(String str) {
        this.f30500a.mo5052q(str);
    }

    public r80(Context context, im0 im0Var, C6300u c6300u, C7582a c7582a) {
        C7601t.m938e();
        cs0 m8708a = os0.m8708a(context, vt0.m6023b(), "", false, false, null, null, im0Var, null, null, null, C5882ip.m10583a(), null, null);
        this.f30500a = m8708a;
        ((View) m8708a).setWillNotDraw(true);
    }

    /* renamed from: V */
    public static final void m7588V(Runnable runnable) {
        C6479yu.m4568a();
        if (vl0.m6114n()) {
            runnable.run();
        } else {
            C0497k2.f1630i.post(runnable);
        }
    }
}
