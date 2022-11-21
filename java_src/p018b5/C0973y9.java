package p018b5;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: b5.y9 */
/* loaded from: classes2.dex */
public final class C0973y9<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    public static final C0973y9 f2438b;

    /* renamed from: a */
    public boolean f2439a;

    static {
        C0973y9 c0973y9 = new C0973y9();
        f2438b = c0973y9;
        c0973y9.f2439a = false;
    }

    public C0973y9() {
        this.f2439a = true;
    }

    /* renamed from: a */
    public static <K, V> C0973y9<K, V> m24912a() {
        return f2438b;
    }

    /* renamed from: b */
    public final C0973y9<K, V> m24911b() {
        return isEmpty() ? new C0973y9<>() : new C0973y9<>(this);
    }

    /* renamed from: c */
    public final void m24910c() {
        this.f2439a = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* renamed from: h */
    public final boolean m24908h() {
        return this.f2439a;
    }

    /* renamed from: j */
    public final void m24906j() {
        if (!this.f2439a) {
            throw new UnsupportedOperationException();
        }
    }

    public C0973y9(Map<K, V> map) {
        super(map);
        this.f2439a = true;
    }

    /* renamed from: i */
    public static int m24907i(Object obj) {
        if (obj instanceof byte[]) {
            return C0650f9.m25949b((byte[]) obj);
        }
        return obj.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        boolean equals;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this != map) {
                if (size() == map.size()) {
                    for (Map.Entry<K, V> entry : entrySet()) {
                        if (map.containsKey(entry.getKey())) {
                            V value = entry.getValue();
                            Object obj2 = map.get(entry.getKey());
                            if ((value instanceof byte[]) && (obj2 instanceof byte[])) {
                                equals = Arrays.equals((byte[]) value, (byte[]) obj2);
                                continue;
                            } else {
                                equals = value.equals(obj2);
                                continue;
                            }
                            if (!equals) {
                                return false;
                            }
                        } else {
                            return false;
                        }
                    }
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m24906j();
        super.clear();
    }

    /* renamed from: f */
    public final void m24909f(C0973y9<K, V> c0973y9) {
        m24906j();
        if (!c0973y9.isEmpty()) {
            putAll(c0973y9);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += m24907i(entry.getValue()) ^ m24907i(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m24906j();
        C0650f9.m25946e(k);
        C0650f9.m25946e(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m24906j();
        for (K k : map.keySet()) {
            C0650f9.m25946e(k);
            C0650f9.m25946e(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m24906j();
        return (V) super.remove(obj);
    }
}
