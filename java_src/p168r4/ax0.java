package p168r4;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import p016b3.C0497k2;
import p016b3.C0547y;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.C7297q;
import p235z2.C7601t;
/* renamed from: r4.ax0 */
/* loaded from: classes2.dex */
public final class ax0 extends AbstractBinderC6036mw {

    /* renamed from: a */
    public final Context f20751a;

    /* renamed from: b */
    public final im0 f20752b;

    /* renamed from: d */
    public final gq1 f20753d;

    /* renamed from: k */
    public final s12<zp2, o32> f20754k;

    /* renamed from: p */
    public final y72 f20755p;

    /* renamed from: q */
    public final pu1 f20756q;

    /* renamed from: r */
    public final ik0 f20757r;

    /* renamed from: s */
    public final lq1 f20758s;

    /* renamed from: t */
    public final iv1 f20759t;

    /* renamed from: u */
    public boolean f20760u = false;

    public ax0(Context context, im0 im0Var, gq1 gq1Var, s12<zp2, o32> s12Var, y72 y72Var, pu1 pu1Var, ik0 ik0Var, lq1 lq1Var, iv1 iv1Var) {
        this.f20751a = context;
        this.f20752b = im0Var;
        this.f20753d = gq1Var;
        this.f20754k = s12Var;
        this.f20755p = y72Var;
        this.f20756q = pu1Var;
        this.f20757r = ik0Var;
        this.f20758s = lq1Var;
        this.f20759t = iv1Var;
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: B0 */
    public final void mo8571B0(String str) {
        this.f20755p.m4823d(str);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: H0 */
    public final synchronized void mo8570H0(boolean z) {
        C7601t.m934i().m26369c(z);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: N5 */
    public final void mo8569N5(InterfaceC6481yw interfaceC6481yw) {
        this.f20759t.m10497k(interfaceC6481yw, hv1.API);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: Q */
    public final synchronized void mo8567Q(String str) {
        C6225rz.m7278a(this.f20751a);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31124t2)).booleanValue()) {
                C7601t.m931l().m1028a(this.f20751a, this.f20752b, str, null);
            }
        }
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: S2 */
    public final void mo8566S2(C6261sy c6261sy) {
        this.f20757r.m10621h(this.f20751a, c6261sy);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: Y0 */
    public final void mo8565Y0(n70 n70Var) {
        this.f20756q.m8199h(n70Var);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: c */
    public final synchronized void mo8563c() {
        if (this.f20760u) {
            cm0.m12437f("Mobile ads is initialized already.");
            return;
        }
        C6225rz.m7278a(this.f20751a);
        C7601t.m935h().m9058i(this.f20751a, this.f20752b);
        C7601t.m933j().m8242d(this.f20751a);
        this.f20760u = true;
        this.f20756q.m8198i();
        this.f20755p.m4826a();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31132u2)).booleanValue()) {
            this.f20758s.m9584a();
        }
        this.f20759t.m10507a();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30797E6)).booleanValue()) {
            qm0.f30190a.execute(new Runnable(this) { // from class: r4.xw0

                /* renamed from: a */
                public final ax0 f33788a;

                {
                    this.f33788a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f33788a.m12918a();
                }
            });
        }
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: i */
    public final synchronized float mo8562i() {
        return C7601t.m934i().m26370b();
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: j2 */
    public final synchronized void mo8561j2(float f) {
        C7601t.m934i().m26371a(f);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: k */
    public final synchronized boolean mo8560k() {
        return C7601t.m934i().m26368d();
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: l */
    public final String mo8559l() {
        return this.f20752b.f25171a;
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: m */
    public final List<g70> mo8558m() {
        return this.f20756q.m8197j();
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: r */
    public final void mo8556r() {
        this.f20756q.m8200g();
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: s1 */
    public final void mo8555s1(fb0 fb0Var) {
        this.f20753d.m11064a(fb0Var);
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: O5 */
    public final void mo8568O5(InterfaceC3512a interfaceC3512a, String str) {
        if (interfaceC3512a == null) {
            cm0.m12440c("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) BinderC3514b.m18740t0(interfaceC3512a);
        if (context == null) {
            cm0.m12440c("Context is null. Failed to open debug menu.");
            return;
        }
        C0547y c0547y = new C0547y(context);
        c0547y.m26246c(str);
        c0547y.m26245d(this.f20752b.f25171a);
        c0547y.m26247b();
    }

    /* renamed from: f7 */
    public final void m12917f7(Runnable runnable) {
        String str;
        C7297q.m1888e("Adapters must be initialized on the main thread.");
        Map<String, ab0> m10885f = C7601t.m935h().m9051p().mo26194p().m10885f();
        if (m10885f.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                cm0.m12436g("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (!this.f20753d.m11061d()) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (ab0 ab0Var : m10885f.values()) {
            for (za0 za0Var : ab0Var.f20443a) {
                String str2 = za0Var.f34418k;
                for (String str3 : za0Var.f34410c) {
                    if (!hashMap.containsKey(str3)) {
                        hashMap.put(str3, new ArrayList());
                    }
                    if (str2 != null) {
                        ((Collection) hashMap.get(str3)).add(str2);
                    }
                }
            }
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            String str4 = (String) entry.getKey();
            try {
                t12<zp2, o32> mo5497a = this.f20754k.mo5497a(str4, jSONObject);
                if (mo5497a != null) {
                    zp2 zp2Var = mo5497a.f31617b;
                    if (!zp2Var.m4127q() && zp2Var.m4124t()) {
                        zp2Var.m4123u(this.f20751a, mo5497a.f31618c, (List) entry.getValue());
                        String valueOf = String.valueOf(str4);
                        if (valueOf.length() != 0) {
                            str = "Initialized rewarded video mediation adapter ".concat(valueOf);
                        } else {
                            str = new String("Initialized rewarded video mediation adapter ");
                        }
                        cm0.m12442a(str);
                    }
                }
            } catch (mp2 e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + 56);
                sb.append("Failed to initialize rewarded video mediation adapter \"");
                sb.append(str4);
                sb.append("\"");
                cm0.m12436g(sb.toString(), e);
            }
        }
    }

    @Override // p168r4.InterfaceC6074nw
    /* renamed from: p5 */
    public final void mo8557p5(String str, InterfaceC3512a interfaceC3512a) {
        String str2;
        Runnable runnable;
        C6225rz.m7278a(this.f20751a);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31148w2)).booleanValue()) {
            C7601t.m939d();
            str2 = C0497k2.m26323c0(this.f20751a);
        } else {
            str2 = "";
        }
        boolean z = true;
        if (true != TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean booleanValue = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31124t2)).booleanValue();
        AbstractC5928jz<Boolean> abstractC5928jz = C6225rz.f30767B0;
        boolean booleanValue2 = booleanValue | ((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue();
        if (((Boolean) C5592av.m12935c().m8098c(abstractC5928jz)).booleanValue()) {
            final Runnable runnable2 = (Runnable) BinderC3514b.m18740t0(interfaceC3512a);
            runnable = new Runnable(this, runnable2) { // from class: r4.yw0

                /* renamed from: a */
                public final ax0 f34235a;

                /* renamed from: b */
                public final Runnable f34236b;

                {
                    this.f34235a = this;
                    this.f34236b = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final ax0 ax0Var = this.f34235a;
                    final Runnable runnable3 = this.f34236b;
                    qm0.f30194e.execute(new Runnable(ax0Var, runnable3) { // from class: r4.zw0

                        /* renamed from: a */
                        public final ax0 f34756a;

                        /* renamed from: b */
                        public final Runnable f34757b;

                        {
                            this.f34756a = ax0Var;
                            this.f34757b = runnable3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f34756a.m12917f7(this.f34757b);
                        }
                    });
                }
            };
        } else {
            z = booleanValue2;
            runnable = null;
        }
        if (z) {
            C7601t.m931l().m1028a(this.f20751a, this.f20752b, str, runnable);
        }
    }

    /* renamed from: a */
    public final void m12918a() {
        if (C7601t.m935h().m9051p().mo26212X()) {
            if (!C7601t.m929n().m26408e(this.f20751a, C7601t.m935h().m9051p().mo26198k0(), this.f20752b.f25171a)) {
                C7601t.m935h().m9051p().mo26220Q0(false);
                C7601t.m935h().m9051p().mo26214V0("");
            }
        }
    }
}
