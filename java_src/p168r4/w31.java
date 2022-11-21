package p168r4;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: r4.w31 */
/* loaded from: classes2.dex */
public final class w31 {

    /* renamed from: a */
    public final Executor f33041a;

    /* renamed from: b */
    public final ScheduledExecutorService f33042b;

    /* renamed from: c */
    public final h83<p31> f33043c;

    /* renamed from: d */
    public volatile boolean f33044d = true;

    public w31(Executor executor, ScheduledExecutorService scheduledExecutorService, h83<p31> h83Var) {
        this.f33041a = executor;
        this.f33042b = scheduledExecutorService;
        this.f33043c = h83Var;
    }

    /* renamed from: a */
    public final void m5901a(t73<i31> t73Var) {
        y73.m4799p(this.f33043c, new u31(this, t73Var), this.f33041a);
    }

    /* renamed from: c */
    public final boolean m5899c() {
        return this.f33044d;
    }

    /* renamed from: e */
    public final /* synthetic */ void m5897e() {
        this.f33044d = false;
    }

    /* renamed from: b */
    public static /* synthetic */ void m5900b(final w31 w31Var, List list, final t73 t73Var) {
        if (list != null && !list.isEmpty()) {
            h83 m4814a = y73.m4814a(null);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final h83 h83Var = (h83) it.next();
                m4814a = y73.m4806i(y73.m4808g(m4814a, Throwable.class, new e73(t73Var) { // from class: r4.r31

                    /* renamed from: a */
                    public final t73 f30432a;

                    {
                        this.f30432a = t73Var;
                    }

                    @Override // p168r4.e73
                    /* renamed from: a */
                    public final h83 mo1029a(Object obj) {
                        this.f30432a.mo4627a((Throwable) obj);
                        return y73.m4814a(null);
                    }
                }, w31Var.f33041a), new e73(w31Var, t73Var, h83Var) { // from class: r4.s31

                    /* renamed from: a */
                    public final w31 f31236a;

                    /* renamed from: b */
                    public final t73 f31237b;

                    /* renamed from: c */
                    public final h83 f31238c;

                    {
                        this.f31236a = w31Var;
                        this.f31237b = t73Var;
                        this.f31238c = h83Var;
                    }

                    @Override // p168r4.e73
                    /* renamed from: a */
                    public final h83 mo1029a(Object obj) {
                        return this.f31236a.m5896f(this.f31237b, this.f31238c, (i31) obj);
                    }
                }, w31Var.f33041a);
            }
            y73.m4799p(m4814a, new v31(w31Var, t73Var), w31Var.f33041a);
            return;
        }
        w31Var.f33041a.execute(new Runnable(t73Var) { // from class: r4.q31

            /* renamed from: a */
            public final t73 f29958a;

            {
                this.f29958a = t73Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f29958a.mo4627a(new sv1(3));
            }
        });
    }

    /* renamed from: f */
    public final /* synthetic */ h83 m5896f(t73 t73Var, h83 h83Var, i31 i31Var) {
        if (i31Var != null) {
            t73Var.mo4626b(i31Var);
        }
        return y73.m4807h(h83Var, r10.f30404b.m6673e().longValue(), TimeUnit.MILLISECONDS, this.f33042b);
    }
}
