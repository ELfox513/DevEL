package p168r4;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.ig2 */
/* loaded from: classes2.dex */
public final class ig2<T> {

    /* renamed from: a */
    public final Set<eg2<? extends dg2<T>>> f25088a;

    /* renamed from: b */
    public final Executor f25089b;

    public ig2(Executor executor, Set<eg2<? extends dg2<T>>> set) {
        this.f25089b = executor;
        this.f25088a = set;
    }

    /* renamed from: a */
    public final h83<T> m10662a(final T t) {
        final ArrayList arrayList = new ArrayList(this.f25088a.size());
        for (final eg2<? extends dg2<T>> eg2Var : this.f25088a) {
            h83<? extends dg2<T>> zza = eg2Var.zza();
            if (i10.f24923a.m6673e().booleanValue()) {
                final long mo24762b = C7601t.m932k().mo24762b();
                zza.mo6087c(new Runnable(eg2Var, mo24762b) { // from class: r4.fg2

                    /* renamed from: a */
                    public final eg2 f23491a;

                    /* renamed from: b */
                    public final long f23492b;

                    {
                        this.f23491a = eg2Var;
                        this.f23492b = mo24762b;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        eg2 eg2Var2 = this.f23491a;
                        long j = this.f23492b;
                        String canonicalName = eg2Var2.getClass().getCanonicalName();
                        long mo24762b2 = C7601t.m932k().mo24762b();
                        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
                        sb.append("Signal runtime : ");
                        sb.append(canonicalName);
                        sb.append(" = ");
                        sb.append(mo24762b2 - j);
                        C0543w1.m26251k(sb.toString());
                    }
                }, qm0.f30195f);
            }
            arrayList.add(zza);
        }
        return y73.m4800o(arrayList).m5812a(new Callable(arrayList, t) { // from class: r4.hg2

            /* renamed from: a */
            public final List f24626a;

            /* renamed from: b */
            public final Object f24627b;

            {
                this.f24626a = arrayList;
                this.f24627b = t;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<h83> list = this.f24626a;
                Object obj = this.f24627b;
                for (h83 h83Var : list) {
                    dg2 dg2Var = (dg2) h83Var.get();
                    if (dg2Var != null) {
                        dg2Var.mo4299d(obj);
                    }
                }
                return obj;
            }
        }, this.f25089b);
    }
}
