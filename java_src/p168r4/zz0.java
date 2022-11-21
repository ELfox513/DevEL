package p168r4;

import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;
import p016b3.C0543w1;
import p026c4.InterfaceC1045f;
/* renamed from: r4.zz0 */
/* loaded from: classes2.dex */
public final class zz0 implements InterfaceC6064nm {

    /* renamed from: a */
    public cs0 f34791a;

    /* renamed from: b */
    public final Executor f34792b;

    /* renamed from: d */
    public final kz0 f34793d;

    /* renamed from: k */
    public final InterfaceC1045f f34794k;

    /* renamed from: p */
    public boolean f34795p = false;

    /* renamed from: q */
    public boolean f34796q = false;

    /* renamed from: r */
    public final nz0 f34797r = new nz0();

    public zz0(Executor executor, kz0 kz0Var, InterfaceC1045f interfaceC1045f) {
        this.f34792b = executor;
        this.f34793d = kz0Var;
        this.f34794k = interfaceC1045f;
    }

    /* renamed from: a */
    public final void m4016a(cs0 cs0Var) {
        this.f34791a = cs0Var;
    }

    /* renamed from: b */
    public final void m4015b() {
        this.f34795p = false;
    }

    /* renamed from: c */
    public final void m4014c() {
        this.f34795p = true;
        m4011g();
    }

    /* renamed from: d */
    public final void m4013d(boolean z) {
        this.f34796q = z;
    }

    /* renamed from: e */
    public final /* synthetic */ void m4012e(JSONObject jSONObject) {
        this.f34791a.mo5120K0("AFMA_updateActiveView", jSONObject);
    }

    @Override // p168r4.InterfaceC6064nm
    /* renamed from: Y */
    public final void mo4017Y(C6026mm c6026mm) {
        boolean z;
        nz0 nz0Var = this.f34797r;
        if (this.f34796q) {
            z = false;
        } else {
            z = c6026mm.f27782j;
        }
        nz0Var.f28736a = z;
        nz0Var.f28739d = this.f34794k.mo24762b();
        this.f34797r.f28741f = c6026mm;
        if (this.f34795p) {
            m4011g();
        }
    }

    /* renamed from: g */
    public final void m4011g() {
        try {
            final JSONObject mo4532b = this.f34793d.mo4532b(this.f34797r);
            if (this.f34791a != null) {
                this.f34792b.execute(new Runnable(this, mo4532b) { // from class: r4.xz0

                    /* renamed from: a */
                    public final zz0 f33818a;

                    /* renamed from: b */
                    public final JSONObject f33819b;

                    {
                        this.f33818a = this;
                        this.f33819b = mo4532b;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f33818a.m4012e(this.f33819b);
                    }
                });
            }
        } catch (JSONException e) {
            C0543w1.m26250l("Failed to call video active view js", e);
        }
    }
}
