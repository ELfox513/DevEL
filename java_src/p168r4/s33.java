package p168r4;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* renamed from: r4.s33 */
/* loaded from: classes2.dex */
public abstract class s33<K, V> implements Map<K, V>, Serializable {

    /* renamed from: a */
    public transient y33<Map.Entry<K, V>> f31240a;

    /* renamed from: b */
    public transient y33<K> f31241b;

    /* renamed from: d */
    public transient j33<V> f31242d;

    /* renamed from: a */
    public static <K, V> s33<K, V> m7225a() {
        return (s33<K, V>) i53.f24973r;
    }

    @Override // java.util.Map
    /* renamed from: c */
    public final y33<Map.Entry<K, V>> entrySet() {
        y33<Map.Entry<K, V>> y33Var = this.f31240a;
        if (y33Var == null) {
            y33<Map.Entry<K, V>> mo7222d = mo7222d();
            this.f31240a = mo7222d;
            return mo7222d;
        }
        return y33Var;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    /* renamed from: d */
    public abstract y33<Map.Entry<K, V>> mo7222d();

    /* renamed from: e */
    public abstract y33<K> mo7221e();

    @Override // java.util.Map
    /* renamed from: f */
    public final j33<V> values() {
        j33<V> j33Var = this.f31242d;
        if (j33Var == null) {
            j33<V> mo7219g = mo7219g();
            this.f31242d = mo7219g;
            return mo7219g;
        }
        return j33Var;
    }

    /* renamed from: g */
    public abstract j33<V> mo7219g();

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return n53.m9158a(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        y33<K> y33Var = this.f31241b;
        if (y33Var == null) {
            y33<K> mo7221e = mo7221e();
            this.f31241b = mo7221e;
            return mo7221e;
        }
        return y33Var;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return entrySet().equals(((Map) obj).entrySet());
    }

    /* renamed from: b */
    public static <K, V> s33<K, V> m7224b(Map<? extends K, ? extends V> map) {
        int i;
        Set<Map.Entry<? extends K, ? extends V>> entrySet = map.entrySet();
        if (entrySet instanceof Collection) {
            i = entrySet.size();
        } else {
            i = 4;
        }
        r33 r33Var = new r33(i);
        r33Var.m7616b(entrySet);
        return r33Var.m7615c();
    }

    public final String toString() {
        int size = size();
        m23.m9513b(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append(SignatureVisitor.INSTANCEOF);
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }
}
