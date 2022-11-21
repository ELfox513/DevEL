package p168r4;

import java.util.Deque;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
/* renamed from: r4.aq2 */
/* loaded from: classes2.dex */
public final class aq2<T> {

    /* renamed from: a */
    public final Deque<h83<T>> f20581a = new LinkedBlockingDeque();

    /* renamed from: b */
    public final Callable<T> f20582b;

    /* renamed from: c */
    public final i83 f20583c;

    public aq2(Callable<T> callable, i83 i83Var) {
        this.f20582b = callable;
        this.f20583c = i83Var;
    }

    /* renamed from: a */
    public final synchronized void m12971a(int i) {
        int size = i - this.f20581a.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f20581a.add(this.f20583c.mo8015c(this.f20582b));
        }
    }

    /* renamed from: b */
    public final synchronized h83<T> m12970b() {
        m12971a(1);
        return this.f20581a.poll();
    }

    /* renamed from: c */
    public final synchronized void m12969c(h83<T> h83Var) {
        this.f20581a.addFirst(h83Var);
    }
}
