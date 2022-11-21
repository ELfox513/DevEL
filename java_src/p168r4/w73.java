package p168r4;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* renamed from: r4.w73 */
/* loaded from: classes2.dex */
public final class w73<V> {

    /* renamed from: a */
    public final boolean f33133a;

    /* renamed from: b */
    public final o33<h83<? extends V>> f33134b;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ w73(boolean z, boolean z2, o33<h83<? extends V>> o33Var) {
        this.f33133a = z;
        this.f33134b = z2;
    }

    /* renamed from: a */
    public final <C> h83<C> m5812a(Callable<C> callable, Executor executor) {
        return new k73(this.f33134b, this.f33133a, executor, callable);
    }
}
