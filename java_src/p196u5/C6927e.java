package p196u5;

import java.io.File;
import java.util.concurrent.atomic.AtomicReference;
import p161q6.InterfaceC5432a;
import p161q6.InterfaceC5434b;
import p238z5.AbstractC7810c0;
/* renamed from: u5.e */
/* loaded from: classes2.dex */
public final class C6927e implements InterfaceC6923a {

    /* renamed from: c */
    public static final InterfaceC6931g f35780c = new C6929b();

    /* renamed from: a */
    public final InterfaceC5432a<InterfaceC6923a> f35781a;

    /* renamed from: b */
    public final AtomicReference<InterfaceC6923a> f35782b = new AtomicReference<>(null);

    /* renamed from: u5.e$b */
    /* loaded from: classes2.dex */
    public static final class C6929b implements InterfaceC6931g {
        public C6929b() {
        }

        @Override // p196u5.InterfaceC6931g
        /* renamed from: a */
        public File mo3009a() {
            return null;
        }

        @Override // p196u5.InterfaceC6931g
        /* renamed from: b */
        public File mo3008b() {
            return null;
        }

        @Override // p196u5.InterfaceC6931g
        /* renamed from: c */
        public File mo3007c() {
            return null;
        }

        @Override // p196u5.InterfaceC6931g
        /* renamed from: d */
        public File mo3006d() {
            return null;
        }

        @Override // p196u5.InterfaceC6931g
        /* renamed from: e */
        public File mo3005e() {
            return null;
        }

        @Override // p196u5.InterfaceC6931g
        /* renamed from: f */
        public File mo3004f() {
            return null;
        }
    }

    /* renamed from: i */
    public static /* synthetic */ void m3024i(String str, InterfaceC5434b interfaceC5434b) {
        ((InterfaceC6923a) interfaceC5434b.get()).mo3032a(str);
    }

    @Override // p196u5.InterfaceC6923a
    /* renamed from: a */
    public void mo3032a(final String str) {
        this.f35781a.mo3873a(new InterfaceC5432a.InterfaceC5433a() { // from class: u5.c
            @Override // p161q6.InterfaceC5432a.InterfaceC5433a
            /* renamed from: a */
            public final void mo3033a(InterfaceC5434b interfaceC5434b) {
                C6927e.m3024i(str, interfaceC5434b);
            }
        });
    }

    @Override // p196u5.InterfaceC6923a
    /* renamed from: b */
    public InterfaceC6931g mo3031b(String str) {
        InterfaceC6923a interfaceC6923a = this.f35782b.get();
        if (interfaceC6923a == null) {
            return f35780c;
        }
        return interfaceC6923a.mo3031b(str);
    }

    @Override // p196u5.InterfaceC6923a
    /* renamed from: c */
    public boolean mo3030c() {
        InterfaceC6923a interfaceC6923a = this.f35782b.get();
        if (interfaceC6923a != null && interfaceC6923a.mo3030c()) {
            return true;
        }
        return false;
    }

    @Override // p196u5.InterfaceC6923a
    /* renamed from: d */
    public boolean mo3029d(String str) {
        InterfaceC6923a interfaceC6923a = this.f35782b.get();
        if (interfaceC6923a != null && interfaceC6923a.mo3029d(str)) {
            return true;
        }
        return false;
    }

    public C6927e(InterfaceC5432a<InterfaceC6923a> interfaceC5432a) {
        this.f35781a = interfaceC5432a;
        interfaceC5432a.mo3873a(new InterfaceC5432a.InterfaceC5433a() { // from class: u5.b
            @Override // p161q6.InterfaceC5432a.InterfaceC5433a
            /* renamed from: a */
            public final void mo3033a(InterfaceC5434b interfaceC5434b) {
                C6927e.this.m3023j(interfaceC5434b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m3023j(InterfaceC5434b interfaceC5434b) {
        C6930f.m3016f().m3020b("Crashlytics native component now available.");
        this.f35782b.set((InterfaceC6923a) interfaceC5434b.get());
    }

    /* renamed from: k */
    public static /* synthetic */ void m3022k(String str, String str2, long j, AbstractC7810c0 abstractC7810c0, InterfaceC5434b interfaceC5434b) {
        ((InterfaceC6923a) interfaceC5434b.get()).mo3028e(str, str2, j, abstractC7810c0);
    }

    @Override // p196u5.InterfaceC6923a
    /* renamed from: e */
    public void mo3028e(final String str, final String str2, final long j, final AbstractC7810c0 abstractC7810c0) {
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3013i("Deferring native open session: " + str);
        this.f35781a.mo3873a(new InterfaceC5432a.InterfaceC5433a() { // from class: u5.d
            @Override // p161q6.InterfaceC5432a.InterfaceC5433a
            /* renamed from: a */
            public final void mo3033a(InterfaceC5434b interfaceC5434b) {
                C6927e.m3022k(str, str2, j, abstractC7810c0, interfaceC5434b);
            }
        });
    }
}
