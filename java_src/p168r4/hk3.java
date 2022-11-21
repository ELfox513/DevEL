package p168r4;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: r4.hk3 */
/* loaded from: classes2.dex */
public final class hk3 extends WeakReference<Throwable> {

    /* renamed from: a */
    public final int f24659a;

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == hk3.class) {
            if (this == obj) {
                return true;
            }
            hk3 hk3Var = (hk3) obj;
            if (this.f24659a == hk3Var.f24659a && get() == hk3Var.get()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f24659a;
    }

    public hk3(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f24659a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }
}
