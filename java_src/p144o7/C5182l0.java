package p144o7;

import p144o7.C5230u1;
/* renamed from: o7.l0 */
/* loaded from: classes2.dex */
public class C5182l0<K, V> {

    /* renamed from: a */
    public final C5183a<K, V> f19497a;

    /* renamed from: b */
    public final K f19498b;

    /* renamed from: c */
    public final V f19499c;

    /* renamed from: d */
    public static <K, V> C5182l0<K, V> m14211d(C5230u1.EnumC5232b enumC5232b, K k, C5230u1.EnumC5232b enumC5232b2, V v) {
        return new C5182l0<>(enumC5232b, k, enumC5232b2, v);
    }

    /* renamed from: c */
    public C5183a<K, V> m14212c() {
        return this.f19497a;
    }

    /* renamed from: o7.l0$a */
    /* loaded from: classes2.dex */
    public static class C5183a<K, V> {

        /* renamed from: a */
        public final C5230u1.EnumC5232b f19500a;

        /* renamed from: b */
        public final K f19501b;

        /* renamed from: c */
        public final C5230u1.EnumC5232b f19502c;

        /* renamed from: d */
        public final V f19503d;

        public C5183a(C5230u1.EnumC5232b enumC5232b, K k, C5230u1.EnumC5232b enumC5232b2, V v) {
            this.f19500a = enumC5232b;
            this.f19501b = k;
            this.f19502c = enumC5232b2;
            this.f19503d = v;
        }
    }

    /* renamed from: b */
    public static <K, V> int m14213b(C5183a<K, V> c5183a, K k, V v) {
        return C5226u.m13972d(c5183a.f19500a, 1, k) + C5226u.m13972d(c5183a.f19502c, 2, v);
    }

    /* renamed from: e */
    public static <K, V> void m14210e(AbstractC5163k abstractC5163k, C5183a<K, V> c5183a, K k, V v) {
        C5226u.m13950z(abstractC5163k, c5183a.f19500a, 1, k);
        C5226u.m13950z(abstractC5163k, c5183a.f19502c, 2, v);
    }

    public C5182l0(C5230u1.EnumC5232b enumC5232b, K k, C5230u1.EnumC5232b enumC5232b2, V v) {
        this.f19497a = new C5183a<>(enumC5232b, k, enumC5232b2, v);
        this.f19498b = k;
        this.f19499c = v;
    }

    /* renamed from: a */
    public int m14214a(int i, K k, V v) {
        return AbstractC5163k.m14328U(i) + AbstractC5163k.m14356C(m14213b(this.f19497a, k, v));
    }
}
