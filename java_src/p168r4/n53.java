package p168r4;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
/* renamed from: r4.n53 */
/* loaded from: classes2.dex */
public final class n53 {
    /* renamed from: b */
    public static boolean m9157b(Set<?> set, Iterator<?> it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }

    /* renamed from: a */
    public static int m9158a(Set<?> set) {
        int i;
        int i2 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i2 += i;
        }
        return i2;
    }

    /* renamed from: c */
    public static boolean m9156c(Set<?> set, Collection<?> collection) {
        collection.getClass();
        if (collection instanceof y43) {
            collection = ((y43) collection).zza();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            Iterator<?> it = set.iterator();
            boolean z = false;
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }
        return m9157b(set, collection.iterator());
    }
}
