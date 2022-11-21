package p168r4;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: r4.n */
/* loaded from: classes2.dex */
public final class C6040n implements InterfaceC6152q {

    /* renamed from: z */
    public static C6040n f28028z;

    /* renamed from: a */
    public final Context f28029a;

    /* renamed from: b */
    public final xy2 f28030b;

    /* renamed from: d */
    public final fz2 f28031d;

    /* renamed from: k */
    public final hz2 f28032k;

    /* renamed from: p */
    public final C6116p0 f28033p;

    /* renamed from: q */
    public final hx2 f28034q;

    /* renamed from: r */
    public final Executor f28035r;

    /* renamed from: s */
    public final ez2 f28036s;

    /* renamed from: w */
    public volatile boolean f28040w;

    /* renamed from: y */
    public final int f28042y;

    /* renamed from: u */
    public volatile long f28038u = 0;

    /* renamed from: v */
    public final Object f28039v = new Object();

    /* renamed from: x */
    public volatile boolean f28041x = false;

    /* renamed from: t */
    public final CountDownLatch f28037t = new CountDownLatch(1);

    @Override // p168r4.InterfaceC6152q
    /* renamed from: b */
    public final String mo1019b(Context context, String str, View view) {
        return mo1016e(context, str, view, null);
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: c */
    public final void mo1018c(View view) {
        this.f28033p.m8541c(view);
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: f */
    public final void mo1015f(int i, int i2, int i3) {
    }

    /* renamed from: n */
    public final synchronized boolean m9236n() {
        return this.f28041x;
    }

    /* renamed from: o */
    public final synchronized void m9235o() {
        long currentTimeMillis = System.currentTimeMillis();
        wy2 m9232r = m9232r(1);
        if (m9232r != null) {
            if (this.f28032k.m10754a(m9232r)) {
                this.f28041x = true;
                this.f28037t.countDown();
                return;
            }
            return;
        }
        this.f28034q.m10767b(4013, System.currentTimeMillis() - currentTimeMillis);
    }

    @Deprecated
    /* renamed from: l */
    public static synchronized C6040n m9238l(String str, Context context, Executor executor, boolean z, boolean z2) {
        C6040n c6040n;
        C6411x c6411x;
        synchronized (C6040n.class) {
            if (f28028z == null) {
                ix2 m10158d = jx2.m10158d();
                m10158d.mo9541a(str);
                m10158d.mo9540b(z);
                jx2 mo9538d = m10158d.mo9538d();
                hx2 m10768a = hx2.m10768a(context, executor, z2);
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30936W1)).booleanValue()) {
                    c6411x = C6411x.m5532b(context);
                } else {
                    c6411x = null;
                }
                by2 m12682a = by2.m12682a(context, executor, m10768a, mo9538d);
                C6079o0 c6079o0 = new C6079o0(context);
                C6116p0 c6116p0 = new C6116p0(mo9538d, m12682a, new View$OnAttachStateChangeListenerC5635c1(context, c6079o0), c6079o0, c6411x);
                int m9836b = ky2.m9836b(context, m10768a);
                dx2 dx2Var = new dx2();
                C6040n c6040n2 = new C6040n(context, m10768a, new xy2(context, m9836b), new fz2(context, m9836b, new C5929k(m10768a), ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31139v1)).booleanValue()), new hz2(context, c6116p0, m10768a, dx2Var), c6116p0, executor, dx2Var, m9836b);
                f28028z = c6040n2;
                c6040n2.m9235o();
                f28028z.m9233q();
            }
            c6040n = f28028z;
        }
        return c6040n;
    }

    /* renamed from: m */
    public static synchronized C6040n m9237m(String str, Context context, boolean z, boolean z2) {
        C6040n m9238l;
        synchronized (C6040n.class) {
            m9238l = m9238l(str, context, Executors.newCachedThreadPool(), z, z2);
        }
        return m9238l;
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: e */
    public final String mo1016e(Context context, String str, View view, Activity activity) {
        m9233q();
        kx2 m10753b = this.f28032k.m10753b();
        if (m10753b != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String mo5976a = m10753b.mo5976a(context, null, str, view, activity);
            this.f28034q.m10765d(5000, System.currentTimeMillis() - currentTimeMillis, mo5976a, null);
            return mo5976a;
        }
        return "";
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: g */
    public final void mo1014g(MotionEvent motionEvent) {
        kx2 m10753b = this.f28032k.m10753b();
        if (m10753b != null) {
            try {
                m10753b.mo5975b(null, motionEvent);
            } catch (gz2 e) {
                this.f28034q.m10766c(e.m11033a(), -1L, e);
            }
        }
    }

    /* renamed from: q */
    public final void m9233q() {
        if (!this.f28040w) {
            synchronized (this.f28039v) {
                if (!this.f28040w) {
                    if ((System.currentTimeMillis() / 1000) - this.f28038u < 3600) {
                        return;
                    }
                    wy2 m10752c = this.f28032k.m10752c();
                    if ((m10752c == null || m10752c.m5543e(3600L)) && ky2.m9837a(this.f28042y)) {
                        this.f28035r.execute(new RunnableC6003m(this));
                    }
                }
            }
        }
    }

    /* renamed from: r */
    public final wy2 m9232r(int i) {
        if (!ky2.m9837a(this.f28042y)) {
            return null;
        }
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31123t1)).booleanValue()) {
            return this.f28031d.m11324c(1);
        }
        return this.f28030b.m4951c(1);
    }

    public C6040n(Context context, hx2 hx2Var, xy2 xy2Var, fz2 fz2Var, hz2 hz2Var, C6116p0 c6116p0, Executor executor, dx2 dx2Var, int i) {
        this.f28029a = context;
        this.f28034q = hx2Var;
        this.f28030b = xy2Var;
        this.f28031d = fz2Var;
        this.f28032k = hz2Var;
        this.f28033p = c6116p0;
        this.f28035r = executor;
        this.f28042y = i;
        this.f28036s = new C5966l(this, dx2Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0099, code lost:
        if (r4.m9520C().m8515D().equals(r5.m8515D()) != false) goto L47;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m9234p(p168r4.C6040n r12) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6040n.m9234p(r4.n):void");
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: a */
    public final String mo1020a(Context context) {
        m9233q();
        kx2 m10753b = this.f28032k.m10753b();
        if (m10753b != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String mo5974c = m10753b.mo5974c(context, null);
            this.f28034q.m10765d(5001, System.currentTimeMillis() - currentTimeMillis, mo5974c, null);
            return mo5974c;
        }
        return "";
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: d */
    public final String mo1017d(Context context, View view, Activity activity) {
        m9233q();
        kx2 m10753b = this.f28032k.m10753b();
        if (m10753b != null) {
            long currentTimeMillis = System.currentTimeMillis();
            String mo5973d = m10753b.mo5973d(context, null, view, null);
            this.f28034q.m10765d(5002, System.currentTimeMillis() - currentTimeMillis, mo5973d, null);
            return mo5973d;
        }
        return "";
    }
}
