package p187t5;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import p019b6.C0998b;
import p053e6.C3383d;
import p089i6.C4140a;
import p097j5.AbstractC4346i;
import p097j5.C4352l;
import p097j5.InterfaceC4330a;
import p124m5.C4638c;
import p160q5.InterfaceC5424a;
import p161q6.InterfaceC5432a;
import p170r6.InterfaceC6538g;
import p196u5.C6927e;
import p196u5.C6930f;
import p196u5.InterfaceC6923a;
import p222x5.C7329a;
import p222x5.C7341g;
import p222x5.C7367l;
import p222x5.C7379r;
import p222x5.C7381t;
import p222x5.C7386v;
/* renamed from: t5.g */
/* loaded from: classes2.dex */
public class C6795g {

    /* renamed from: a */
    public final C7367l f35481a;

    /* renamed from: t5.g$b */
    /* loaded from: classes2.dex */
    public class CallableC6797b implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ boolean f35482a;

        /* renamed from: b */
        public final /* synthetic */ C7367l f35483b;

        /* renamed from: c */
        public final /* synthetic */ C3383d f35484c;

        public CallableC6797b(boolean z, C7367l c7367l, C3383d c3383d) {
            this.f35482a = z;
            this.f35483b = c7367l;
            this.f35484c = c3383d;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() {
            if (this.f35482a) {
                this.f35483b.m1680g(this.f35484c);
                return null;
            }
            return null;
        }
    }

    /* renamed from: t5.g$a */
    /* loaded from: classes2.dex */
    public class C6796a implements InterfaceC4330a<Void, Object> {
        @Override // p097j5.InterfaceC4330a
        /* renamed from: a */
        public Object mo1688a(AbstractC4346i<Void> abstractC4346i) {
            if (!abstractC4346i.mo16786p()) {
                C6930f.m3016f().m3017e("Error fetching settings.", abstractC4346i.mo16791k());
                return null;
            }
            return null;
        }
    }

    public C6795g(C7367l c7367l) {
        this.f35481a = c7367l;
    }

    /* renamed from: a */
    public static C6795g m3420a(C4638c c4638c, InterfaceC6538g interfaceC6538g, InterfaceC5432a<InterfaceC6923a> interfaceC5432a, InterfaceC5432a<InterfaceC5424a> interfaceC5432a2) {
        Context m15899h = c4638c.m15899h();
        String packageName = m15899h.getPackageName();
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3015g("Initializing Firebase Crashlytics " + C7367l.m1678i() + " for " + packageName);
        C7379r c7379r = new C7379r(c4638c);
        C7386v c7386v = new C7386v(m15899h, packageName, interfaceC6538g, c7379r);
        C6927e c6927e = new C6927e(interfaceC5432a);
        C6792d c6792d = new C6792d(interfaceC5432a2);
        C7367l c7367l = new C7367l(c4638c, c7386v, c6927e, c7379r, c6792d.m3431e(), c6792d.m3432d(), C7381t.m1622c("Crashlytics Exception Handler"));
        String m15876c = c4638c.m15896k().m15876c();
        String m1782n = C7341g.m1782n(m15899h);
        C6930f m3016f2 = C6930f.m3016f();
        m3016f2.m3020b("Mapping file ID is: " + m1782n);
        try {
            C7329a m1831a = C7329a.m1831a(m15899h, c7386v, m15876c, m1782n, new C4140a(m15899h));
            C6930f m3016f3 = C6930f.m3016f();
            m3016f3.m3013i("Installer package name is: " + m1831a.f36817c);
            ExecutorService m1622c = C7381t.m1622c("com.google.firebase.crashlytics.startup");
            C3383d m19021l = C3383d.m19021l(m15899h, m15876c, c7386v, new C0998b(), m1831a.f36819e, m1831a.f36820f, c7379r);
            m19021l.m19017p(m1622c).mo16794h(m1622c, new C6796a());
            C4352l.m16769b(m1622c, new CallableC6797b(c7367l.m1673n(m1831a, m19021l), c7367l, m19021l));
            return new C6795g(c7367l);
        } catch (PackageManager.NameNotFoundException e) {
            C6930f.m3016f().m3017e("Error retrieving app package info.", e);
            return null;
        }
    }
}
