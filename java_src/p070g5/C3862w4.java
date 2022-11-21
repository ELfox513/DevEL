package p070g5;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
import p220x3.C7297q;
/* renamed from: g5.w4 */
/* loaded from: classes2.dex */
public final class C3862w4<V> extends FutureTask<V> implements Comparable<C3862w4<V>> {

    /* renamed from: a */
    public final long f17024a;

    /* renamed from: b */
    public final boolean f17025b;

    /* renamed from: d */
    public final String f17026d;

    /* renamed from: k */
    public final /* synthetic */ C3886y4 f17027k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3862w4(C3886y4 c3886y4, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.f17027k = c3886y4;
        C7297q.m1883j(str);
        atomicLong = C3886y4.f17097l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f17024a = andIncrement;
        this.f17026d = str;
        this.f17025b = z;
        if (andIncrement == Long.MAX_VALUE) {
            c3886y4.f17008a.mo17858F().m18018m().m18042a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        C3862w4 c3862w4 = (C3862w4) obj;
        boolean z = this.f17025b;
        if (z != c3862w4.f17025b) {
            if (!z) {
                return 1;
            }
            return -1;
        }
        long j = this.f17024a;
        long j2 = c3862w4.f17024a;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.f17027k.f17008a.mo17858F().m18016o().m18041b("Two tasks share the same index. index", Long.valueOf(this.f17024a));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        this.f17027k.f17008a.mo17858F().m18018m().m18041b(this.f17026d, th);
        super.setException(th);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3862w4(C3886y4 c3886y4, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.f17027k = c3886y4;
        C7297q.m1883j("Task exception on worker thread");
        atomicLong = C3886y4.f17097l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f17024a = andIncrement;
        this.f17026d = "Task exception on worker thread";
        this.f17025b = z;
        if (andIncrement == Long.MAX_VALUE) {
            c3886y4.f17008a.mo17858F().m18018m().m18042a("Tasks index overflow");
        }
    }
}
