package p194u3;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.AbstractC1411a;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;
import p026c4.C1054o;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p194u3.C6883a;
import p194u3.C6883a.InterfaceC6887d;
import p203v3.AbstractC7041q;
import p203v3.BinderC7049t0;
import p203v3.C6992a;
import p203v3.C6995b;
import p203v3.C7000c0;
import p203v3.C7008f;
import p203v3.C7012g0;
import p203v3.C7048t;
import p203v3.InterfaceC7035o;
import p203v3.ServiceConnectionC7020j;
import p220x3.AbstractC7246c;
import p220x3.C7254d;
import p220x3.C7297q;
/* renamed from: u3.e */
/* loaded from: classes.dex */
public abstract class AbstractC6897e<O extends C6883a.InterfaceC6887d> {

    /* renamed from: a */
    public final Context f35753a;

    /* renamed from: b */
    public final String f35754b;

    /* renamed from: c */
    public final C6883a<O> f35755c;

    /* renamed from: d */
    public final O f35756d;

    /* renamed from: e */
    public final C6995b<O> f35757e;

    /* renamed from: f */
    public final Looper f35758f;

    /* renamed from: g */
    public final int f35759g;

    /* renamed from: h */
    public final AbstractC6900f f35760h;

    /* renamed from: i */
    public final InterfaceC7035o f35761i;
    @RecentlyNonNull

    /* renamed from: j */
    public final C7008f f35762j;

    /* renamed from: u3.e$a */
    /* loaded from: classes.dex */
    public static class C6898a {
        @RecentlyNonNull

        /* renamed from: c */
        public static final C6898a f35763c = new C6899a().m3043a();
        @RecentlyNonNull

        /* renamed from: a */
        public final InterfaceC7035o f35764a;
        @RecentlyNonNull

        /* renamed from: b */
        public final Looper f35765b;

        /* renamed from: u3.e$a$a */
        /* loaded from: classes.dex */
        public static class C6899a {

            /* renamed from: a */
            public InterfaceC7035o f35766a;

            /* renamed from: b */
            public Looper f35767b;

            @RecentlyNonNull
            /* renamed from: b */
            public C6899a m3042b(@RecentlyNonNull Looper looper) {
                C7297q.m1882k(looper, "Looper must not be null.");
                this.f35767b = looper;
                return this;
            }

            @RecentlyNonNull
            /* renamed from: c */
            public C6899a m3041c(@RecentlyNonNull InterfaceC7035o interfaceC7035o) {
                C7297q.m1882k(interfaceC7035o, "StatusExceptionMapper must not be null.");
                this.f35766a = interfaceC7035o;
                return this;
            }

            @RecentlyNonNull
            /* renamed from: a */
            public C6898a m3043a() {
                if (this.f35766a == null) {
                    this.f35766a = new C6992a();
                }
                if (this.f35767b == null) {
                    this.f35767b = Looper.getMainLooper();
                }
                return new C6898a(this.f35766a, this.f35767b);
            }
        }

        public C6898a(InterfaceC7035o interfaceC7035o, Account account, Looper looper) {
            this.f35764a = interfaceC7035o;
            this.f35765b = looper;
        }
    }

    public AbstractC6897e(@RecentlyNonNull Activity activity, @RecentlyNonNull C6883a<O> c6883a, @RecentlyNonNull O o, @RecentlyNonNull C6898a c6898a) {
        C7297q.m1882k(activity, "Null activity is not permitted.");
        C7297q.m1882k(c6883a, "Api must not be null.");
        C7297q.m1882k(c6898a, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = activity.getApplicationContext();
        this.f35753a = applicationContext;
        String m3044w = m3044w(activity);
        this.f35754b = m3044w;
        this.f35755c = c6883a;
        this.f35756d = o;
        this.f35758f = c6898a.f35765b;
        C6995b<O> m2771a = C6995b.m2771a(c6883a, o, m3044w);
        this.f35757e = m2771a;
        this.f35760h = new C7012g0(this);
        C7008f m2694n = C7008f.m2694n(applicationContext);
        this.f35762j = m2694n;
        this.f35759g = m2694n.m2693o();
        this.f35761i = c6898a.f35764a;
        if (!(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            C7048t.m2601t(activity, m2694n, m2771a);
        }
        m2694n.m2692p(this);
    }

    @RecentlyNonNull
    /* renamed from: f */
    public AbstractC6900f m3061f() {
        return this.f35760h;
    }

    @RecentlyNonNull
    /* renamed from: h */
    public <TResult, A extends C6883a.InterfaceC6885b> AbstractC4346i<TResult> m3059h(@RecentlyNonNull AbstractC7041q<A, TResult> abstractC7041q) {
        return m3045v(2, abstractC7041q);
    }

    @RecentlyNonNull
    /* renamed from: i */
    public <A extends C6883a.InterfaceC6885b, T extends AbstractC1411a<? extends InterfaceC6909l, A>> T m3058i(@RecentlyNonNull T t) {
        m3046u(0, t);
        return t;
    }

    @RecentlyNonNull
    /* renamed from: j */
    public <TResult, A extends C6883a.InterfaceC6885b> AbstractC4346i<TResult> m3057j(@RecentlyNonNull AbstractC7041q<A, TResult> abstractC7041q) {
        return m3045v(0, abstractC7041q);
    }

    @RecentlyNonNull
    /* renamed from: k */
    public <A extends C6883a.InterfaceC6885b, T extends AbstractC1411a<? extends InterfaceC6909l, A>> T m3056k(@RecentlyNonNull T t) {
        m3046u(1, t);
        return t;
    }

    @RecentlyNonNull
    /* renamed from: l */
    public <TResult, A extends C6883a.InterfaceC6885b> AbstractC4346i<TResult> m3055l(@RecentlyNonNull AbstractC7041q<A, TResult> abstractC7041q) {
        return m3045v(1, abstractC7041q);
    }

    @RecentlyNonNull
    /* renamed from: m */
    public final C6995b<O> m3054m() {
        return this.f35757e;
    }

    @RecentlyNonNull
    /* renamed from: n */
    public O m3053n() {
        return this.f35756d;
    }

    @RecentlyNonNull
    /* renamed from: o */
    public Context m3052o() {
        return this.f35753a;
    }

    @RecentlyNullable
    /* renamed from: p */
    public String m3051p() {
        return this.f35754b;
    }

    @RecentlyNonNull
    /* renamed from: q */
    public Looper m3050q() {
        return this.f35758f;
    }

    /* renamed from: s */
    public final int m3048s() {
        return this.f35759g;
    }

    /* renamed from: t */
    public final BinderC7049t0 m3047t(Context context, Handler handler) {
        return new BinderC7049t0(context, handler, mo3060g().m1963a());
    }

    @RecentlyNonNull
    /* renamed from: g */
    public C7254d.C7255a mo3060g() {
        Account account;
        Set<Scope> emptySet;
        GoogleSignInAccount mo3065q0;
        C7254d.C7255a c7255a = new C7254d.C7255a();
        O o = this.f35756d;
        if ((o instanceof C6883a.InterfaceC6887d.InterfaceC6889b) && (mo3065q0 = ((C6883a.InterfaceC6887d.InterfaceC6889b) o).mo3065q0()) != null) {
            account = mo3065q0.m23081u0();
        } else {
            O o2 = this.f35756d;
            if (o2 instanceof C6883a.InterfaceC6887d.InterfaceC6888a) {
                account = ((C6883a.InterfaceC6887d.InterfaceC6888a) o2).m3066u0();
            } else {
                account = null;
            }
        }
        c7255a.m1961c(account);
        O o3 = this.f35756d;
        if (o3 instanceof C6883a.InterfaceC6887d.InterfaceC6889b) {
            GoogleSignInAccount mo3065q02 = ((C6883a.InterfaceC6887d.InterfaceC6889b) o3).mo3065q0();
            if (mo3065q02 == null) {
                emptySet = Collections.emptySet();
            } else {
                emptySet = mo3065q02.m23089d1();
            }
        } else {
            emptySet = Collections.emptySet();
        }
        c7255a.m1960d(emptySet);
        c7255a.m1959e(this.f35753a.getClass().getName());
        c7255a.m1962b(this.f35753a.getPackageName());
        return c7255a;
    }

    /* renamed from: v */
    public final <TResult, A extends C6883a.InterfaceC6885b> AbstractC4346i<TResult> m3045v(int i, AbstractC7041q<A, TResult> abstractC7041q) {
        C4348j c4348j = new C4348j();
        this.f35762j.m2686v(this, i, abstractC7041q, c4348j, this.f35761i);
        return c4348j.m16775a();
    }

    /* renamed from: w */
    public static String m3044w(Object obj) {
        if (C1054o.m24729l()) {
            try {
                return (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: r */
    public final C6883a.InterfaceC6892f m3049r(Looper looper, C7000c0<O> c7000c0) {
        C6883a.InterfaceC6892f mo3067a = ((C6883a.AbstractC6884a) C7297q.m1883j(this.f35755c.m3070a())).mo3067a(this.f35753a, looper, mo3060g().m1963a(), this.f35756d, c7000c0, c7000c0);
        String m3051p = m3051p();
        if (m3051p != null && (mo3067a instanceof AbstractC7246c)) {
            ((AbstractC7246c) mo3067a).m2016N(m3051p);
        }
        if (m3051p != null && (mo3067a instanceof ServiceConnectionC7020j)) {
            ((ServiceConnectionC7020j) mo3067a).m2647p(m3051p);
        }
        return mo3067a;
    }

    /* renamed from: u */
    public final <A extends C6883a.InterfaceC6885b, T extends AbstractC1411a<? extends InterfaceC6909l, A>> T m3046u(int i, T t) {
        t.m23026k();
        this.f35762j.m2687u(this, i, t);
        return t;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC6897e(@androidx.annotation.RecentlyNonNull android.app.Activity r2, @androidx.annotation.RecentlyNonNull p194u3.C6883a<O> r3, @androidx.annotation.RecentlyNonNull O r4, @androidx.annotation.RecentlyNonNull p203v3.InterfaceC7035o r5) {
        /*
            r1 = this;
            u3.e$a$a r0 = new u3.e$a$a
            r0.<init>()
            r0.m3041c(r5)
            android.os.Looper r5 = r2.getMainLooper()
            r0.m3042b(r5)
            u3.e$a r5 = r0.m3043a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p194u3.AbstractC6897e.<init>(android.app.Activity, u3.a, u3.a$d, v3.o):void");
    }

    public AbstractC6897e(@RecentlyNonNull Context context, @RecentlyNonNull C6883a<O> c6883a, @RecentlyNonNull O o, @RecentlyNonNull C6898a c6898a) {
        C7297q.m1882k(context, "Null context is not permitted.");
        C7297q.m1882k(c6883a, "Api must not be null.");
        C7297q.m1882k(c6898a, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        this.f35753a = applicationContext;
        String m3044w = m3044w(context);
        this.f35754b = m3044w;
        this.f35755c = c6883a;
        this.f35756d = o;
        this.f35758f = c6898a.f35765b;
        this.f35757e = C6995b.m2771a(c6883a, o, m3044w);
        this.f35760h = new C7012g0(this);
        C7008f m2694n = C7008f.m2694n(applicationContext);
        this.f35762j = m2694n;
        this.f35759g = m2694n.m2693o();
        this.f35761i = c6898a.f35764a;
        m2694n.m2692p(this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC6897e(@androidx.annotation.RecentlyNonNull android.content.Context r2, @androidx.annotation.RecentlyNonNull p194u3.C6883a<O> r3, @androidx.annotation.RecentlyNonNull O r4, @androidx.annotation.RecentlyNonNull p203v3.InterfaceC7035o r5) {
        /*
            r1 = this;
            u3.e$a$a r0 = new u3.e$a$a
            r0.<init>()
            r0.m3041c(r5)
            u3.e$a r5 = r0.m3043a()
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p194u3.AbstractC6897e.<init>(android.content.Context, u3.a, u3.a$d, v3.o):void");
    }
}
