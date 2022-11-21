package p168r4;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import p016b3.C0543w1;
import p235z2.C7601t;
/* renamed from: r4.yc1 */
/* loaded from: classes2.dex */
public class yc1<ListenerT> {

    /* renamed from: a */
    public final Map<ListenerT, Executor> f34024a = new HashMap();

    /* renamed from: H0 */
    public final synchronized void m4760H0(ve1<ListenerT> ve1Var) {
        m4759K0(ve1Var.f32699a, ve1Var.f32700b);
    }

    /* renamed from: K0 */
    public final synchronized void m4759K0(ListenerT listenert, Executor executor) {
        this.f34024a.put(listenert, executor);
    }

    /* renamed from: Q0 */
    public final synchronized void m4758Q0(Set<ve1<ListenerT>> set) {
        for (ve1<ListenerT> ve1Var : set) {
            m4760H0(ve1Var);
        }
    }

    /* renamed from: S0 */
    public final synchronized void m4757S0(final xc1<ListenerT> xc1Var) {
        for (Map.Entry<ListenerT, Executor> entry : this.f34024a.entrySet()) {
            final ListenerT key = entry.getKey();
            entry.getValue().execute(new Runnable(xc1Var, key) { // from class: r4.wc1

                /* renamed from: a */
                public final xc1 f33167a;

                /* renamed from: b */
                public final Object f33168b;

                {
                    this.f33167a = xc1Var;
                    this.f33168b = key;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        this.f33167a.mo4278a(this.f33168b);
                    } catch (Throwable th) {
                        C7601t.m935h().m9055l(th, "EventEmitter.notify");
                        C0543w1.m26250l("Event emitter exception.", th);
                    }
                }
            });
        }
    }

    public yc1(Set<ve1<ListenerT>> set) {
        m4758Q0(set);
    }
}
