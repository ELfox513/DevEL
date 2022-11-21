package p168r4;

import android.os.Binder;
import java.io.InputStream;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.rw1 */
/* loaded from: classes2.dex */
public final class rw1 {

    /* renamed from: a */
    public final ScheduledExecutorService f30719a;

    /* renamed from: b */
    public final i83 f30720b;

    /* renamed from: c */
    public final lx1 f30721c;

    /* renamed from: d */
    public final or3<az1> f30722d;

    public rw1(ScheduledExecutorService scheduledExecutorService, i83 i83Var, lx1 lx1Var, or3<az1> or3Var) {
        this.f30719a = scheduledExecutorService;
        this.f30720b = i83Var;
        this.f30721c = lx1Var;
        this.f30722d = or3Var;
    }

    /* renamed from: b */
    public final /* synthetic */ h83 m7314b(og0 og0Var, int i, Throwable th) {
        return this.f30722d.m8710a().m12909i7(og0Var, i);
    }

    /* renamed from: a */
    public final h83<InputStream> m7315a(final og0 og0Var) {
        h83 h83Var;
        String str = og0Var.f28981k;
        C7601t.m939d();
        if (C0497k2.m26318f(str)) {
            h83Var = y73.m4812c(new yx1(1));
        } else {
            final lx1 lx1Var = this.f30721c;
            synchronized (lx1Var.f26169b) {
                if (lx1Var.f26170d) {
                    h83Var = lx1Var.f26168a;
                } else {
                    lx1Var.f26170d = true;
                    lx1Var.f26172p = og0Var;
                    lx1Var.f26173q.m1985p();
                    lx1Var.f26168a.mo6087c(new Runnable(lx1Var) { // from class: r4.kx1

                        /* renamed from: a */
                        public final lx1 f26976a;

                        {
                            this.f26976a = lx1Var;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f26976a.m10159a();
                        }
                    }, qm0.f30195f);
                    h83Var = lx1Var.f26168a;
                }
            }
        }
        final int callingUid = Binder.getCallingUid();
        return y73.m4808g((o73) y73.m4807h(o73.m8869E(h83Var), ((Integer) C5592av.m12935c().m8098c(C6225rz.f30882P3)).intValue(), TimeUnit.SECONDS, this.f30719a), Throwable.class, new e73(this, og0Var, callingUid) { // from class: r4.qw1

            /* renamed from: a */
            public final rw1 f30339a;

            /* renamed from: b */
            public final og0 f30340b;

            /* renamed from: c */
            public final int f30341c;

            {
                this.f30339a = this;
                this.f30340b = og0Var;
                this.f30341c = callingUid;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f30339a.m7314b(this.f30340b, this.f30341c, (Throwable) obj);
            }
        }, this.f30720b);
    }
}
