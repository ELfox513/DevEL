package p144o7;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p144o7.C5102a0;
/* renamed from: o7.m0 */
/* loaded from: classes2.dex */
public final class C5186m0<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    public static final C5186m0 f19512b;

    /* renamed from: a */
    public boolean f19513a;

    public C5186m0() {
        this.f19513a = true;
    }

    /* renamed from: f */
    public static <K, V> C5186m0<K, V> m14192f() {
        return f19512b;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <K, V> boolean m14189j(java.util.Map<K, V> r4, java.util.Map<K, V> r5) {
        /*
            r0 = 1
            if (r4 != r5) goto L4
            return r0
        L4:
            int r1 = r4.size()
            int r2 = r5.size()
            r3 = 0
            if (r1 == r2) goto L10
            return r3
        L10:
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L18:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L42
            java.lang.Object r1 = r4.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            boolean r2 = r5.containsKey(r2)
            if (r2 != 0) goto L2f
            return r3
        L2f:
            java.lang.Object r2 = r1.getValue()
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r1 = r5.get(r1)
            boolean r1 = m14190i(r2, r1)
            if (r1 != 0) goto L18
            return r3
        L42:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p144o7.C5186m0.m14189j(java.util.Map, java.util.Map):boolean");
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        return (obj instanceof Map) && m14189j(this, (Map) obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return m14195a(this);
    }

    /* renamed from: l */
    public boolean m14188l() {
        return this.f19513a;
    }

    /* renamed from: n */
    public void m14187n() {
        this.f19513a = false;
    }

    /* renamed from: p */
    public C5186m0<K, V> m14185p() {
        return isEmpty() ? new C5186m0<>() : new C5186m0<>(this);
    }

    static {
        C5186m0 c5186m0 = new C5186m0();
        f19512b = c5186m0;
        c5186m0.m14187n();
    }

    /* renamed from: b */
    public static int m14194b(Object obj) {
        if (obj instanceof byte[]) {
            return C5102a0.m14656d((byte[]) obj);
        }
        if (!(obj instanceof C5102a0.InterfaceC5105c)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: i */
    public static boolean m14190i(Object obj, Object obj2) {
        if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
            return Arrays.equals((byte[]) obj, (byte[]) obj2);
        }
        return obj.equals(obj2);
    }

    public C5186m0(Map<K, V> map) {
        super(map);
        this.f19513a = true;
    }

    /* renamed from: a */
    public static <K, V> int m14195a(Map<K, V> map) {
        int i = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            i += m14194b(entry.getValue()) ^ m14194b(entry.getKey());
        }
        return i;
    }

    /* renamed from: c */
    public static void m14193c(Map<?, ?> map) {
        for (Object obj : map.keySet()) {
            C5102a0.m14659a(obj);
            C5102a0.m14659a(map.get(obj));
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        m14191h();
        super.clear();
    }

    /* renamed from: h */
    public final void m14191h() {
        if (m14188l()) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: o */
    public void m14186o(C5186m0<K, V> c5186m0) {
        m14191h();
        if (!c5186m0.isEmpty()) {
            putAll(c5186m0);
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        m14191h();
        C5102a0.m14659a(k);
        C5102a0.m14659a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m14191h();
        m14193c(map);
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m14191h();
        return (V) super.remove(obj);
    }
}
