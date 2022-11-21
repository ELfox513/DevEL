package p168r4;

import p168r4.i31;
import p168r4.r61;
/* renamed from: r4.xr2 */
/* loaded from: classes2.dex */
public final class xr2<R extends r61<AdT>, AdT extends i31> {

    /* renamed from: a */
    public final pr2<R, AdT> f33704a;

    /* renamed from: b */
    public final h83<nr2<R, AdT>> f33705b;

    /* renamed from: c */
    public boolean f33706c = false;

    /* renamed from: d */
    public boolean f33707d = false;

    /* renamed from: a */
    public final synchronized void m5141a(t73<Void> t73Var) {
        y73.m4799p(y73.m4806i(this.f33705b, wr2.f33308a, this.f33704a.zza()), t73Var, this.f33704a.zza());
    }

    /* renamed from: b */
    public final synchronized h83<nr2<R, AdT>> m5140b(pr2<R, AdT> pr2Var) {
        if (!this.f33707d && !this.f33706c) {
            if (this.f33704a.mo8218a() != null && pr2Var.mo8218a() != null && this.f33704a.mo8218a().equals(pr2Var.mo8218a())) {
                this.f33706c = true;
                return this.f33705b;
            }
            return null;
        }
        return null;
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m5139c(or2 or2Var, Exception exc) {
        synchronized (this) {
            this.f33707d = true;
            throw exc;
        }
    }

    /* renamed from: d */
    public final /* synthetic */ h83 m5138d(or2 or2Var, uq2 uq2Var, pr2 pr2Var, dr2 dr2Var) {
        synchronized (this) {
            this.f33707d = true;
            or2Var.mo8712a(dr2Var);
            if (!this.f33706c) {
                uq2Var.mo6034d(pr2Var.mo8218a(), dr2Var);
                return y73.m4814a(null);
            }
            return y73.m4814a(new nr2(dr2Var, pr2Var));
        }
    }

    public xr2(final uq2 uq2Var, final or2<R, AdT> or2Var, final pr2<R, AdT> pr2Var) {
        this.f33704a = pr2Var;
        this.f33705b = y73.m4808g(y73.m4806i(or2Var.mo8711b(pr2Var), new e73(this, or2Var, uq2Var, pr2Var) { // from class: r4.ur2

            /* renamed from: a */
            public final xr2 f32358a;

            /* renamed from: b */
            public final or2 f32359b;

            /* renamed from: c */
            public final uq2 f32360c;

            /* renamed from: d */
            public final pr2 f32361d;

            {
                this.f32358a = this;
                this.f32359b = or2Var;
                this.f32360c = uq2Var;
                this.f32361d = pr2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f32358a.m5138d(this.f32359b, this.f32360c, this.f32361d, (dr2) obj);
            }
        }, pr2Var.zza()), Exception.class, new e73(this, or2Var) { // from class: r4.vr2

            /* renamed from: a */
            public final xr2 f32793a;

            /* renamed from: b */
            public final or2 f32794b;

            {
                this.f32793a = this;
                this.f32794b = or2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f32793a.m5139c(this.f32794b, (Exception) obj);
            }
        }, pr2Var.zza());
    }
}
