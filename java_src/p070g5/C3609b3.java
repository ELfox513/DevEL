package p070g5;
/* renamed from: g5.b3 */
/* loaded from: classes2.dex */
public final class C3609b3<V> {

    /* renamed from: h */
    public static final Object f16222h = new Object();

    /* renamed from: a */
    public final String f16223a;

    /* renamed from: b */
    public final InterfaceC3884y2<V> f16224b;

    /* renamed from: c */
    public final V f16225c;

    /* renamed from: d */
    public final V f16226d;

    /* renamed from: e */
    public final Object f16227e = new Object();

    /* renamed from: f */
    public volatile V f16228f = null;

    /* renamed from: g */
    public volatile V f16229g = null;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C3609b3(String str, Object obj, Object obj2, InterfaceC3884y2 interfaceC3884y2, C3597a3 c3597a3) {
        this.f16223a = str;
        this.f16225c = obj;
        this.f16226d = obj2;
        this.f16224b = interfaceC3884y2;
    }

    /* renamed from: b */
    public final String m18549b() {
        return this.f16223a;
    }

    /* renamed from: a */
    public final V m18550a(V v) {
        V v2;
        synchronized (this.f16227e) {
        }
        if (v != null) {
            return v;
        }
        if (C3896z2.f17123a != null) {
            synchronized (f16222h) {
                if (C3605b.m18551a()) {
                    if (this.f16229g == null) {
                        v2 = this.f16225c;
                    } else {
                        v2 = this.f16229g;
                    }
                    return v2;
                }
                try {
                    for (C3609b3 c3609b3 : C3621c3.m18445b()) {
                        if (!C3605b.m18551a()) {
                            V v3 = null;
                            try {
                                InterfaceC3884y2<V> interfaceC3884y2 = c3609b3.f16224b;
                                if (interfaceC3884y2 != null) {
                                    v3 = interfaceC3884y2.zza();
                                }
                            } catch (IllegalStateException unused) {
                            }
                            synchronized (f16222h) {
                                c3609b3.f16229g = v3;
                            }
                        } else {
                            throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                        }
                    }
                } catch (SecurityException unused2) {
                }
                InterfaceC3884y2<V> interfaceC3884y22 = this.f16224b;
                if (interfaceC3884y22 == null) {
                    return this.f16225c;
                }
                try {
                    return interfaceC3884y22.zza();
                } catch (IllegalStateException unused3) {
                    return this.f16225c;
                } catch (SecurityException unused4) {
                    return this.f16225c;
                }
            }
        }
        return this.f16225c;
    }
}
