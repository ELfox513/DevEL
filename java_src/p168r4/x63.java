package p168r4;

import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: r4.x63 */
/* loaded from: classes2.dex */
public abstract class x63<InputT, OutputT> extends c73<OutputT> {

    /* renamed from: z */
    public static final Logger f33489z = Logger.getLogger(x63.class.getName());

    /* renamed from: w */
    public j33<? extends h83<? extends InputT>> f33490w;

    /* renamed from: x */
    public final boolean f33491x;

    /* renamed from: y */
    public final boolean f33492y;

    /* renamed from: M */
    public abstract void mo5471M();

    /* renamed from: N */
    public void mo5470N(int i) {
        this.f33490w = null;
    }

    /* renamed from: W */
    public abstract void mo5461W(int i, InputT inputt);

    /* renamed from: P */
    public static void m5468P(Throwable th) {
        String str;
        if (true != (th instanceof Error)) {
            str = "Got more than one input Future failure. Logging failures after the first";
        } else {
            str = "Input Future failed with Error";
        }
        f33489z.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFuture", "log", str, th);
    }

    /* renamed from: R */
    public static boolean m5466R(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* renamed from: T */
    public final void m5464T() {
        j33<? extends h83<? extends InputT>> j33Var;
        j33<? extends h83<? extends InputT>> j33Var2 = this.f33490w;
        j33Var2.getClass();
        if (j33Var2.isEmpty()) {
            mo5471M();
        } else if (this.f33491x) {
            r53<? extends h83<? extends InputT>> it = this.f33490w.iterator();
            int i = 0;
            while (it.hasNext()) {
                h83<? extends InputT> next = it.next();
                next.mo6087c(new v63(this, next, i), l73.INSTANCE);
                i++;
            }
        } else {
            if (this.f33492y) {
                j33Var = this.f33490w;
            } else {
                j33Var = null;
            }
            w63 w63Var = new w63(this, j33Var);
            r53<? extends h83<? extends InputT>> it2 = this.f33490w.iterator();
            while (it2.hasNext()) {
                it2.next().mo6087c(w63Var, l73.INSTANCE);
            }
        }
    }

    @Override // p168r4.p63
    /* renamed from: i */
    public final String mo5448i() {
        j33<? extends h83<? extends InputT>> j33Var = this.f33490w;
        if (j33Var != null) {
            return "futures=".concat(j33Var.toString());
        }
        return super.mo5448i();
    }

    @Override // p168r4.p63
    /* renamed from: j */
    public final void mo5447j() {
        j33<? extends h83<? extends InputT>> j33Var = this.f33490w;
        boolean z = true;
        mo5470N(1);
        boolean isCancelled = isCancelled();
        if (j33Var == null) {
            z = false;
        }
        if (z & isCancelled) {
            boolean m8459t = m8459t();
            r53<? extends h83<? extends InputT>> it = j33Var.iterator();
            while (it.hasNext()) {
                it.next().cancel(m8459t);
            }
        }
    }

    public x63(j33<? extends h83<? extends InputT>> j33Var, boolean z, boolean z2) {
        super(j33Var.size());
        this.f33490w = j33Var;
        this.f33491x = z;
        this.f33492y = z2;
    }

    /* renamed from: V */
    public static /* synthetic */ void m5462V(x63 x63Var, j33 j33Var) {
        boolean z;
        int m12515J = x63Var.m12515J();
        int i = 0;
        if (m12515J >= 0) {
            z = true;
        } else {
            z = false;
        }
        z03.m4495b(z, "Less than 0 remaining futures");
        if (m12515J == 0) {
            if (j33Var != null) {
                r53 it = j33Var.iterator();
                while (it.hasNext()) {
                    Future<? extends InputT> future = (Future) it.next();
                    if (!future.isCancelled()) {
                        x63Var.m5467Q(i, future);
                    }
                    i++;
                }
            }
            x63Var.m12514K();
            x63Var.mo5471M();
            x63Var.mo5470N(2);
        }
    }

    @Override // p168r4.c73
    /* renamed from: L */
    public final void mo5472L(Set<Throwable> set) {
        set.getClass();
        if (!isCancelled()) {
            Throwable mo8474a = mo8474a();
            mo8474a.getClass();
            m5466R(set, mo8474a);
        }
    }

    /* renamed from: O */
    public final void m5469O(Throwable th) {
        th.getClass();
        if (this.f33491x && !mo8449v(th) && m5466R(m12516I(), th)) {
            m5468P(th);
        } else if (th instanceof Error) {
            m5468P(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Q */
    public final void m5467Q(int i, Future<? extends InputT> future) {
        try {
            mo5461W(i, y73.m4798q(future));
        } catch (ExecutionException e) {
            m5469O(e.getCause());
        } catch (Throwable th) {
            m5469O(th);
        }
    }
}
