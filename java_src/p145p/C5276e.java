package p145p;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
/* renamed from: p.e */
/* loaded from: classes.dex */
public class C5276e<K, V> {

    /* renamed from: a */
    public final LinkedHashMap<K, V> f19793a;

    /* renamed from: b */
    public int f19794b;

    /* renamed from: c */
    public int f19795c;

    /* renamed from: d */
    public int f19796d;

    /* renamed from: e */
    public int f19797e;

    /* renamed from: f */
    public int f19798f;

    /* renamed from: g */
    public int f19799g;

    /* renamed from: h */
    public int f19800h;

    /* renamed from: a */
    public V mo13697a(K k) {
        return null;
    }

    /* renamed from: b */
    public void m13696b(boolean z, K k, V v, V v2) {
    }

    /* renamed from: g */
    public int m13691g(K k, V v) {
        return 1;
    }

    /* renamed from: h */
    public final synchronized Map<K, V> m13690h() {
        return new LinkedHashMap(this.f19793a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m13689i(int r5) {
        /*
            r4 = this;
        L0:
            monitor-enter(r4)
            int r0 = r4.f19794b     // Catch: java.lang.Throwable -> L71
            if (r0 < 0) goto L52
            java.util.LinkedHashMap<K, V> r0 = r4.f19793a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L11
            int r0 = r4.f19794b     // Catch: java.lang.Throwable -> L71
            if (r0 != 0) goto L52
        L11:
            int r0 = r4.f19794b     // Catch: java.lang.Throwable -> L71
            if (r0 <= r5) goto L50
            java.util.LinkedHashMap<K, V> r0 = r4.f19793a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L1e
            goto L50
        L1e:
            java.util.LinkedHashMap<K, V> r0 = r4.f19793a     // Catch: java.lang.Throwable -> L71
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L71
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L71
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L71
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L71
            java.util.LinkedHashMap<K, V> r2 = r4.f19793a     // Catch: java.lang.Throwable -> L71
            r2.remove(r1)     // Catch: java.lang.Throwable -> L71
            int r2 = r4.f19794b     // Catch: java.lang.Throwable -> L71
            int r3 = r4.m13692f(r1, r0)     // Catch: java.lang.Throwable -> L71
            int r2 = r2 - r3
            r4.f19794b = r2     // Catch: java.lang.Throwable -> L71
            int r2 = r4.f19798f     // Catch: java.lang.Throwable -> L71
            r3 = 1
            int r2 = r2 + r3
            r4.f19798f = r2     // Catch: java.lang.Throwable -> L71
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            r2 = 0
            r4.m13696b(r3, r1, r0, r2)
            goto L0
        L50:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            return
        L52:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
            r0.<init>()     // Catch: java.lang.Throwable -> L71
            java.lang.Class r1 = r4.getClass()     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L71
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L71
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L71
            throw r5     // Catch: java.lang.Throwable -> L71
        L71:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L71
            goto L75
        L74:
            throw r5
        L75:
            goto L74
        */
        throw new UnsupportedOperationException("Method not decompiled: p145p.C5276e.m13689i(int):void");
    }

    public final synchronized String toString() {
        int i;
        int i2 = this.f19799g;
        int i3 = this.f19800h + i2;
        if (i3 != 0) {
            i = (i2 * 100) / i3;
        } else {
            i = 0;
        }
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f19795c), Integer.valueOf(this.f19799g), Integer.valueOf(this.f19800h), Integer.valueOf(i));
    }

    /* renamed from: c */
    public final V m13695c(K k) {
        V put;
        if (k != null) {
            synchronized (this) {
                V v = this.f19793a.get(k);
                if (v != null) {
                    this.f19799g++;
                    return v;
                }
                this.f19800h++;
                V mo13697a = mo13697a(k);
                if (mo13697a == null) {
                    return null;
                }
                synchronized (this) {
                    this.f19797e++;
                    put = this.f19793a.put(k, mo13697a);
                    if (put != null) {
                        this.f19793a.put(k, put);
                    } else {
                        this.f19794b += m13692f(k, mo13697a);
                    }
                }
                if (put != null) {
                    m13696b(false, k, mo13697a, put);
                    return put;
                }
                m13689i(this.f19795c);
                return mo13697a;
            }
        }
        throw new NullPointerException("key == null");
    }

    /* renamed from: d */
    public final V m13694d(K k, V v) {
        V put;
        if (k != null && v != null) {
            synchronized (this) {
                this.f19796d++;
                this.f19794b += m13692f(k, v);
                put = this.f19793a.put(k, v);
                if (put != null) {
                    this.f19794b -= m13692f(k, put);
                }
            }
            if (put != null) {
                m13696b(false, k, put, v);
            }
            m13689i(this.f19795c);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    /* renamed from: e */
    public final V m13693e(K k) {
        V remove;
        if (k != null) {
            synchronized (this) {
                remove = this.f19793a.remove(k);
                if (remove != null) {
                    this.f19794b -= m13692f(k, remove);
                }
            }
            if (remove != null) {
                m13696b(false, k, remove, null);
            }
            return remove;
        }
        throw new NullPointerException("key == null");
    }

    public C5276e(int i) {
        if (i > 0) {
            this.f19795c = i;
            this.f19793a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: f */
    public final int m13692f(K k, V v) {
        int m13691g = m13691g(k, v);
        if (m13691g >= 0) {
            return m13691g;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }
}
