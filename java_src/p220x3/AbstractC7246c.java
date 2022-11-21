package p220x3;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import p185t3.C6734b;
import p185t3.C6738d;
import p185t3.C6746h;
/* renamed from: x3.c */
/* loaded from: classes.dex */
public abstract class AbstractC7246c<T extends IInterface> {
    @RecentlyNonNull

    /* renamed from: A */
    public InterfaceC7249c f36646A;

    /* renamed from: B */
    public T f36647B;

    /* renamed from: C */
    public final ArrayList<AbstractC7245b1<?>> f36648C;

    /* renamed from: D */
    public ServiceConnectionC7257d1 f36649D;

    /* renamed from: E */
    public int f36650E;

    /* renamed from: F */
    public final InterfaceC7247a f36651F;

    /* renamed from: G */
    public final InterfaceC7248b f36652G;

    /* renamed from: H */
    public final int f36653H;

    /* renamed from: I */
    public final String f36654I;

    /* renamed from: J */
    public volatile String f36655J;

    /* renamed from: K */
    public C6734b f36656K;

    /* renamed from: L */
    public boolean f36657L;

    /* renamed from: M */
    public volatile C7269h1 f36658M;
    @RecentlyNonNull

    /* renamed from: N */
    public AtomicInteger f36659N;

    /* renamed from: a */
    public int f36660a;

    /* renamed from: b */
    public long f36661b;

    /* renamed from: d */
    public long f36662d;

    /* renamed from: k */
    public int f36663k;

    /* renamed from: p */
    public long f36664p;

    /* renamed from: q */
    public volatile String f36665q;

    /* renamed from: r */
    public C7305s1 f36666r;

    /* renamed from: s */
    public final Context f36667s;

    /* renamed from: t */
    public final Looper f36668t;

    /* renamed from: u */
    public final AbstractC7267h f36669u;

    /* renamed from: v */
    public final C6746h f36670v;

    /* renamed from: w */
    public final Handler f36671w;

    /* renamed from: x */
    public final Object f36672x;

    /* renamed from: y */
    public final Object f36673y;

    /* renamed from: z */
    public InterfaceC7283m f36674z;

    /* renamed from: P */
    public static final C6738d[] f36645P = new C6738d[0];
    @RecentlyNonNull

    /* renamed from: O */
    public static final String[] f36644O = {"service_esmobile", "service_googleme"};

    /* renamed from: x3.c$a */
    /* loaded from: classes.dex */
    public interface InterfaceC7247a {
        /* renamed from: j0 */
        void mo1948j0(int i);

        /* renamed from: o0 */
        void mo1947o0(Bundle bundle);
    }

    /* renamed from: x3.c$b */
    /* loaded from: classes.dex */
    public interface InterfaceC7248b {
        /* renamed from: t0 */
        void mo1940t0(@RecentlyNonNull C6734b c6734b);
    }

    /* renamed from: x3.c$c */
    /* loaded from: classes.dex */
    public interface InterfaceC7249c {
        /* renamed from: a */
        void mo1978a(@RecentlyNonNull C6734b c6734b);
    }

    /* renamed from: x3.c$e */
    /* loaded from: classes.dex */
    public interface InterfaceC7251e {
        /* renamed from: O0 */
        void mo1977O0();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC7246c(@androidx.annotation.RecentlyNonNull android.content.Context r10, @androidx.annotation.RecentlyNonNull android.os.Looper r11, int r12, p220x3.AbstractC7246c.InterfaceC7247a r13, p220x3.AbstractC7246c.InterfaceC7248b r14, java.lang.String r15) {
        /*
            r9 = this;
            x3.h r3 = p220x3.AbstractC7267h.m1938b(r10)
            t3.h r4 = p185t3.C6746h.m3490f()
            p220x3.C7297q.m1883j(r13)
            p220x3.C7297q.m1883j(r14)
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r8 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p220x3.AbstractC7246c.<init>(android.content.Context, android.os.Looper, int, x3.c$a, x3.c$b, java.lang.String):void");
    }

    /* renamed from: T */
    public static /* synthetic */ void m2010T(AbstractC7246c abstractC7246c, int i) {
        int i2;
        int i3;
        synchronized (abstractC7246c.f36672x) {
            i2 = abstractC7246c.f36650E;
        }
        if (i2 == 3) {
            abstractC7246c.f36657L = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = abstractC7246c.f36671w;
        handler.sendMessage(handler.obtainMessage(i3, abstractC7246c.f36659N.get(), 16));
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException: Cannot read field "wordsInUse" because "set" is null
        	at java.base/java.util.BitSet.or(BitSet.java:943)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:732)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:811)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:88)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:706)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* renamed from: X */
    public static /* synthetic */ boolean m2006X(p220x3.AbstractC7246c r2) {
        /*
            boolean r0 = r2.f36657L
            r1 = 0
            if (r0 == 0) goto L6
            goto L24
        L6:
            java.lang.String r0 = r2.mo913C()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L11
            goto L24
        L11:
            java.lang.String r0 = r2.m1979z()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L1c
            goto L24
        L1c:
            java.lang.String r2 = r2.mo913C()     // Catch: java.lang.ClassNotFoundException -> L24
            java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L24
            r1 = 1
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p220x3.AbstractC7246c.m2006X(x3.c):boolean");
    }

    /* renamed from: c0 */
    public static /* synthetic */ boolean m1999c0(AbstractC7246c abstractC7246c, int i, int i2, IInterface iInterface) {
        synchronized (abstractC7246c.f36672x) {
            if (abstractC7246c.f36650E != i) {
                return false;
            }
            abstractC7246c.m1992g0(i2, iInterface);
            return true;
        }
    }

    /* renamed from: f0 */
    public static /* synthetic */ void m1993f0(AbstractC7246c abstractC7246c, C7269h1 c7269h1) {
        abstractC7246c.f36658M = c7269h1;
        if (abstractC7246c.mo2013Q()) {
            C7258e c7258e = c7269h1.f36736k;
            C7300r.m1877b().m1876c(c7258e == null ? null : c7258e.m1953c1());
        }
    }

    @RecentlyNonNull
    /* renamed from: A */
    public Set<Scope> mo1946A() {
        return Collections.emptySet();
    }

    /* renamed from: C */
    public abstract String mo913C();

    /* renamed from: D */
    public abstract String mo912D();

    @RecentlyNonNull
    /* renamed from: E */
    public String m2024E() {
        return "com.google.android.gms";
    }

    @RecentlyNullable
    /* renamed from: F */
    public C7258e m2023F() {
        C7269h1 c7269h1 = this.f36658M;
        if (c7269h1 == null) {
            return null;
        }
        return c7269h1.f36736k;
    }

    /* renamed from: G */
    public boolean mo911G() {
        return false;
    }

    /* renamed from: H */
    public boolean m2022H() {
        return this.f36658M != null;
    }

    /* renamed from: I */
    public void mo2021I(@RecentlyNonNull T t) {
        this.f36662d = System.currentTimeMillis();
    }

    /* renamed from: K */
    public void m2019K(int i) {
        this.f36660a = i;
        this.f36661b = System.currentTimeMillis();
    }

    /* renamed from: M */
    public boolean mo2017M() {
        return false;
    }

    /* renamed from: N */
    public void m2016N(@RecentlyNonNull String str) {
        this.f36655J = str;
    }

    /* renamed from: Q */
    public boolean mo2013Q() {
        return false;
    }

    @RecentlyNonNull
    /* renamed from: R */
    public final String m2012R() {
        String str = this.f36654I;
        return str == null ? this.f36667s.getClass().getName() : str;
    }

    /* renamed from: b */
    public void m2002b(@RecentlyNonNull String str) {
        this.f36665q = str;
        mo1996e();
    }

    /* renamed from: f */
    public void mo1994f(@RecentlyNonNull InterfaceC7251e interfaceC7251e) {
        interfaceC7251e.mo1977O0();
    }

    /* renamed from: g0 */
    public final void m1992g0(int i, T t) {
        boolean z;
        boolean z2;
        C7305s1 c7305s1;
        String str;
        C7305s1 c7305s12;
        boolean z3 = false;
        if (i != 4) {
            z = false;
        } else {
            z = true;
        }
        if (t == null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z == z2) {
            z3 = true;
        }
        C7297q.m1892a(z3);
        synchronized (this.f36672x) {
            this.f36650E = i;
            this.f36647B = t;
            if (i != 1) {
                if (i != 2 && i != 3) {
                    if (i == 4) {
                        C7297q.m1883j(t);
                        mo2021I(t);
                    }
                } else {
                    ServiceConnectionC7257d1 serviceConnectionC7257d1 = this.f36649D;
                    if (serviceConnectionC7257d1 != null && (c7305s12 = this.f36666r) != null) {
                        String m1863a = c7305s12.m1863a();
                        String m1862b = this.f36666r.m1862b();
                        StringBuilder sb = new StringBuilder(String.valueOf(m1863a).length() + 70 + String.valueOf(m1862b).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(m1863a);
                        sb.append(" on ");
                        sb.append(m1862b);
                        Log.e("GmsClient", sb.toString());
                        AbstractC7267h abstractC7267h = this.f36669u;
                        String m1863a2 = this.f36666r.m1863a();
                        C7297q.m1883j(m1863a2);
                        abstractC7267h.m1937c(m1863a2, this.f36666r.m1862b(), this.f36666r.m1861c(), serviceConnectionC7257d1, m2012R(), this.f36666r.m1860d());
                        this.f36659N.incrementAndGet();
                    }
                    ServiceConnectionC7257d1 serviceConnectionC7257d12 = new ServiceConnectionC7257d1(this, this.f36659N.get());
                    this.f36649D = serviceConnectionC7257d12;
                    if (this.f36650E == 3 && m1979z() != null) {
                        c7305s1 = new C7305s1(m1981w().getPackageName(), m1979z(), true, AbstractC7267h.m1939a(), false);
                    } else {
                        c7305s1 = new C7305s1(m2024E(), mo912D(), false, AbstractC7267h.m1939a(), mo911G());
                    }
                    this.f36666r = c7305s1;
                    if (c7305s1.m1860d() && mo910k() < 17895000) {
                        String valueOf = String.valueOf(this.f36666r.m1863a());
                        if (valueOf.length() != 0) {
                            str = "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(valueOf);
                        } else {
                            str = new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ");
                        }
                        throw new IllegalStateException(str);
                    }
                    AbstractC7267h abstractC7267h2 = this.f36669u;
                    String m1863a3 = this.f36666r.m1863a();
                    C7297q.m1883j(m1863a3);
                    if (!abstractC7267h2.mo1899d(new C7282l1(m1863a3, this.f36666r.m1862b(), this.f36666r.m1861c(), this.f36666r.m1860d()), serviceConnectionC7257d12, m2012R())) {
                        String m1863a4 = this.f36666r.m1863a();
                        String m1862b2 = this.f36666r.m1862b();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(m1863a4).length() + 34 + String.valueOf(m1862b2).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(m1863a4);
                        sb2.append(" on ");
                        sb2.append(m1862b2);
                        Log.e("GmsClient", sb2.toString());
                        m2011S(16, null, this.f36659N.get());
                    }
                }
            } else {
                ServiceConnectionC7257d1 serviceConnectionC7257d13 = this.f36649D;
                if (serviceConnectionC7257d13 != null) {
                    AbstractC7267h abstractC7267h3 = this.f36669u;
                    String m1863a5 = this.f36666r.m1863a();
                    C7297q.m1883j(m1863a5);
                    abstractC7267h3.m1937c(m1863a5, this.f36666r.m1862b(), this.f36666r.m1861c(), serviceConnectionC7257d13, m2012R(), this.f36666r.m1860d());
                    this.f36649D = null;
                }
            }
        }
    }

    /* renamed from: i */
    public boolean m1990i() {
        return true;
    }

    /* renamed from: k */
    public int mo910k() {
        return C6746h.f35418a;
    }

    @RecentlyNullable
    /* renamed from: l */
    public final C6738d[] m1989l() {
        C7269h1 c7269h1 = this.f36658M;
        if (c7269h1 == null) {
            return null;
        }
        return c7269h1.f36734b;
    }

    @RecentlyNullable
    /* renamed from: m */
    public String m1988m() {
        return this.f36665q;
    }

    /* renamed from: n */
    public boolean mo1987n() {
        return false;
    }

    @RecentlyNullable
    /* renamed from: r */
    public abstract T mo909r(@RecentlyNonNull IBinder iBinder);

    /* renamed from: s */
    public boolean m1983s() {
        return false;
    }

    @RecentlyNullable
    /* renamed from: t */
    public Account mo1941t() {
        return null;
    }

    @RecentlyNonNull
    /* renamed from: u */
    public C6738d[] mo908u() {
        return f36645P;
    }

    @RecentlyNullable
    /* renamed from: v */
    public Bundle mo1982v() {
        return null;
    }

    @RecentlyNonNull
    /* renamed from: w */
    public final Context m1981w() {
        return this.f36667s;
    }

    /* renamed from: x */
    public int m1980x() {
        return this.f36653H;
    }

    @RecentlyNonNull
    /* renamed from: y */
    public Bundle mo907y() {
        return new Bundle();
    }

    @RecentlyNullable
    /* renamed from: z */
    public String m1979z() {
        return null;
    }

    /* renamed from: x3.c$d */
    /* loaded from: classes.dex */
    public class C7250d implements InterfaceC7249c {
        public C7250d() {
        }

        @Override // p220x3.AbstractC7246c.InterfaceC7249c
        /* renamed from: a */
        public final void mo1978a(@RecentlyNonNull C6734b c6734b) {
            if (c6734b.m3524b1()) {
                AbstractC7246c abstractC7246c = AbstractC7246c.this;
                abstractC7246c.m1986o(null, abstractC7246c.mo1946A());
            } else if (AbstractC7246c.this.f36652G != null) {
                AbstractC7246c.this.f36652G.mo1940t0(c6734b);
            }
        }
    }

    @RecentlyNonNull
    /* renamed from: B */
    public final T m2025B() {
        T t;
        synchronized (this.f36672x) {
            if (this.f36650E != 5) {
                m1984q();
                t = this.f36647B;
                C7297q.m1882k(t, "Client is connected but service is null");
            } else {
                throw new DeadObjectException();
            }
        }
        return t;
    }

    /* renamed from: L */
    public void mo2018L(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.f36671w;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new C7260e1(this, i, iBinder, bundle)));
    }

    /* renamed from: O */
    public void m2015O(int i) {
        Handler handler = this.f36671w;
        handler.sendMessage(handler.obtainMessage(6, this.f36659N.get(), i));
    }

    /* renamed from: P */
    public void m2014P(@RecentlyNonNull InterfaceC7249c interfaceC7249c, int i, PendingIntent pendingIntent) {
        C7297q.m1882k(interfaceC7249c, "Connection progress callbacks cannot be null.");
        this.f36646A = interfaceC7249c;
        Handler handler = this.f36671w;
        handler.sendMessage(handler.obtainMessage(3, this.f36659N.get(), i, pendingIntent));
    }

    /* renamed from: S */
    public final void m2011S(int i, Bundle bundle, int i2) {
        Handler handler = this.f36671w;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new C7263f1(this, i, null)));
    }

    /* renamed from: c */
    public boolean m2000c() {
        boolean z;
        synchronized (this.f36672x) {
            int i = this.f36650E;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: e */
    public void mo1996e() {
        this.f36659N.incrementAndGet();
        synchronized (this.f36648C) {
            int size = this.f36648C.size();
            for (int i = 0; i < size; i++) {
                this.f36648C.get(i).m2026e();
            }
            this.f36648C.clear();
        }
        synchronized (this.f36673y) {
            this.f36674z = null;
        }
        m1992g0(1, null);
    }

    /* renamed from: h */
    public void mo1991h(@RecentlyNonNull InterfaceC7249c interfaceC7249c) {
        C7297q.m1882k(interfaceC7249c, "Connection progress callbacks cannot be null.");
        this.f36646A = interfaceC7249c;
        m1992g0(2, null);
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.f36672x) {
            if (this.f36650E == 4) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: p */
    public void m1985p() {
        int mo3488h = this.f36670v.mo3488h(this.f36667s, mo910k());
        if (mo3488h != 0) {
            m1992g0(1, null);
            m2014P(new C7250d(), mo3488h, null);
            return;
        }
        mo1991h(new C7250d());
    }

    /* renamed from: J */
    public void mo2020J(@RecentlyNonNull C6734b c6734b) {
        this.f36663k = c6734b.m3528X0();
        this.f36664p = System.currentTimeMillis();
    }

    @RecentlyNonNull
    /* renamed from: d */
    public String m1998d() {
        C7305s1 c7305s1;
        if (isConnected() && (c7305s1 = this.f36666r) != null) {
            return c7305s1.m1862b();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    /* renamed from: o */
    public void m1986o(InterfaceC7273j interfaceC7273j, @RecentlyNonNull Set<Scope> set) {
        Bundle mo907y = mo907y();
        C7261f c7261f = new C7261f(this.f36653H, this.f36655J);
        c7261f.f36711k = this.f36667s.getPackageName();
        c7261f.f36714r = mo907y;
        if (set != null) {
            c7261f.f36713q = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (mo1987n()) {
            Account mo1941t = mo1941t();
            if (mo1941t == null) {
                mo1941t = new Account("<<default account>>", "com.google");
            }
            c7261f.f36715s = mo1941t;
            if (interfaceC7273j != null) {
                c7261f.f36712p = interfaceC7273j.asBinder();
            }
        } else if (mo2017M()) {
            c7261f.f36715s = mo1941t();
        }
        c7261f.f36716t = f36645P;
        c7261f.f36717u = mo908u();
        if (mo2013Q()) {
            c7261f.f36720x = true;
        }
        try {
            synchronized (this.f36673y) {
                InterfaceC7283m interfaceC7283m = this.f36674z;
                if (interfaceC7283m != null) {
                    interfaceC7283m.mo1858X2(new BinderC7253c1(this, this.f36659N.get()), c7261f);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            m2015O(3);
        } catch (RemoteException e2) {
            e = e2;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            mo2018L(8, null, null, this.f36659N.get());
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            e = e4;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            mo2018L(8, null, null, this.f36659N.get());
        }
    }

    /* renamed from: q */
    public final void m1984q() {
        if (isConnected()) {
            return;
        }
        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }

    public AbstractC7246c(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull AbstractC7267h abstractC7267h, @RecentlyNonNull C6746h c6746h, int i, InterfaceC7247a interfaceC7247a, InterfaceC7248b interfaceC7248b, String str) {
        this.f36665q = null;
        this.f36672x = new Object();
        this.f36673y = new Object();
        this.f36648C = new ArrayList<>();
        this.f36650E = 1;
        this.f36656K = null;
        this.f36657L = false;
        this.f36658M = null;
        this.f36659N = new AtomicInteger(0);
        C7297q.m1882k(context, "Context must not be null");
        this.f36667s = context;
        C7297q.m1882k(looper, "Looper must not be null");
        this.f36668t = looper;
        C7297q.m1882k(abstractC7267h, "Supervisor must not be null");
        this.f36669u = abstractC7267h;
        C7297q.m1882k(c6746h, "API availability must not be null");
        this.f36670v = c6746h;
        this.f36671w = new HandlerC7242a1(this, looper);
        this.f36653H = i;
        this.f36651F = interfaceC7247a;
        this.f36652G = interfaceC7248b;
        this.f36654I = str;
    }
}
