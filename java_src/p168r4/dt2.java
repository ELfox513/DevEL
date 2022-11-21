package p168r4;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.dt2 */
/* loaded from: classes2.dex */
public final class dt2<O> {

    /* renamed from: a */
    public final Object f22424a;

    /* renamed from: b */
    public final String f22425b;

    /* renamed from: c */
    public final h83<?> f22426c;

    /* renamed from: d */
    public final List<h83<?>> f22427d;

    /* renamed from: e */
    public final h83<O> f22428e;

    /* renamed from: f */
    public final /* synthetic */ et2 f22429f;

    public dt2(et2 et2Var, et2 et2Var2, String str, h83 h83Var, List<h83> list, h83<O> h83Var2) {
        this.f22429f = et2Var;
        this.f22424a = et2Var2;
        this.f22425b = str;
        this.f22426c = h83Var;
        this.f22427d = list;
        this.f22428e = h83Var2;
    }

    /* renamed from: a */
    public final dt2<O> m11956a(String str) {
        return new dt2<>(this.f22429f, this.f22424a, str, this.f22426c, this.f22427d, this.f22428e);
    }

    /* renamed from: b */
    public final <O2> dt2<O2> m11955b(final ps2<O, O2> ps2Var) {
        return m11954c(new e73(ps2Var) { // from class: r4.ys2

            /* renamed from: a */
            public final ps2 f34193a;

            {
                this.f34193a = ps2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return y73.m4814a(this.f34193a.mo4065a(obj));
            }
        });
    }

    /* renamed from: c */
    public final <O2> dt2<O2> m11954c(e73<O, O2> e73Var) {
        i83 i83Var;
        i83Var = this.f22429f.f23137a;
        return m11953d(e73Var, i83Var);
    }

    /* renamed from: d */
    public final <O2> dt2<O2> m11953d(e73<O, O2> e73Var, Executor executor) {
        return new dt2<>(this.f22429f, this.f22424a, this.f22425b, this.f22426c, this.f22427d, y73.m4806i(this.f22428e, e73Var, executor));
    }

    /* renamed from: e */
    public final <O2> dt2<O2> m11952e(final h83<O2> h83Var) {
        return m11953d(new e73(h83Var) { // from class: r4.zs2

            /* renamed from: a */
            public final h83 f34724a;

            {
                this.f34724a = h83Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f34724a;
            }
        }, qm0.f30195f);
    }

    /* renamed from: f */
    public final <T extends Throwable> dt2<O> m11951f(Class<T> cls, final ps2<T, O> ps2Var) {
        return m11950g(cls, new e73(ps2Var) { // from class: r4.at2

            /* renamed from: a */
            public final ps2 f20611a;

            {
                this.f20611a = ps2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                Exception exc = (Exception) ((Throwable) obj);
                return y73.m4814a("");
            }
        });
    }

    /* renamed from: g */
    public final <T extends Throwable> dt2<O> m11950g(Class<T> cls, e73<T, O> e73Var) {
        i83 i83Var;
        et2 et2Var = this.f22429f;
        Object obj = this.f22424a;
        String str = this.f22425b;
        h83<?> h83Var = this.f22426c;
        List<h83<?>> list = this.f22427d;
        h83<O> h83Var2 = this.f22428e;
        i83Var = et2Var.f23137a;
        return new dt2<>(et2Var, obj, str, h83Var, list, y73.m4808g(h83Var2, cls, e73Var, i83Var));
    }

    /* renamed from: h */
    public final dt2<O> m11949h(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        et2 et2Var = this.f22429f;
        Object obj = this.f22424a;
        String str = this.f22425b;
        h83<?> h83Var = this.f22426c;
        List<h83<?>> list = this.f22427d;
        h83<O> h83Var2 = this.f22428e;
        scheduledExecutorService = et2Var.f23138b;
        return new dt2<>(et2Var, obj, str, h83Var, list, y73.m4807h(h83Var2, j, timeUnit, scheduledExecutorService));
    }

    /* renamed from: i */
    public final rs2 m11948i() {
        ft2 ft2Var;
        Object obj = this.f22424a;
        String str = this.f22425b;
        if (str == null) {
            str = this.f22429f.mo9273g(obj);
        }
        final rs2 rs2Var = new rs2(obj, str, this.f22428e);
        ft2Var = this.f22429f.f23139c;
        ft2Var.mo9563j(rs2Var);
        h83<?> h83Var = this.f22426c;
        Runnable runnable = new Runnable(this, rs2Var) { // from class: r4.bt2

            /* renamed from: a */
            public final dt2 f21208a;

            /* renamed from: b */
            public final rs2 f21209b;

            {
                this.f21208a = this;
                this.f21209b = rs2Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ft2 ft2Var2;
                dt2 dt2Var = this.f21208a;
                rs2 rs2Var2 = this.f21209b;
                ft2Var2 = dt2Var.f22429f.f23139c;
                ft2Var2.mo9562z(rs2Var2);
            }
        };
        i83 i83Var = qm0.f30195f;
        h83Var.mo6087c(runnable, i83Var);
        y73.m4799p(rs2Var, new ct2(this, rs2Var), i83Var);
        return rs2Var;
    }

    /* renamed from: j */
    public final dt2<O> m11947j(Object obj) {
        return this.f22429f.m11682e(obj, m11948i());
    }
}
