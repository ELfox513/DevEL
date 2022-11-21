package p103k2;

import p171r7.InterfaceC6549a;
/* renamed from: k2.a */
/* loaded from: classes.dex */
public final class C4437a<T> implements InterfaceC6549a<T> {

    /* renamed from: c */
    public static final Object f18455c = new Object();

    /* renamed from: a */
    public volatile InterfaceC6549a<T> f18456a;

    /* renamed from: b */
    public volatile Object f18457b = f18455c;

    /* renamed from: b */
    public static Object m16484b(Object obj, Object obj2) {
        boolean z;
        if (obj != f18455c) {
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
        T t = (T) this.f18457b;
        Object obj = f18455c;
        if (t == obj) {
            synchronized (this) {
                t = this.f18457b;
                if (t == obj) {
                    t = this.f18456a.get();
                    this.f18457b = m16484b(this.f18457b, t);
                    this.f18456a = null;
                }
            }
        }
        return t;
    }

    public C4437a(InterfaceC6549a<T> interfaceC6549a) {
        this.f18456a = interfaceC6549a;
    }

    /* renamed from: a */
    public static <P extends InterfaceC6549a<T>, T> InterfaceC6549a<T> m16485a(P p) {
        C4440d.m16481b(p);
        if (p instanceof C4437a) {
            return p;
        }
        return new C4437a(p);
    }
}
