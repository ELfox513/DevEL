package p168r4;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.g2 */
/* loaded from: classes2.dex */
public final class C5785g2<T> {

    /* renamed from: a */
    public final Map<String, AtomicReference<T>> f23834a = new HashMap();

    /* renamed from: a */
    public final AtomicReference<T> m11311a(String str) {
        synchronized (this) {
            if (!this.f23834a.containsKey(str)) {
                this.f23834a.put(str, new AtomicReference<>());
            }
        }
        return this.f23834a.get(str);
    }
}
