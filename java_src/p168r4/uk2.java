package p168r4;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.util.concurrent.Executor;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.uk2 */
/* loaded from: classes2.dex */
public final class uk2 implements t92<h11> {

    /* renamed from: a */
    public final Context f32308a;

    /* renamed from: b */
    public final Executor f32309b;

    /* renamed from: c */
    public final bu0 f32310c;

    /* renamed from: d */
    public final d92 f32311d;

    /* renamed from: e */
    public final h92 f32312e;

    /* renamed from: f */
    public final ViewGroup f32313f;

    /* renamed from: g */
    public n00 f32314g;

    /* renamed from: h */
    public final aa1 f32315h;

    /* renamed from: i */
    public final fp2 f32316i;

    /* renamed from: j */
    public h83<h11> f32317j;

    @Override // p168r4.t92
    /* renamed from: a */
    public final boolean mo6510a() {
        h83<h11> h83Var = this.f32317j;
        return (h83Var == null || h83Var.isDone()) ? false : true;
    }

    @Override // p168r4.t92
    /* renamed from: b */
    public final boolean mo6509b(C6293tt c6293tt, String str, r92 r92Var, s92<? super h11> s92Var) {
        f21 zza;
        if (str == null) {
            cm0.m12440c("Ad unit ID should not be null for banner ad.");
            this.f32309b.execute(new Runnable(this) { // from class: r4.qk2

                /* renamed from: a */
                public final uk2 f30175a;

                {
                    this.f30175a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f30175a.m6495p();
                }
            });
            return false;
        } else if (mo6510a()) {
            return false;
        } else {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31096p6)).booleanValue() && c6293tt.f31999q) {
                this.f32310c.mo8647C().m10505c(true);
            }
            fp2 fp2Var = this.f32316i;
            fp2Var.m11428L(str);
            fp2Var.m11433G(c6293tt);
            hp2 m11413l = fp2Var.m11413l();
            if (k10.f26209c.m6673e().booleanValue() && this.f32316i.m11429K().f34207v) {
                d92 d92Var = this.f32311d;
                if (d92Var != null) {
                    d92Var.mo5143B(dq2.m11989d(7, null, null));
                }
                return false;
            }
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30876O5)).booleanValue()) {
                e21 mo8601n = this.f32310c.mo8601n();
                s61 s61Var = new s61();
                s61Var.m7197e(this.f32308a);
                s61Var.m7196f(m11413l);
                mo8601n.mo8659s(s61Var.m7194h());
                zc1 zc1Var = new zc1();
                zc1Var.m4324b(this.f32311d, this.f32309b);
                zc1Var.m4303w(this.f32311d, this.f32309b);
                mo8601n.mo8658t(zc1Var.m4323c());
                mo8601n.mo8660o(new j72(this.f32314g));
                mo8601n.mo8661k(new mh1(pj1.f29477h, null));
                mo8601n.mo8663g(new c31(this.f32315h));
                mo8601n.mo8662h(new e11(this.f32313f));
                zza = mo8601n.zza();
            } else {
                e21 mo8601n2 = this.f32310c.mo8601n();
                s61 s61Var2 = new s61();
                s61Var2.m7197e(this.f32308a);
                s61Var2.m7196f(m11413l);
                mo8601n2.mo8659s(s61Var2.m7194h());
                zc1 zc1Var2 = new zc1();
                zc1Var2.m4324b(this.f32311d, this.f32309b);
                zc1Var2.m4302x(this.f32311d, this.f32309b);
                zc1Var2.m4302x(this.f32312e, this.f32309b);
                zc1Var2.m4301y(this.f32311d, this.f32309b);
                zc1Var2.m4300z(this.f32311d, this.f32309b);
                zc1Var2.m4307s(this.f32311d, this.f32309b);
                zc1Var2.m4306t(this.f32311d, this.f32309b);
                zc1Var2.m4305u(this.f32311d, this.f32309b);
                zc1Var2.m4303w(this.f32311d, this.f32309b);
                zc1Var2.m4326C(this.f32311d, this.f32309b);
                mo8601n2.mo8658t(zc1Var2.m4323c());
                mo8601n2.mo8660o(new j72(this.f32314g));
                mo8601n2.mo8661k(new mh1(pj1.f29477h, null));
                mo8601n2.mo8663g(new c31(this.f32315h));
                mo8601n2.mo8662h(new e11(this.f32313f));
                zza = mo8601n2.zza();
            }
            m41<h11> mo8154b = zza.mo8154b();
            h83<h11> m9501d = mo8154b.m9501d(mo8154b.m9502c());
            this.f32317j = m9501d;
            y73.m4799p(m9501d, new tk2(this, s92Var, zza), this.f32309b);
            return true;
        }
    }

    /* renamed from: i */
    public final ViewGroup m6502i() {
        return this.f32313f;
    }

    /* renamed from: j */
    public final void m6501j(n00 n00Var) {
        this.f32314g = n00Var;
    }

    /* renamed from: k */
    public final void m6500k(InterfaceC5740ev interfaceC5740ev) {
        this.f32312e.m10958c(interfaceC5740ev);
    }

    /* renamed from: l */
    public final fp2 m6499l() {
        return this.f32316i;
    }

    /* renamed from: n */
    public final void m6497n(ba1 ba1Var) {
        this.f32315h.m4759K0(ba1Var, this.f32309b);
    }

    /* renamed from: o */
    public final void m6496o() {
        this.f32315h.m13041T0(60);
    }

    /* renamed from: m */
    public final boolean m6498m() {
        ViewParent parent = this.f32313f.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        C7601t.m939d();
        return C0497k2.m26296z(view, view.getContext());
    }

    /* renamed from: p */
    public final /* synthetic */ void m6495p() {
        this.f32311d.mo5143B(dq2.m11989d(6, null, null));
    }

    public uk2(Context context, Executor executor, C6478yt c6478yt, bu0 bu0Var, d92 d92Var, h92 h92Var, fp2 fp2Var) {
        this.f32308a = context;
        this.f32309b = executor;
        this.f32310c = bu0Var;
        this.f32311d = d92Var;
        this.f32312e = h92Var;
        this.f32316i = fp2Var;
        this.f32315h = bu0Var.mo8607k();
        this.f32313f = new FrameLayout(context);
        fp2Var.m11431I(c6478yt);
    }
}
