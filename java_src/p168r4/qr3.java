package p168r4;

import java.util.Collections;
import java.util.Map;
/* renamed from: r4.qr3 */
/* loaded from: classes2.dex */
public abstract class qr3<K, V, V2> implements vr3<Map<K, V2>> {

    /* renamed from: a */
    public final Map<K, is3<V>> f30305a;

    public qr3(Map<K, is3<V>> map) {
        this.f30305a = Collections.unmodifiableMap(map);
    }

    /* renamed from: b */
    public final Map<K, is3<V>> m7683b() {
        return this.f30305a;
    }
}
