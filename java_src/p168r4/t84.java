package p168r4;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: r4.t84 */
/* loaded from: classes2.dex */
public final class t84 {

    /* renamed from: a */
    public final AtomicInteger f31735a;

    /* renamed from: b */
    public final Set<q84<?>> f31736b;

    /* renamed from: c */
    public final PriorityBlockingQueue<q84<?>> f31737c;

    /* renamed from: d */
    public final PriorityBlockingQueue<q84<?>> f31738d;

    /* renamed from: e */
    public final z74 f31739e;

    /* renamed from: f */
    public final i84 f31740f;

    /* renamed from: g */
    public final j84[] f31741g;

    /* renamed from: h */
    public b84 f31742h;

    /* renamed from: i */
    public final List<s84> f31743i;

    /* renamed from: j */
    public final List<r84> f31744j;

    /* renamed from: k */
    public final g84 f31745k;

    public t84(z74 z74Var, i84 i84Var, int i) {
        g84 g84Var = new g84(new Handler(Looper.getMainLooper()));
        this.f31735a = new AtomicInteger();
        this.f31736b = new HashSet();
        this.f31737c = new PriorityBlockingQueue<>();
        this.f31738d = new PriorityBlockingQueue<>();
        this.f31743i = new ArrayList();
        this.f31744j = new ArrayList();
        this.f31739e = z74Var;
        this.f31740f = i84Var;
        this.f31741g = new j84[4];
        this.f31745k = g84Var;
    }

    /* renamed from: a */
    public final void m6900a() {
        b84 b84Var = this.f31742h;
        if (b84Var != null) {
            b84Var.m12843b();
        }
        j84[] j84VarArr = this.f31741g;
        for (int i = 0; i < 4; i++) {
            j84 j84Var = j84VarArr[i];
            if (j84Var != null) {
                j84Var.m10381a();
            }
        }
        b84 b84Var2 = new b84(this.f31737c, this.f31738d, this.f31739e, this.f31745k, null);
        this.f31742h = b84Var2;
        b84Var2.start();
        for (int i2 = 0; i2 < 4; i2++) {
            j84 j84Var2 = new j84(this.f31738d, this.f31740f, this.f31739e, this.f31745k, null);
            this.f31741g[i2] = j84Var2;
            j84Var2.start();
        }
    }

    /* renamed from: c */
    public final <T> void m6898c(q84<T> q84Var) {
        synchronized (this.f31736b) {
            this.f31736b.remove(q84Var);
        }
        synchronized (this.f31743i) {
            for (s84 s84Var : this.f31743i) {
                s84Var.zza();
            }
        }
        m6897d(q84Var, 5);
    }

    /* renamed from: d */
    public final void m6897d(q84<?> q84Var, int i) {
        synchronized (this.f31744j) {
            for (r84 r84Var : this.f31744j) {
                r84Var.zza();
            }
        }
    }

    /* renamed from: b */
    public final <T> q84<T> m6899b(q84<T> q84Var) {
        q84Var.m7935n(this);
        synchronized (this.f31736b) {
            this.f31736b.add(q84Var);
        }
        q84Var.m7934p(this.f31735a.incrementAndGet());
        q84Var.m7938h("add-to-queue");
        m6897d(q84Var, 0);
        this.f31737c.add(q84Var);
        return q84Var;
    }
}
