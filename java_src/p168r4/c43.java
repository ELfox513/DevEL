package p168r4;

import java.util.Iterator;
/* renamed from: r4.c43 */
/* loaded from: classes2.dex */
public final class c43 {
    /* renamed from: a */
    public static <T> T m12616a(Iterator<T> it) {
        if (it.hasNext()) {
            T next = it.next();
            it.remove();
            return next;
        }
        return null;
    }

    /* renamed from: b */
    public static void m12615b(Iterator<?> it) {
        it.getClass();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }
}
