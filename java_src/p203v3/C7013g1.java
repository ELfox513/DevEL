package p203v3;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: v3.g1 */
/* loaded from: classes.dex */
public final /* synthetic */ class C7013g1 {
    /* renamed from: a */
    public static /* synthetic */ boolean m2669a(AtomicReference atomicReference, Object obj, Object obj2) {
        while (!atomicReference.compareAndSet(obj, obj2)) {
            if (atomicReference.get() != obj) {
                return false;
            }
        }
        return true;
    }
}
