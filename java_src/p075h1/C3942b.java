package p075h1;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* renamed from: h1.b */
/* loaded from: classes.dex */
public final /* synthetic */ class C3942b {
    /* renamed from: a */
    public static /* synthetic */ boolean m17695a(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Object obj, Object obj2, Object obj3) {
        while (!atomicReferenceFieldUpdater.compareAndSet(obj, obj2, obj3)) {
            if (atomicReferenceFieldUpdater.get(obj) != obj2) {
                return false;
            }
        }
        return true;
    }
}
