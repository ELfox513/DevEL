package p168r4;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.un3 */
/* loaded from: classes2.dex */
public final class un3<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    public static final un3 f32329b;

    /* renamed from: a */
    public boolean f32330a;

    static {
        un3 un3Var = new un3();
        f32329b = un3Var;
        un3Var.f32330a = false;
    }

    public un3() {
        this.f32330a = true;
    }

    /* renamed from: a */
    public static <K, V> un3<K, V> m6472a() {
        return f32329b;
    }

    /* renamed from: c */
    public final un3<K, V> m6470c() {
        return isEmpty() ? new un3<>() : new un3<>(this);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* renamed from: f */
    public final void m6469f() {
        this.f32330a = false;
    }

    /* renamed from: h */
    public final boolean m6468h() {
        return this.f32330a;
    }

    /* renamed from: j */
    public final void m6466j() {
        if (!this.f32330a) {
            throw new UnsupportedOperationException();
        }
    }

    public un3(Map<K, V> map) {
        super(map);
        this.f32330a = true;
    }

    /* renamed from: i */
    public static int m6467i(Object obj) {
        if (obj instanceof byte[]) {
            return zm3.m4174g((byte[]) obj);
        }
        if (!(obj instanceof rm3)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
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

    /* renamed from: b */
    public final void m6471b(un3<K, V> un3Var) {
        m6466j();
        if (!un3Var.isEmpty()) {
            putAll(un3Var);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m6466j();
        super.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += m6467i(entry.getValue()) ^ m6467i(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m6466j();
        zm3.m4180a(k);
        zm3.m4180a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m6466j();
        for (K k : map.keySet()) {
            zm3.m4180a(k);
            zm3.m4180a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m6466j();
        return (V) super.remove(obj);
    }
}
