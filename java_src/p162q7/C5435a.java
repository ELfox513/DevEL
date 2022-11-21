package p162q7;

import p171r7.InterfaceC6549a;
/* renamed from: q7.a */
/* loaded from: classes2.dex */
public final class C5435a<T> implements InterfaceC6549a<T> {

    /* renamed from: c */
    public static final Object f20127c = new Object();

    /* renamed from: a */
    public volatile InterfaceC6549a<T> f20128a;

    /* renamed from: b */
    public volatile Object f20129b = f20127c;

    /* renamed from: b */
    public static Object m13304b(Object obj, Object obj2) {
        boolean z;
        if (obj != f20127c) {
            z = true;
        } else {
            z = false;
        }
        if (z && obj != obj2) {
            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
        }
        return obj2;
    }

    @Override // p171r7.InterfaceC6549a
    public T get() {
        T t = (T) this.f20129b;
        Object obj = f20127c;
        if (t == obj) {
            synchronized (this) {
                t = this.f20129b;
                if (t == obj) {
                    t = this.f20128a.get();
                    this.f20129b = m13304b(this.f20129b, t);
                    this.f20128a = null;
                }
            }
        }
        return t;
    }

    public C5435a(InterfaceC6549a<T> interfaceC6549a) {
        this.f20128a = interfaceC6549a;
    }

    /* renamed from: a */
    public static <P extends InterfaceC6549a<T>, T> InterfaceC6549a<T> m13305a(P p) {
        C5436b.m13302b(p);
        if (p instanceof C5435a) {
            return p;
        }
        return new C5435a(p);
    }
}
