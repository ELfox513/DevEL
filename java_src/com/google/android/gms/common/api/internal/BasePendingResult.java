package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p194u3.AbstractC6900f;
import p194u3.AbstractC6904h;
import p194u3.InterfaceC6907j;
import p194u3.InterfaceC6909l;
import p194u3.InterfaceC6910m;
import p203v3.C7019i1;
import p203v3.C7022j1;
import p203v3.C7055w0;
import p213w4.HandlerC7182e;
import p220x3.C7297q;
import p220x3.InterfaceC7277k;
@KeepName
/* loaded from: classes.dex */
public abstract class BasePendingResult<R extends InterfaceC6909l> extends AbstractC6904h<R> {

    /* renamed from: o */
    public static final ThreadLocal<Boolean> f7721o = new C7019i1();

    /* renamed from: a */
    public final Object f7722a;
    @RecentlyNonNull

    /* renamed from: b */
    public final HandlerC1410a<R> f7723b;
    @RecentlyNonNull

    /* renamed from: c */
    public final WeakReference<AbstractC6900f> f7724c;

    /* renamed from: d */
    public final CountDownLatch f7725d;

    /* renamed from: e */
    public final ArrayList<AbstractC6904h.InterfaceC6905a> f7726e;

    /* renamed from: f */
    public InterfaceC6910m<? super R> f7727f;

    /* renamed from: g */
    public final AtomicReference<C7055w0> f7728g;

    /* renamed from: h */
    public R f7729h;

    /* renamed from: i */
    public Status f7730i;

    /* renamed from: j */
    public volatile boolean f7731j;

    /* renamed from: k */
    public boolean f7732k;

    /* renamed from: l */
    public boolean f7733l;

    /* renamed from: m */
    public InterfaceC7277k f7734m;
    @KeepName
    private C7022j1 mResultGuardian;

    /* renamed from: n */
    public boolean f7735n;

    /* renamed from: com.google.android.gms.common.api.internal.BasePendingResult$a */
    /* loaded from: classes.dex */
    public static class HandlerC1410a<R extends InterfaceC6909l> extends HandlerC7182e {
        public HandlerC1410a(@RecentlyNonNull Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        public final void m23023a(@RecentlyNonNull InterfaceC6910m<? super R> interfaceC6910m, @RecentlyNonNull R r) {
            ThreadLocal<Boolean> threadLocal = BasePendingResult.f7721o;
            sendMessage(obtainMessage(1, new Pair((InterfaceC6910m) C7297q.m1883j(interfaceC6910m), r)));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(@RecentlyNonNull Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    StringBuilder sb = new StringBuilder(45);
                    sb.append("Don't know how to handle message: ");
                    sb.append(i);
                    Log.wtf("BasePendingResult", sb.toString(), new Exception());
                    return;
                }
                ((BasePendingResult) message.obj).m23031f(Status.f7712t);
                return;
            }
            Pair pair = (Pair) message.obj;
            InterfaceC6910m interfaceC6910m = (InterfaceC6910m) pair.first;
            InterfaceC6909l interfaceC6909l = (InterfaceC6909l) pair.second;
            try {
                interfaceC6910m.m3034a(interfaceC6909l);
            } catch (RuntimeException e) {
                BasePendingResult.m23025l(interfaceC6909l);
                throw e;
            }
        }
    }

    @Deprecated
    public BasePendingResult() {
        this.f7722a = new Object();
        this.f7725d = new CountDownLatch(1);
        this.f7726e = new ArrayList<>();
        this.f7728g = new AtomicReference<>();
        this.f7735n = false;
        this.f7723b = new HandlerC1410a<>(Looper.getMainLooper());
        this.f7724c = new WeakReference<>(null);
    }

    /* renamed from: e */
    public abstract R mo2634e(@RecentlyNonNull Status status);

    /* renamed from: g */
    public final boolean m23030g() {
        return this.f7725d.getCount() == 0;
    }

    /* renamed from: k */
    public final void m23026k() {
        boolean z = true;
        if (!this.f7735n && !f7721o.get().booleanValue()) {
            z = false;
        }
        this.f7735n = z;
    }

    /* renamed from: l */
    public static void m23025l(InterfaceC6909l interfaceC6909l) {
        if (interfaceC6909l instanceof InterfaceC6907j) {
            try {
                ((InterfaceC6907j) interfaceC6909l).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(interfaceC6909l);
                StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("BasePendingResult", sb.toString(), e);
            }
        }
    }

    @Override // p194u3.AbstractC6904h
    /* renamed from: c */
    public final void mo2641c(@RecentlyNonNull AbstractC6904h.InterfaceC6905a interfaceC6905a) {
        boolean z;
        if (interfaceC6905a != null) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1891b(z, "Callback cannot be null.");
        synchronized (this.f7722a) {
            if (m23030g()) {
                interfaceC6905a.mo1927a(this.f7730i);
            } else {
                this.f7726e.add(interfaceC6905a);
            }
        }
    }

    @Override // p194u3.AbstractC6904h
    @RecentlyNonNull
    /* renamed from: d */
    public final R mo2640d(long j, @RecentlyNonNull TimeUnit timeUnit) {
        if (j > 0) {
            C7297q.m1884i("await must not be called on the UI thread when time is greater than zero.");
        }
        C7297q.m1879n(!this.f7731j, "Result has already been consumed.");
        C7297q.m1879n(true, "Cannot await if then() has been called.");
        try {
            if (!this.f7725d.await(j, timeUnit)) {
                m23031f(Status.f7712t);
            }
        } catch (InterruptedException unused) {
            m23031f(Status.f7710r);
        }
        C7297q.m1879n(m23030g(), "Result is not ready.");
        return m23028i();
    }

    @Deprecated
    /* renamed from: f */
    public final void m23031f(@RecentlyNonNull Status status) {
        synchronized (this.f7722a) {
            if (!m23030g()) {
                m23029h(mo2634e(status));
                this.f7733l = true;
            }
        }
    }

    /* renamed from: h */
    public final void m23029h(@RecentlyNonNull R r) {
        synchronized (this.f7722a) {
            if (!this.f7733l && !this.f7732k) {
                m23030g();
                C7297q.m1879n(!m23030g(), "Results have already been set");
                C7297q.m1879n(!this.f7731j, "Result has already been consumed");
                m23027j(r);
                return;
            }
            m23025l(r);
        }
    }

    /* renamed from: i */
    public final R m23028i() {
        R r;
        synchronized (this.f7722a) {
            C7297q.m1879n(!this.f7731j, "Result has already been consumed.");
            C7297q.m1879n(m23030g(), "Result is not ready.");
            r = this.f7729h;
            this.f7729h = null;
            this.f7727f = null;
            this.f7731j = true;
        }
        if (this.f7728g.getAndSet(null) == null) {
            return (R) C7297q.m1883j(r);
        }
        throw null;
    }

    /* renamed from: j */
    public final void m23027j(R r) {
        this.f7729h = r;
        this.f7730i = r.getStatus();
        this.f7734m = null;
        this.f7725d.countDown();
        if (this.f7732k) {
            this.f7727f = null;
        } else {
            InterfaceC6910m<? super R> interfaceC6910m = this.f7727f;
            if (interfaceC6910m == null) {
                if (this.f7729h instanceof InterfaceC6907j) {
                    this.mResultGuardian = new C7022j1(this, null);
                }
            } else {
                this.f7723b.removeMessages(2);
                this.f7723b.m23023a(interfaceC6910m, m23028i());
            }
        }
        ArrayList<AbstractC6904h.InterfaceC6905a> arrayList = this.f7726e;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).mo1927a(this.f7730i);
        }
        this.f7726e.clear();
    }

    public BasePendingResult(AbstractC6900f abstractC6900f) {
        this.f7722a = new Object();
        this.f7725d = new CountDownLatch(1);
        this.f7726e = new ArrayList<>();
        this.f7728g = new AtomicReference<>();
        this.f7735n = false;
        this.f7723b = new HandlerC1410a<>(abstractC6900f != null ? abstractC6900f.mo2670d() : Looper.getMainLooper());
        this.f7724c = new WeakReference<>(abstractC6900f);
    }
}
