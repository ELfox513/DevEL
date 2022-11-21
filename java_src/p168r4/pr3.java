package p168r4;

import java.util.LinkedHashMap;
/* renamed from: r4.pr3 */
/* loaded from: classes2.dex */
public class pr3<K, V, V2> {

    /* renamed from: a */
    public final LinkedHashMap<K, is3<V>> f29564a;

    public pr3(int i) {
        this.f29564a = rr3.m7346c(i);
    }

    /* renamed from: a */
    public final pr3<K, V, V2> m8217a(K k, is3<V> is3Var) {
        LinkedHashMap<K, is3<V>> linkedHashMap = this.f29564a;
        ds3.m11981a(k, "key");
        ds3.m11981a(is3Var, "provider");
        linkedHashMap.put(k, is3Var);
        return this;
    }
}
