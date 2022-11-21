package p168r4;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: r4.zr3 */
/* loaded from: classes2.dex */
public final class zr3<K, V> extends qr3<K, V, V> {

    /* renamed from: b */
    public static final is3<Map<Object, Object>> f34715b = wr3.m5603b(Collections.emptyMap());

    public /* synthetic */ zr3(Map map, xr3 xr3Var) {
        super(map);
    }

    /* renamed from: c */
    public static <K, V> yr3<K, V> m4089c(int i) {
        return new yr3<>(i, null);
    }

    @Override // p168r4.is3
    /* renamed from: d */
    public final Map<K, V> mo4079a() {
        LinkedHashMap m7346c = rr3.m7346c(m7683b().size());
        for (Map.Entry<K, is3<V>> entry : m7683b().entrySet()) {
            m7346c.put(entry.getKey(), entry.getValue().mo4079a());
        }
        return Collections.unmodifiableMap(m7346c);
    }
}
