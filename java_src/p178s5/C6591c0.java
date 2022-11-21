package p178s5;

import p161q6.InterfaceC5432a;
import p161q6.InterfaceC5434b;
/* renamed from: s5.c0 */
/* loaded from: classes2.dex */
public class C6591c0<T> implements InterfaceC5434b<T>, InterfaceC5432a<T> {

    /* renamed from: c */
    public static final InterfaceC5432a.InterfaceC5433a<Object> f35149c = new InterfaceC5432a.InterfaceC5433a() { // from class: s5.z
        @Override // p161q6.InterfaceC5432a.InterfaceC5433a
        /* renamed from: a */
        public final void mo3033a(InterfaceC5434b interfaceC5434b) {
            C6591c0.m3868f(interfaceC5434b);
        }
    };

    /* renamed from: d */
    public static final InterfaceC5434b<Object> f35150d = new InterfaceC5434b() { // from class: s5.a0
        @Override // p161q6.InterfaceC5434b
        public final Object get() {
            Object m3867g;
            m3867g = C6591c0.m3867g();
            return m3867g;
        }
    };

    /* renamed from: a */
    public InterfaceC5432a.InterfaceC5433a<T> f35151a;

    /* renamed from: b */
    public volatile InterfaceC5434b<T> f35152b;

    /* renamed from: e */
    public static <T> C6591c0<T> m3869e() {
        return new C6591c0<>(f35149c, f35150d);
    }

    /* renamed from: f */
    public static /* synthetic */ void m3868f(InterfaceC5434b interfaceC5434b) {
    }

    /* renamed from: g */
    public static /* synthetic */ Object m3867g() {
        return null;
    }

    /* renamed from: i */
    public static <T> C6591c0<T> m3865i(InterfaceC5434b<T> interfaceC5434b) {
        return new C6591c0<>(null, interfaceC5434b);
    }

    @Override // p161q6.InterfaceC5434b
    public T get() {
        return this.f35152b.get();
    }

    @Override // p161q6.InterfaceC5432a
    /* renamed from: a */
    public void mo3873a(final InterfaceC5432a.InterfaceC5433a<T> interfaceC5433a) {
        InterfaceC5434b<T> interfaceC5434b;
        InterfaceC5434b<T> interfaceC5434b2 = this.f35152b;
        InterfaceC5434b<Object> interfaceC5434b3 = f35150d;
        if (interfaceC5434b2 != interfaceC5434b3) {
            interfaceC5433a.mo3033a(interfaceC5434b2);
            return;
        }
        InterfaceC5434b<T> interfaceC5434b4 = null;
        synchronized (this) {
            interfaceC5434b = this.f35152b;
            if (interfaceC5434b != interfaceC5434b3) {
                interfaceC5434b4 = interfaceC5434b;
            } else {
                final InterfaceC5432a.InterfaceC5433a<T> interfaceC5433a2 = this.f35151a;
                this.f35151a = new InterfaceC5432a.InterfaceC5433a() { // from class: s5.b0
                    @Override // p161q6.InterfaceC5432a.InterfaceC5433a
                    /* renamed from: a */
                    public final void mo3033a(InterfaceC5434b interfaceC5434b5) {
                        C6591c0.m3866h(InterfaceC5432a.InterfaceC5433a.this, interfaceC5433a, interfaceC5434b5);
                    }
                };
            }
        }
        if (interfaceC5434b4 != null) {
            interfaceC5433a.mo3033a(interfaceC5434b);
        }
    }

    /* renamed from: j */
    public void m3864j(InterfaceC5434b<T> interfaceC5434b) {
        InterfaceC5432a.InterfaceC5433a<T> interfaceC5433a;
        if (this.f35152b == f35150d) {
            synchronized (this) {
                interfaceC5433a = this.f35151a;
                this.f35151a = null;
                this.f35152b = interfaceC5434b;
            }
            interfaceC5433a.mo3033a(interfaceC5434b);
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }

    public C6591c0(InterfaceC5432a.InterfaceC5433a<T> interfaceC5433a, InterfaceC5434b<T> interfaceC5434b) {
        this.f35151a = interfaceC5433a;
        this.f35152b = interfaceC5434b;
    }

    /* renamed from: h */
    public static /* synthetic */ void m3866h(InterfaceC5432a.InterfaceC5433a interfaceC5433a, InterfaceC5432a.InterfaceC5433a interfaceC5433a2, InterfaceC5434b interfaceC5434b) {
        interfaceC5433a.mo3033a(interfaceC5434b);
        interfaceC5433a2.mo3033a(interfaceC5434b);
    }
}
