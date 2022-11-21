package p168r4;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: r4.ik3 */
/* loaded from: classes2.dex */
public final class ik3 {

    /* renamed from: a */
    public final ConcurrentHashMap<hk3, List<Throwable>> f25162a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    public final ReferenceQueue<Throwable> f25163b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m10602a(Throwable th, boolean z) {
        ReferenceQueue<Throwable> referenceQueue = this.f25163b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f25162a.remove(poll);
            referenceQueue = this.f25163b;
        }
        List<Throwable> list = this.f25162a.get(new hk3(th, null));
        if (!z) {
            return list;
        }
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f25162a.putIfAbsent(new hk3(th, this.f25163b), vector);
        if (putIfAbsent == null) {
            return vector;
        }
        return putIfAbsent;
    }
}
