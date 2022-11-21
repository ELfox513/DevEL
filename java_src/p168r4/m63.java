package p168r4;

import sun.misc.Unsafe;
/* renamed from: r4.m63 */
/* loaded from: classes2.dex */
public final /* synthetic */ class m63 {
    /* renamed from: a */
    public static /* synthetic */ boolean m9486a(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
