package p168r4;

import android.os.Binder;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.wv1 */
/* loaded from: classes2.dex */
public final class wv1 {

    /* renamed from: a */
    public final i83 f33338a;

    /* renamed from: b */
    public final i83 f33339b;

    /* renamed from: c */
    public final fx1 f33340c;

    /* renamed from: d */
    public final or3<az1> f33341d;

    public wv1(i83 i83Var, i83 i83Var2, fx1 fx1Var, or3<az1> or3Var) {
        this.f33338a = i83Var;
        this.f33339b = i83Var2;
        this.f33340c = fx1Var;
        this.f33341d = or3Var;
    }

    /* renamed from: b */
    public final /* synthetic */ h83 m5560b(og0 og0Var, int i, yx1 yx1Var) {
        return this.f33341d.m8710a().m12913f7(og0Var, i);
    }

    /* renamed from: a */
    public final h83<InputStream> m5561a(final og0 og0Var) {
        h83 m4808g;
        String str = og0Var.f28981k;
        C7601t.m939d();
        if (C0497k2.m26318f(str)) {
            m4808g = y73.m4812c(new yx1(1));
        } else {
            m4808g = y73.m4808g(this.f33338a.mo8015c(new Callable(this, og0Var) { // from class: r4.tv1

                /* renamed from: a */
                public final wv1 f32034a;

                /* renamed from: b */
                public final og0 f32035b;

                {
                    this.f32034a = this;
                    this.f32035b = og0Var;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f32034a.m5559c(this.f32035b);
                }
            }), ExecutionException.class, uv1.f32449a, this.f33339b);
        }
        final int callingUid = Binder.getCallingUid();
        return y73.m4808g(m4808g, yx1.class, new e73(this, og0Var, callingUid) { // from class: r4.vv1

            /* renamed from: a */
            public final wv1 f32940a;

            /* renamed from: b */
            public final og0 f32941b;

            /* renamed from: c */
            public final int f32942c;

            {
                this.f32940a = this;
                this.f32941b = og0Var;
                this.f32942c = callingUid;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f32940a.m5560b(this.f32941b, this.f32942c, (yx1) obj);
            }
        }, this.f33339b);
    }

    /* renamed from: c */
    public final /* synthetic */ InputStream m5559c(og0 og0Var) {
        vm0<InputStream> vm0Var;
        final fx1 fx1Var = this.f33340c;
        synchronized (fx1Var.f26169b) {
            if (fx1Var.f26170d) {
                vm0Var = fx1Var.f26168a;
            } else {
                fx1Var.f26170d = true;
                fx1Var.f26172p = og0Var;
                fx1Var.f26173q.m1985p();
                fx1Var.f26168a.mo6087c(new Runnable(fx1Var) { // from class: r4.ex1

                    /* renamed from: a */
                    public final fx1 f23197a;

                    {
                        this.f23197a = fx1Var;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f23197a.m10159a();
                    }
                }, qm0.f30195f);
                vm0Var = fx1Var.f26168a;
            }
        }
        return vm0Var.get(((Integer) C5592av.m12935c().m8098c(C6225rz.f30882P3)).intValue(), TimeUnit.SECONDS);
    }
}
