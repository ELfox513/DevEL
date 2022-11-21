package p237z4;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: z4.l1 */
/* loaded from: classes2.dex */
public final class C7669l1<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    public static final C7669l1 f37784b;

    /* renamed from: a */
    public boolean f37785a;

    public C7669l1() {
        this.f37785a = true;
    }

    /* renamed from: a */
    public final boolean m671a() {
        return this.f37785a;
    }

    /* renamed from: c */
    public final void m669c() {
        this.f37785a = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* renamed from: f */
    public final C7669l1<K, V> m668f() {
        return isEmpty() ? new C7669l1<>() : new C7669l1<>(this);
    }

    static {
        C7669l1 c7669l1 = new C7669l1();
        f37784b = c7669l1;
        c7669l1.f37785a = false;
    }

    /* renamed from: i */
    public static int m666i(Object obj) {
        if (obj instanceof byte[]) {
            return C7687o0.m635b((byte[]) obj);
        }
        if (!(obj instanceof InterfaceC7692p0)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005c A[RETURN] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof java.util.Map
            r1 = 0
            if (r0 == 0) goto L5d
            java.util.Map r7 = (java.util.Map) r7
            r0 = 1
            if (r6 == r7) goto L59
            int r2 = r6.size()
            int r3 = r7.size()
            if (r2 == r3) goto L16
        L14:
            r7 = 0
            goto L5a
        L16:
            java.util.Set r2 = r6.entrySet()
            java.util.Iterator r2 = r2.iterator()
        L1e:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L59
            java.lang.Object r3 = r2.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r3.getKey()
            boolean r4 = r7.containsKey(r4)
            if (r4 != 0) goto L35
            goto L14
        L35:
            java.lang.Object r4 = r3.getValue()
            java.lang.Object r3 = r3.getKey()
            java.lang.Object r3 = r7.get(r3)
            boolean r5 = r4 instanceof byte[]
            if (r5 == 0) goto L52
            boolean r5 = r3 instanceof byte[]
            if (r5 == 0) goto L52
            byte[] r4 = (byte[]) r4
            byte[] r3 = (byte[]) r3
            boolean r3 = java.util.Arrays.equals(r4, r3)
            goto L56
        L52:
            boolean r3 = r4.equals(r3)
        L56:
            if (r3 != 0) goto L1e
            goto L14
        L59:
            r7 = 1
        L5a:
            if (r7 == 0) goto L5d
            return r0
        L5d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p237z4.C7669l1.equals(java.lang.Object):boolean");
    }

    /* renamed from: h */
    public final void m667h() {
        if (this.f37785a) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    public C7669l1(Map<K, V> map) {
        super(map);
        this.f37785a = true;
    }

    /* renamed from: b */
    public final void m670b(C7669l1<K, V> c7669l1) {
        m667h();
        if (!c7669l1.isEmpty()) {
            putAll(c7669l1);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m667h();
        super.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += m666i(entry.getValue()) ^ m666i(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m667h();
        C7687o0.m636a(k);
        C7687o0.m636a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m667h();
        for (K k : map.keySet()) {
            C7687o0.m636a(k);
            C7687o0.m636a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m667h();
        return (V) super.remove(obj);
    }
}
