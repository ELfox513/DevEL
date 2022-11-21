package p110l0;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import p022c0.C1025h;
/* renamed from: l0.a */
/* loaded from: classes.dex */
public abstract class AbstractC4540a<D> extends C4542b<D> {

    /* renamed from: j */
    public final Executor f18563j;

    /* renamed from: k */
    public volatile AbstractC4540a<D>.RunnableC4541a f18564k;

    /* renamed from: l */
    public volatile AbstractC4540a<D>.RunnableC4541a f18565l;

    /* renamed from: m */
    public long f18566m;

    /* renamed from: n */
    public long f18567n;

    /* renamed from: o */
    public Handler f18568o;

    /* renamed from: l0.a$a */
    /* loaded from: classes.dex */
    public final class RunnableC4541a extends AbstractC4545c<Void, Void, D> implements Runnable {

        /* renamed from: v */
        public final CountDownLatch f18569v = new CountDownLatch(1);

        /* renamed from: w */
        public boolean f18570w;

        @Override // p110l0.AbstractC4545c
        /* renamed from: n */
        public D mo16025b(Void... voidArr) {
            return (D) AbstractC4540a.this.m16055C();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18570w = false;
            AbstractC4540a.this.m16051z();
        }

        public RunnableC4541a() {
        }

        @Override // p110l0.AbstractC4545c
        /* renamed from: h */
        public void mo16019h(D d) {
            try {
                AbstractC4540a.this.m16053x(this, d);
            } finally {
                this.f18569v.countDown();
            }
        }

        @Override // p110l0.AbstractC4545c
        /* renamed from: i */
        public void mo16018i(D d) {
            try {
                AbstractC4540a.this.m16052y(this, d);
            } finally {
                this.f18569v.countDown();
            }
        }
    }

    public AbstractC4540a(Context context) {
        this(context, AbstractC4545c.f18583s);
    }

    /* renamed from: A */
    public abstract D mo13092A();

    /* renamed from: B */
    public void m16056B(D d) {
    }

    /* renamed from: C */
    public D m16055C() {
        return mo13092A();
    }

    /* renamed from: w */
    public void m16054w() {
    }

    public AbstractC4540a(Context context, Executor executor) {
        super(context);
        this.f18567n = -10000L;
        this.f18563j = executor;
    }

    @Override // p110l0.C4542b
    /* renamed from: k */
    public boolean mo16039k() {
        if (this.f18564k == null) {
            return false;
        }
        if (!this.f18576e) {
            this.f18579h = true;
        }
        if (this.f18565l != null) {
            if (this.f18564k.f18570w) {
                this.f18564k.f18570w = false;
                this.f18568o.removeCallbacks(this.f18564k);
            }
            this.f18564k = null;
            return false;
        } else if (this.f18564k.f18570w) {
            this.f18564k.f18570w = false;
            this.f18568o.removeCallbacks(this.f18564k);
            this.f18564k = null;
            return false;
        } else {
            boolean m16026a = this.f18564k.m16026a(false);
            if (m16026a) {
                this.f18565l = this.f18564k;
                m16054w();
            }
            this.f18564k = null;
            return m16026a;
        }
    }

    /* renamed from: y */
    public void m16052y(AbstractC4540a<D>.RunnableC4541a runnableC4541a, D d) {
        if (this.f18564k != runnableC4541a) {
            m16053x(runnableC4541a, d);
        } else if (m16041i()) {
            m16056B(d);
        } else {
            m16047c();
            this.f18567n = SystemClock.uptimeMillis();
            this.f18564k = null;
            m16044f(d);
        }
    }

    /* renamed from: z */
    public void m16051z() {
        if (this.f18565l == null && this.f18564k != null) {
            if (this.f18564k.f18570w) {
                this.f18564k.f18570w = false;
                this.f18568o.removeCallbacks(this.f18564k);
            }
            if (this.f18566m > 0 && SystemClock.uptimeMillis() < this.f18567n + this.f18566m) {
                this.f18564k.f18570w = true;
                this.f18568o.postAtTime(this.f18564k, this.f18567n + this.f18566m);
                return;
            }
            this.f18564k.m16024c(this.f18563j, null);
        }
    }

    @Override // p110l0.C4542b
    @Deprecated
    /* renamed from: g */
    public void mo16043g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo16043g(str, fileDescriptor, printWriter, strArr);
        if (this.f18564k != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f18564k);
            printWriter.print(" waiting=");
            printWriter.println(this.f18564k.f18570w);
        }
        if (this.f18565l != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f18565l);
            printWriter.print(" waiting=");
            printWriter.println(this.f18565l.f18570w);
        }
        if (this.f18566m != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            C1025h.m24805c(this.f18566m, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            C1025h.m24806b(this.f18567n, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    @Override // p110l0.C4542b
    /* renamed from: m */
    public void mo16037m() {
        super.mo16037m();
        m16048b();
        this.f18564k = new RunnableC4541a();
        m16051z();
    }

    /* renamed from: x */
    public void m16053x(AbstractC4540a<D>.RunnableC4541a runnableC4541a, D d) {
        m16056B(d);
        if (this.f18565l == runnableC4541a) {
            m16032s();
            this.f18567n = SystemClock.uptimeMillis();
            this.f18565l = null;
            m16045e();
            m16051z();
        }
    }
}
