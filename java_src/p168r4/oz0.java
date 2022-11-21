package p168r4;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import p004a3.InterfaceC0076q;
import p016b3.C0543w1;
import p026c4.InterfaceC1045f;
/* renamed from: r4.oz0 */
/* loaded from: classes2.dex */
public final class oz0 implements InterfaceC6064nm, e81, InterfaceC0076q, d81 {

    /* renamed from: a */
    public final iz0 f29274a;

    /* renamed from: b */
    public final kz0 f29275b;

    /* renamed from: k */
    public final qa0<JSONObject, JSONObject> f29277k;

    /* renamed from: p */
    public final Executor f29278p;

    /* renamed from: q */
    public final InterfaceC1045f f29279q;

    /* renamed from: d */
    public final Set<cs0> f29276d = new HashSet();

    /* renamed from: r */
    public final AtomicBoolean f29280r = new AtomicBoolean(false);

    /* renamed from: s */
    public final nz0 f29281s = new nz0();

    /* renamed from: t */
    public boolean f29282t = false;

    /* renamed from: u */
    public WeakReference<?> f29283u = new WeakReference<>(this);

    @Override // p004a3.InterfaceC0076q
    /* renamed from: A2 */
    public final synchronized void mo4171A2() {
        this.f29281s.f28737b = true;
        m8554a();
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: C6 */
    public final void mo4170C6(int i) {
    }

    @Override // p168r4.InterfaceC6064nm
    /* renamed from: Y */
    public final synchronized void mo4017Y(C6026mm c6026mm) {
        nz0 nz0Var = this.f29281s;
        nz0Var.f28736a = c6026mm.f27782j;
        nz0Var.f28741f = c6026mm;
        m8554a();
    }

    /* renamed from: a */
    public final synchronized void m8554a() {
        if (this.f29283u.get() != null) {
            if (!this.f29282t && this.f29280r.get()) {
                try {
                    this.f29281s.f28739d = this.f29279q.mo24762b();
                    final JSONObject mo4532b = this.f29275b.mo4532b(this.f29281s);
                    for (final cs0 cs0Var : this.f29276d) {
                        this.f29278p.execute(new Runnable(cs0Var, mo4532b) { // from class: r4.mz0

                            /* renamed from: a */
                            public final cs0 f28023a;

                            /* renamed from: b */
                            public final JSONObject f28024b;

                            {
                                this.f28023a = cs0Var;
                                this.f28024b = mo4532b;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f28023a.mo5120K0("AFMA_updateActiveView", this.f28024b);
                            }
                        });
                    }
                    tm0.m6789b(this.f29277k.m7915b(mo4532b), "ActiveViewListener.callActiveViewJs");
                    return;
                } catch (Exception e) {
                    C0543w1.m26250l("Failed to call ActiveViewJS", e);
                    return;
                }
            }
            return;
        }
        m8553b();
    }

    /* renamed from: b */
    public final synchronized void m8553b() {
        m8550k();
        this.f29282t = true;
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: c */
    public final void mo4168c() {
    }

    /* renamed from: d */
    public final synchronized void m8552d(cs0 cs0Var) {
        this.f29276d.add(cs0Var);
        this.f29274a.m10453d(cs0Var);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e */
    public final void mo4166e() {
    }

    @Override // p168r4.e81
    /* renamed from: e0 */
    public final synchronized void mo5185e0(Context context) {
        this.f29281s.f28737b = true;
        m8554a();
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: e3 */
    public final synchronized void mo4165e3() {
        this.f29281s.f28737b = false;
        m8554a();
    }

    @Override // p168r4.d81
    /* renamed from: g */
    public final synchronized void mo5385g() {
        if (this.f29280r.compareAndSet(false, true)) {
            this.f29274a.m10454c(this);
            m8554a();
        }
    }

    /* renamed from: j */
    public final void m8551j(Object obj) {
        this.f29283u = new WeakReference<>(obj);
    }

    @Override // p004a3.InterfaceC0076q
    /* renamed from: j0 */
    public final void mo4163j0() {
    }

    @Override // p168r4.e81
    /* renamed from: o */
    public final synchronized void mo5184o(Context context) {
        this.f29281s.f28737b = false;
        m8554a();
    }

    @Override // p168r4.e81
    /* renamed from: v */
    public final synchronized void mo5183v(Context context) {
        this.f29281s.f28740e = "u";
        m8554a();
        m8550k();
        this.f29282t = true;
    }

    /* renamed from: k */
    public final void m8550k() {
        for (cs0 cs0Var : this.f29276d) {
            this.f29274a.m10452e(cs0Var);
        }
        this.f29274a.m10451f();
    }

    public oz0(na0 na0Var, kz0 kz0Var, Executor executor, iz0 iz0Var, InterfaceC1045f interfaceC1045f) {
        this.f29274a = iz0Var;
        y90<JSONObject> y90Var = ba0.f20928b;
        this.f29277k = na0Var.m9138a("google.afma.activeView.handleUpdate", y90Var, y90Var);
        this.f29275b = kz0Var;
        this.f29278p = executor;
        this.f29279q = interfaceC1045f;
    }
}
