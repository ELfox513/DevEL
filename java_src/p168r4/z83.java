package p168r4;

import java.util.concurrent.Future;
/* renamed from: r4.z83 */
/* loaded from: classes2.dex */
public final class z83 {
    /* renamed from: a */
    public static <V> V m4404a(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }
}
