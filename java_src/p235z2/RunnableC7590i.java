package p235z2;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;
import p016b3.C0497k2;
import p168r4.C5592av;
import p168r4.C6040n;
import p168r4.C6225rz;
import p168r4.C6263t;
import p168r4.C6479yu;
import p168r4.InterfaceC6152q;
import p168r4.cm0;
import p168r4.fz2;
import p168r4.hx2;
import p168r4.im0;
import p168r4.ky2;
import p168r4.qm0;
import p168r4.vl0;
/* renamed from: z2.i */
/* loaded from: classes.dex */
public final class RunnableC7590i implements Runnable, InterfaceC6152q {

    /* renamed from: k */
    public final boolean f37554k;

    /* renamed from: p */
    public final boolean f37555p;

    /* renamed from: q */
    public final boolean f37556q;

    /* renamed from: r */
    public final Executor f37557r;

    /* renamed from: s */
    public final hx2 f37558s;

    /* renamed from: t */
    public Context f37559t;

    /* renamed from: u */
    public final Context f37560u;

    /* renamed from: v */
    public im0 f37561v;

    /* renamed from: w */
    public final im0 f37562w;

    /* renamed from: x */
    public final boolean f37563x;

    /* renamed from: z */
    public int f37565z;

    /* renamed from: a */
    public final List<Object[]> f37551a = new Vector();

    /* renamed from: b */
    public final AtomicReference<InterfaceC6152q> f37552b = new AtomicReference<>();

    /* renamed from: d */
    public final AtomicReference<InterfaceC6152q> f37553d = new AtomicReference<>();

    /* renamed from: y */
    public final CountDownLatch f37564y = new CountDownLatch(1);

    /* renamed from: o */
    public static final Context m1006o(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: b */
    public final String mo1019b(Context context, String str, View view) {
        return mo1016e(context, str, view, null);
    }

    /* renamed from: k */
    public final int m1010k() {
        if (!this.f37555p || this.f37554k) {
            return this.f37565z;
        }
        return 1;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.content.Context, r4.im0] */
    @Override // java.lang.Runnable
    public final void run() {
        try {
            boolean z = this.f37561v.f25174k;
            final boolean z2 = false;
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30815H0)).booleanValue() && z) {
                z2 = true;
            }
            if (m1010k() == 1) {
                m1008m(z2);
                if (this.f37565z == 2) {
                    this.f37557r.execute(new Runnable(this, z2) { // from class: z2.g

                        /* renamed from: a */
                        public final RunnableC7590i f37548a;

                        /* renamed from: b */
                        public final boolean f37549b;

                        {
                            this.f37548a = this;
                            this.f37549b = z2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f37548a.m1011j(this.f37549b);
                        }
                    });
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    C6040n m9237m = C6040n.m9237m(this.f37561v.f25171a, m1006o(this.f37559t), z2, this.f37563x);
                    this.f37553d.set(m9237m);
                    if (this.f37556q && !m9237m.m9236n()) {
                        this.f37565z = 1;
                        m1008m(z2);
                    }
                } catch (NullPointerException e) {
                    this.f37565z = 1;
                    m1008m(z2);
                    this.f37558s.m10766c(2031, System.currentTimeMillis() - currentTimeMillis, e);
                }
            }
        } finally {
            this.f37564y.countDown();
            this.f37559t = null;
            this.f37561v = null;
        }
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: d */
    public final String mo1017d(Context context, View view, Activity activity) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30925U6)).booleanValue()) {
            if (m1012i()) {
                InterfaceC6152q m1007n = m1007n();
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30933V6)).booleanValue()) {
                    C7601t.m939d();
                    C0497k2.m26309m(view, 2, null);
                }
                if (m1007n != null) {
                    return m1007n.mo1017d(context, view, null);
                }
                return "";
            }
            return "";
        }
        InterfaceC6152q m1007n2 = m1007n();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30933V6)).booleanValue()) {
            C7601t.m939d();
            C0497k2.m26309m(view, 2, null);
        }
        if (m1007n2 != null) {
            return m1007n2.mo1017d(context, view, null);
        }
        return "";
    }

    /* renamed from: i */
    public final boolean m1012i() {
        try {
            this.f37564y.await();
            return true;
        } catch (InterruptedException e) {
            cm0.m12436g("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    /* renamed from: m */
    public final void m1008m(boolean z) {
        this.f37552b.set(C6263t.m6940w(this.f37561v.f25171a, m1006o(this.f37559t), z, this.f37565z));
    }

    public RunnableC7590i(Context context, im0 im0Var) {
        this.f37559t = context;
        this.f37560u = context;
        this.f37561v = im0Var;
        this.f37562w = im0Var;
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        this.f37557r = newCachedThreadPool;
        boolean booleanValue = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31163y1)).booleanValue();
        this.f37563x = booleanValue;
        hx2 m10768a = hx2.m10768a(context, newCachedThreadPool, booleanValue);
        this.f37558s = m10768a;
        this.f37555p = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31131u1)).booleanValue();
        this.f37556q = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31171z1)).booleanValue();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31155x1)).booleanValue()) {
            this.f37565z = 2;
        } else {
            this.f37565z = 1;
        }
        Context context2 = this.f37559t;
        C7589h c7589h = new C7589h(this);
        this.f37554k = new fz2(this.f37559t, ky2.m9836b(context2, m10768a), c7589h, ((Boolean) C5592av.m12935c().m8098c(C6225rz.f31139v1)).booleanValue()).m11323d(1);
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30912T1)).booleanValue()) {
            qm0.f30190a.execute(this);
            return;
        }
        C6479yu.m4568a();
        if (vl0.m6114n()) {
            qm0.f30190a.execute(this);
        } else {
            run();
        }
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: a */
    public final String mo1020a(Context context) {
        InterfaceC6152q m1007n;
        if (m1012i() && (m1007n = m1007n()) != null) {
            m1009l();
            return m1007n.mo1020a(m1006o(context));
        }
        return "";
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: c */
    public final void mo1018c(View view) {
        InterfaceC6152q m1007n = m1007n();
        if (m1007n != null) {
            m1007n.mo1018c(view);
        }
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: e */
    public final String mo1016e(Context context, String str, View view, Activity activity) {
        if (m1012i()) {
            InterfaceC6152q m1007n = m1007n();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30933V6)).booleanValue()) {
                C7601t.m939d();
                C0497k2.m26309m(view, 4, null);
            }
            if (m1007n != null) {
                m1009l();
                return m1007n.mo1016e(m1006o(context), str, view, activity);
            }
            return "";
        }
        return "";
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: f */
    public final void mo1015f(int i, int i2, int i3) {
        InterfaceC6152q m1007n = m1007n();
        if (m1007n != null) {
            m1009l();
            m1007n.mo1015f(i, i2, i3);
            return;
        }
        this.f37551a.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    @Override // p168r4.InterfaceC6152q
    /* renamed from: g */
    public final void mo1014g(MotionEvent motionEvent) {
        InterfaceC6152q m1007n = m1007n();
        if (m1007n != null) {
            m1009l();
            m1007n.mo1014g(motionEvent);
            return;
        }
        this.f37551a.add(new Object[]{motionEvent});
    }

    /* renamed from: j */
    public final /* synthetic */ void m1011j(boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            C6040n.m9237m(this.f37562w.f25171a, m1006o(this.f37560u), z, this.f37563x).m9233q();
        } catch (NullPointerException e) {
            this.f37558s.m10766c(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }

    /* renamed from: l */
    public final void m1009l() {
        InterfaceC6152q m1007n = m1007n();
        if (!this.f37551a.isEmpty() && m1007n != null) {
            for (Object[] objArr : this.f37551a) {
                int length = objArr.length;
                if (length == 1) {
                    m1007n.mo1014g((MotionEvent) objArr[0]);
                } else if (length == 3) {
                    m1007n.mo1015f(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.f37551a.clear();
        }
    }

    /* renamed from: n */
    public final InterfaceC6152q m1007n() {
        if (m1010k() == 2) {
            return this.f37553d.get();
        }
        return this.f37552b.get();
    }
}
