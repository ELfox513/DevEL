package p097j5;

import android.app.Activity;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import p220x3.C7297q;
/* renamed from: j5.i0 */
/* loaded from: classes2.dex */
public final class C4347i0<TResult> extends AbstractC4346i<TResult> {

    /* renamed from: a */
    public final Object f18216a = new Object();

    /* renamed from: b */
    public final C4339e0<TResult> f18217b = new C4339e0<>();

    /* renamed from: c */
    public boolean f18218c;

    /* renamed from: d */
    public volatile boolean f18219d;

    /* renamed from: e */
    public TResult f18220e;

    /* renamed from: f */
    public Exception f18221f;

    @Override // p097j5.AbstractC4346i
    /* renamed from: g */
    public final <TContinuationResult> AbstractC4346i<TContinuationResult> mo16795g(InterfaceC4330a<TResult, TContinuationResult> interfaceC4330a) {
        return mo16794h(C4350k.f18225a, interfaceC4330a);
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: i */
    public final <TContinuationResult> AbstractC4346i<TContinuationResult> mo16793i(InterfaceC4330a<TResult, AbstractC4346i<TContinuationResult>> interfaceC4330a) {
        return mo16792j(C4350k.f18225a, interfaceC4330a);
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: n */
    public final boolean mo16788n() {
        return this.f18219d;
    }

    /* renamed from: x */
    public final void m16778x() {
        C7297q.m1879n(this.f18218c, "Task is not yet complete");
    }

    /* renamed from: y */
    public final void m16777y() {
        if (this.f18218c) {
            throw C4332b.m16808a(this);
        }
    }

    /* renamed from: z */
    public final void m16776z() {
        if (this.f18219d) {
            throw new CancellationException("Task is already canceled.");
        }
    }

    /* renamed from: A */
    public final void m16802A() {
        synchronized (this.f18216a) {
            if (!this.f18218c) {
                return;
            }
            this.f18217b.m16805b(this);
        }
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: a */
    public final AbstractC4346i<TResult> mo16801a(Executor executor, InterfaceC4334c interfaceC4334c) {
        this.f18217b.m16806a(new C4361u(executor, interfaceC4334c));
        m16802A();
        return this;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: b */
    public final AbstractC4346i<TResult> mo16800b(Activity activity, InterfaceC4336d<TResult> interfaceC4336d) {
        C4363w c4363w = new C4363w(C4350k.f18225a, interfaceC4336d);
        this.f18217b.m16806a(c4363w);
        C4345h0.m16804l(activity).m16803m(c4363w);
        m16802A();
        return this;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: c */
    public final AbstractC4346i<TResult> mo16799c(InterfaceC4336d<TResult> interfaceC4336d) {
        this.f18217b.m16806a(new C4363w(C4350k.f18225a, interfaceC4336d));
        m16802A();
        return this;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: d */
    public final AbstractC4346i<TResult> mo16798d(Executor executor, InterfaceC4336d<TResult> interfaceC4336d) {
        this.f18217b.m16806a(new C4363w(executor, interfaceC4336d));
        m16802A();
        return this;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: e */
    public final AbstractC4346i<TResult> mo16797e(Executor executor, InterfaceC4338e interfaceC4338e) {
        this.f18217b.m16806a(new C4365y(executor, interfaceC4338e));
        m16802A();
        return this;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: f */
    public final AbstractC4346i<TResult> mo16796f(Executor executor, InterfaceC4340f<? super TResult> interfaceC4340f) {
        this.f18217b.m16806a(new C4331a0(executor, interfaceC4340f));
        m16802A();
        return this;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: h */
    public final <TContinuationResult> AbstractC4346i<TContinuationResult> mo16794h(Executor executor, InterfaceC4330a<TResult, TContinuationResult> interfaceC4330a) {
        C4347i0 c4347i0 = new C4347i0();
        this.f18217b.m16806a(new C4357q(executor, interfaceC4330a, c4347i0));
        m16802A();
        return c4347i0;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: j */
    public final <TContinuationResult> AbstractC4346i<TContinuationResult> mo16792j(Executor executor, InterfaceC4330a<TResult, AbstractC4346i<TContinuationResult>> interfaceC4330a) {
        C4347i0 c4347i0 = new C4347i0();
        this.f18217b.m16806a(new C4359s(executor, interfaceC4330a, c4347i0));
        m16802A();
        return c4347i0;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: k */
    public final Exception mo16791k() {
        Exception exc;
        synchronized (this.f18216a) {
            exc = this.f18221f;
        }
        return exc;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: l */
    public final TResult mo16790l() {
        TResult tresult;
        synchronized (this.f18216a) {
            m16778x();
            m16776z();
            Exception exc = this.f18221f;
            if (exc == null) {
                tresult = this.f18220e;
            } else {
                throw new C4342g(exc);
            }
        }
        return tresult;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: m */
    public final <X extends Throwable> TResult mo16789m(Class<X> cls) {
        TResult tresult;
        synchronized (this.f18216a) {
            m16778x();
            m16776z();
            if (!cls.isInstance(this.f18221f)) {
                Exception exc = this.f18221f;
                if (exc == null) {
                    tresult = this.f18220e;
                } else {
                    throw new C4342g(exc);
                }
            } else {
                throw cls.cast(this.f18221f);
            }
        }
        return tresult;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: o */
    public final boolean mo16787o() {
        boolean z;
        synchronized (this.f18216a) {
            z = this.f18218c;
        }
        return z;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: p */
    public final boolean mo16786p() {
        boolean z;
        synchronized (this.f18216a) {
            z = false;
            if (this.f18218c && !this.f18219d && this.f18221f == null) {
                z = true;
            }
        }
        return z;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: q */
    public final <TContinuationResult> AbstractC4346i<TContinuationResult> mo16785q(InterfaceC4344h<TResult, TContinuationResult> interfaceC4344h) {
        Executor executor = C4350k.f18225a;
        C4347i0 c4347i0 = new C4347i0();
        this.f18217b.m16806a(new C4335c0(executor, interfaceC4344h, c4347i0));
        m16802A();
        return c4347i0;
    }

    @Override // p097j5.AbstractC4346i
    /* renamed from: r */
    public final <TContinuationResult> AbstractC4346i<TContinuationResult> mo16784r(Executor executor, InterfaceC4344h<TResult, TContinuationResult> interfaceC4344h) {
        C4347i0 c4347i0 = new C4347i0();
        this.f18217b.m16806a(new C4335c0(executor, interfaceC4344h, c4347i0));
        m16802A();
        return c4347i0;
    }

    /* renamed from: s */
    public final void m16783s(TResult tresult) {
        synchronized (this.f18216a) {
            m16777y();
            this.f18218c = true;
            this.f18220e = tresult;
        }
        this.f18217b.m16805b(this);
    }

    /* renamed from: t */
    public final boolean m16782t(TResult tresult) {
        synchronized (this.f18216a) {
            if (this.f18218c) {
                return false;
            }
            this.f18218c = true;
            this.f18220e = tresult;
            this.f18217b.m16805b(this);
            return true;
        }
    }

    /* renamed from: u */
    public final void m16781u(Exception exc) {
        C7297q.m1882k(exc, "Exception must not be null");
        synchronized (this.f18216a) {
            m16777y();
            this.f18218c = true;
            this.f18221f = exc;
        }
        this.f18217b.m16805b(this);
    }

    /* renamed from: v */
    public final boolean m16780v(Exception exc) {
        C7297q.m1882k(exc, "Exception must not be null");
        synchronized (this.f18216a) {
            if (this.f18218c) {
                return false;
            }
            this.f18218c = true;
            this.f18221f = exc;
            this.f18217b.m16805b(this);
            return true;
        }
    }

    /* renamed from: w */
    public final boolean m16779w() {
        synchronized (this.f18216a) {
            if (this.f18218c) {
                return false;
            }
            this.f18218c = true;
            this.f18219d = true;
            this.f18217b.m16805b(this);
            return true;
        }
    }
}
