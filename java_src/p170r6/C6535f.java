package p170r6;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p097j5.C4352l;
import p117l7.InterfaceC4584i;
import p124m5.C4638c;
import p152p6.InterfaceC5365f;
import p161q6.InterfaceC5434b;
import p170r6.C6539h;
import p179s6.InterfaceC6628a;
import p188t6.AbstractC6804d;
import p188t6.C6801b;
import p188t6.C6802c;
import p197u6.AbstractC6939d;
import p197u6.AbstractC6943f;
import p197u6.C6938c;
import p220x3.C7297q;
/* renamed from: r6.f */
/* loaded from: classes2.dex */
public class C6535f implements InterfaceC6538g {

    /* renamed from: m */
    public static final Object f34829m = new Object();

    /* renamed from: n */
    public static final ThreadFactory f34830n = new ThreadFactoryC6536a();

    /* renamed from: a */
    public final C4638c f34831a;

    /* renamed from: b */
    public final C6938c f34832b;

    /* renamed from: c */
    public final C6802c f34833c;

    /* renamed from: d */
    public final C6548o f34834d;

    /* renamed from: e */
    public final C6801b f34835e;

    /* renamed from: f */
    public final C6546m f34836f;

    /* renamed from: g */
    public final Object f34837g;

    /* renamed from: h */
    public final ExecutorService f34838h;

    /* renamed from: i */
    public final ExecutorService f34839i;

    /* renamed from: j */
    public String f34840j;

    /* renamed from: k */
    public Set<InterfaceC6628a> f34841k;

    /* renamed from: l */
    public final List<InterfaceC6547n> f34842l;

    /* renamed from: r6.f$a */
    /* loaded from: classes2.dex */
    public class ThreadFactoryC6536a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f34843a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.f34843a.getAndIncrement())));
        }
    }

    public C6535f(C4638c c4638c, InterfaceC5434b<InterfaceC4584i> interfaceC5434b, InterfaceC5434b<InterfaceC5365f> interfaceC5434b2) {
        this(new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f34830n), c4638c, new C6938c(c4638c.m15899h(), interfaceC5434b, interfaceC5434b2), new C6802c(c4638c), C6548o.m3945c(), new C6801b(c4638c), new C6546m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public /* synthetic */ void m3966u() {
        m3965v(false);
    }

    /* renamed from: B */
    public final synchronized void m3987B(String str) {
        this.f34840j = str;
    }

    /* renamed from: C */
    public final synchronized void m3986C(AbstractC6804d abstractC6804d, AbstractC6804d abstractC6804d2) {
        if (this.f34841k.size() != 0 && !abstractC6804d.mo3403d().equals(abstractC6804d2.mo3403d())) {
            for (InterfaceC6628a interfaceC6628a : this.f34841k) {
                interfaceC6628a.m3769a(abstractC6804d2.mo3403d());
            }
        }
    }

    /* renamed from: k */
    public String m3976k() {
        return this.f34831a.m15896k().m15877b();
    }

    /* renamed from: l */
    public String m3975l() {
        return this.f34831a.m15896k().m15876c();
    }

    /* renamed from: m */
    public final synchronized String m3974m() {
        return this.f34840j;
    }

    /* renamed from: r */
    public String m3969r() {
        return this.f34831a.m15896k().m15874e();
    }

    /* renamed from: r6.f$b */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C6537b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34844a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f34845b;

        static {
            int[] iArr = new int[AbstractC6943f.EnumC6945b.values().length];
            f34845b = iArr;
            try {
                iArr[AbstractC6943f.EnumC6945b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34845b[AbstractC6943f.EnumC6945b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34845b[AbstractC6943f.EnumC6945b.AUTH_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[AbstractC6939d.EnumC6941b.values().length];
            f34844a = iArr2;
            try {
                iArr2[AbstractC6939d.EnumC6941b.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f34844a[AbstractC6939d.EnumC6941b.BAD_CONFIG.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: o */
    public static C6535f m3972o(C4638c c4638c) {
        boolean z;
        if (c4638c != null) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1891b(z, "Null is not a valid value of FirebaseApp.");
        return (C6535f) c4638c.m15900g(InterfaceC6538g.class);
    }

    /* renamed from: A */
    public final void m3988A(AbstractC6804d abstractC6804d) {
        synchronized (this.f34837g) {
            Iterator<InterfaceC6547n> it = this.f34842l.iterator();
            while (it.hasNext()) {
                if (it.next().mo3948a(abstractC6804d)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: e */
    public final AbstractC4346i<AbstractC6544l> m3982e() {
        C4348j c4348j = new C4348j();
        m3980g(new C6542j(this.f34834d, c4348j));
        return c4348j.m16775a();
    }

    /* renamed from: f */
    public final AbstractC4346i<String> m3981f() {
        C4348j c4348j = new C4348j();
        m3980g(new C6543k(c4348j));
        return c4348j.m16775a();
    }

    /* renamed from: g */
    public final void m3980g(InterfaceC6547n interfaceC6547n) {
        synchronized (this.f34837g) {
            this.f34842l.add(interfaceC6547n);
        }
    }

    /* renamed from: j */
    public final AbstractC6804d m3977j(AbstractC6804d abstractC6804d) {
        AbstractC6943f m2999e = this.f34832b.m2999e(m3976k(), abstractC6804d.mo3403d(), m3969r(), abstractC6804d.mo3401f());
        int i = C6537b.f34845b[m2999e.mo2965b().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    m3987B(null);
                    return abstractC6804d.m3389r();
                }
                throw new C6539h("Firebase Installations Service is unavailable. Please try again later.", C6539h.EnumC6540a.UNAVAILABLE);
            }
            return abstractC6804d.m3390q("BAD CONFIG");
        }
        return abstractC6804d.m3392o(m2999e.mo2964c(), m2999e.mo2963d(), this.f34834d.m3946b());
    }

    /* renamed from: p */
    public final AbstractC6804d m3971p() {
        AbstractC6804d m3407c;
        synchronized (f34829m) {
            C6531b m3990a = C6531b.m3990a(this.f34831a.m15899h(), "generatefid.lock");
            m3407c = this.f34833c.m3407c();
            if (m3990a != null) {
                m3990a.m3989b();
            }
        }
        return m3407c;
    }

    /* renamed from: q */
    public final AbstractC6804d m3970q() {
        AbstractC6804d m3407c;
        synchronized (f34829m) {
            C6531b m3990a = C6531b.m3990a(this.f34831a.m15899h(), "generatefid.lock");
            m3407c = this.f34833c.m3407c();
            if (m3407c.m3397j()) {
                m3407c = this.f34833c.m3409a(m3407c.m3387t(m3963x(m3407c)));
            }
            if (m3990a != null) {
                m3990a.m3989b();
            }
        }
        return m3407c;
    }

    /* renamed from: s */
    public final void m3968s(AbstractC6804d abstractC6804d) {
        synchronized (f34829m) {
            C6531b m3990a = C6531b.m3990a(this.f34831a.m15899h(), "generatefid.lock");
            this.f34833c.m3409a(abstractC6804d);
            if (m3990a != null) {
                m3990a.m3989b();
            }
        }
    }

    /* renamed from: x */
    public final String m3963x(AbstractC6804d abstractC6804d) {
        if ((!this.f34831a.m15897j().equals("CHIME_ANDROID_SDK") && !this.f34831a.m15889r()) || !abstractC6804d.m3394m()) {
            return this.f34836f.m3951a();
        }
        String m3413f = this.f34835e.m3413f();
        if (TextUtils.isEmpty(m3413f)) {
            return this.f34836f.m3951a();
        }
        return m3413f;
    }

    /* renamed from: z */
    public final void m3961z(Exception exc) {
        synchronized (this.f34837g) {
            Iterator<InterfaceC6547n> it = this.f34842l.iterator();
            while (it.hasNext()) {
                if (it.next().onException(exc)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: n */
    public static C6535f m3973n() {
        return m3972o(C4638c.m15898i());
    }

    @Override // p170r6.InterfaceC6538g
    /* renamed from: a */
    public AbstractC4346i<AbstractC6544l> mo3960a(final boolean z) {
        m3964w();
        AbstractC4346i<AbstractC6544l> m3982e = m3982e();
        this.f34838h.execute(new Runnable() { // from class: r6.e
            @Override // java.lang.Runnable
            public final void run() {
                C6535f.this.m3965v(z);
            }
        });
        return m3982e;
    }

    @Override // p170r6.InterfaceC6538g
    public AbstractC4346i<String> getId() {
        m3964w();
        String m3974m = m3974m();
        if (m3974m != null) {
            return C4352l.m16767d(m3974m);
        }
        AbstractC4346i<String> m3981f = m3981f();
        this.f34838h.execute(new Runnable() { // from class: r6.c
            @Override // java.lang.Runnable
            public final void run() {
                C6535f.this.m3966u();
            }
        });
        return m3981f;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3967t(boolean r3) {
        /*
            r2 = this;
            t6.d r0 = r2.m3971p()
            boolean r1 = r0.m3398i()     // Catch: p170r6.C6539h -> L5f
            if (r1 != 0) goto L22
            boolean r1 = r0.m3395l()     // Catch: p170r6.C6539h -> L5f
            if (r1 == 0) goto L11
            goto L22
        L11:
            if (r3 != 0) goto L1d
            r6.o r3 = r2.f34834d     // Catch: p170r6.C6539h -> L5f
            boolean r3 = r3.m3942f(r0)     // Catch: p170r6.C6539h -> L5f
            if (r3 == 0) goto L1c
            goto L1d
        L1c:
            return
        L1d:
            t6.d r3 = r2.m3977j(r0)     // Catch: p170r6.C6539h -> L5f
            goto L26
        L22:
            t6.d r3 = r2.m3962y(r0)     // Catch: p170r6.C6539h -> L5f
        L26:
            r2.m3968s(r3)
            r2.m3986C(r0, r3)
            boolean r0 = r3.m3396k()
            if (r0 == 0) goto L39
            java.lang.String r0 = r3.mo3403d()
            r2.m3987B(r0)
        L39:
            boolean r0 = r3.m3398i()
            if (r0 == 0) goto L4a
            r6.h r3 = new r6.h
            r6.h$a r0 = p170r6.C6539h.EnumC6540a.BAD_CONFIG
            r3.<init>(r0)
            r2.m3961z(r3)
            goto L5e
        L4a:
            boolean r0 = r3.m3397j()
            if (r0 == 0) goto L5b
            java.io.IOException r3 = new java.io.IOException
            java.lang.String r0 = "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."
            r3.<init>(r0)
            r2.m3961z(r3)
            goto L5e
        L5b:
            r2.m3988A(r3)
        L5e:
            return
        L5f:
            r3 = move-exception
            r2.m3961z(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p170r6.C6535f.m3967t(boolean):void");
    }

    /* renamed from: i */
    public final void m3965v(final boolean z) {
        AbstractC6804d m3970q = m3970q();
        if (z) {
            m3970q = m3970q.m3391p();
        }
        m3988A(m3970q);
        this.f34839i.execute(new Runnable() { // from class: r6.d
            @Override // java.lang.Runnable
            public final void run() {
                C6535f.this.m3967t(z);
            }
        });
    }

    /* renamed from: w */
    public final void m3964w() {
        C7297q.m1886g(m3975l(), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C7297q.m1886g(m3969r(), "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C7297q.m1886g(m3976k(), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C7297q.m1891b(C6548o.m3940h(m3975l()), "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        C7297q.m1891b(C6548o.m3941g(m3976k()), "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
    }

    /* renamed from: y */
    public final AbstractC6804d m3962y(AbstractC6804d abstractC6804d) {
        String str;
        if (abstractC6804d.mo3403d() != null && abstractC6804d.mo3403d().length() == 11) {
            str = this.f34835e.m3410i();
        } else {
            str = null;
        }
        AbstractC6939d m3000d = this.f34832b.m3000d(m3976k(), abstractC6804d.mo3403d(), m3969r(), m3975l(), str);
        int i = C6537b.f34844a[m3000d.mo2980e().ordinal()];
        if (i != 1) {
            if (i == 2) {
                return abstractC6804d.m3390q("BAD CONFIG");
            }
            throw new C6539h("Firebase Installations Service is unavailable. Please try again later.", C6539h.EnumC6540a.UNAVAILABLE);
        }
        return abstractC6804d.m3388s(m3000d.mo2982c(), m3000d.mo2981d(), this.f34834d.m3946b(), m3000d.mo2983b().mo2964c(), m3000d.mo2983b().mo2963d());
    }

    public C6535f(ExecutorService executorService, C4638c c4638c, C6938c c6938c, C6802c c6802c, C6548o c6548o, C6801b c6801b, C6546m c6546m) {
        this.f34837g = new Object();
        this.f34841k = new HashSet();
        this.f34842l = new ArrayList();
        this.f34831a = c4638c;
        this.f34832b = c6938c;
        this.f34833c = c6802c;
        this.f34834d = c6548o;
        this.f34835e = c6801b;
        this.f34836f = c6546m;
        this.f34838h = executorService;
        this.f34839i = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f34830n);
    }
}
