package p168r4;

import java.util.Map;
/* renamed from: r4.n43 */
/* loaded from: classes2.dex */
public final class n43 {
    /* renamed from: a */
    public static <V> V m9159a(Map<?, V> map, Object obj) {
        map.getClass();
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }
}
