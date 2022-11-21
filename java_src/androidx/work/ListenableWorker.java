package androidx.work;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.Keep;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import p075h1.C3944d;
import p084i1.InterfaceC4086a;
import p115l5.InterfaceFutureC4566a;
import p209w0.AbstractC7134v;
import p209w0.C7108e;
/* loaded from: classes.dex */
public abstract class ListenableWorker {

    /* renamed from: a */
    public Context f1315a;

    /* renamed from: b */
    public WorkerParameters f1316b;

    /* renamed from: d */
    public volatile boolean f1317d;

    /* renamed from: k */
    public boolean f1318k;

    /* renamed from: p */
    public boolean f1319p;

    /* renamed from: androidx.work.ListenableWorker$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0370a {

        /* renamed from: androidx.work.ListenableWorker$a$a */
        /* loaded from: classes.dex */
        public static final class C0371a extends AbstractC0370a {

            /* renamed from: a */
            public final C0380b f1320a;

            public C0371a() {
                this(C0380b.f1365c);
            }

            /* renamed from: e */
            public C0380b m26697e() {
                return this.f1320a;
            }

            public String toString() {
                return "Failure {mOutputData=" + this.f1320a + '}';
            }

            public C0371a(C0380b c0380b) {
                this.f1320a = c0380b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && C0371a.class == obj.getClass()) {
                    return this.f1320a.equals(((C0371a) obj).f1320a);
                }
                return false;
            }

            public int hashCode() {
                return (C0371a.class.getName().hashCode() * 31) + this.f1320a.hashCode();
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$b */
        /* loaded from: classes.dex */
        public static final class C0372b extends AbstractC0370a {
            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && C0372b.class == obj.getClass();
            }

            public String toString() {
                return "Retry";
            }

            public int hashCode() {
                return C0372b.class.getName().hashCode();
            }
        }

        /* renamed from: androidx.work.ListenableWorker$a$c */
        /* loaded from: classes.dex */
        public static final class C0373c extends AbstractC0370a {

            /* renamed from: a */
            public final C0380b f1321a;

            public C0373c() {
                this(C0380b.f1365c);
            }

            /* renamed from: e */
            public C0380b m26696e() {
                return this.f1321a;
            }

            public String toString() {
                return "Success {mOutputData=" + this.f1321a + '}';
            }

            public C0373c(C0380b c0380b) {
                this.f1321a = c0380b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && C0373c.class == obj.getClass()) {
                    return this.f1321a.equals(((C0373c) obj).f1321a);
                }
                return false;
            }

            public int hashCode() {
                return (C0373c.class.getName().hashCode() * 31) + this.f1321a.hashCode();
            }
        }

        /* renamed from: a */
        public static AbstractC0370a m26701a() {
            return new C0371a();
        }

        /* renamed from: b */
        public static AbstractC0370a m26700b() {
            return new C0372b();
        }

        /* renamed from: c */
        public static AbstractC0370a m26699c() {
            return new C0373c();
        }

        /* renamed from: d */
        public static AbstractC0370a m26698d(C0380b c0380b) {
            return new C0373c(c0380b);
        }
    }

    public final Context getApplicationContext() {
        return this.f1315a;
    }

    public Executor getBackgroundExecutor() {
        return this.f1316b.m26694a();
    }

    public final UUID getId() {
        return this.f1316b.m26692c();
    }

    public final C0380b getInputData() {
        return this.f1316b.m26691d();
    }

    public final Network getNetwork() {
        return this.f1316b.m26690e();
    }

    public final int getRunAttemptCount() {
        return this.f1316b.m26688g();
    }

    public final Set<String> getTags() {
        return this.f1316b.m26687h();
    }

    public InterfaceC4086a getTaskExecutor() {
        return this.f1316b.m26686i();
    }

    public final List<String> getTriggeredContentAuthorities() {
        return this.f1316b.m26685j();
    }

    public final List<Uri> getTriggeredContentUris() {
        return this.f1316b.m26684k();
    }

    public AbstractC7134v getWorkerFactory() {
        return this.f1316b.m26683l();
    }

    public boolean isRunInForeground() {
        return this.f1319p;
    }

    public final boolean isStopped() {
        return this.f1317d;
    }

    public final boolean isUsed() {
        return this.f1318k;
    }

    public void onStopped() {
    }

    public final InterfaceFutureC4566a<Void> setForegroundAsync(C7108e c7108e) {
        this.f1319p = true;
        return this.f1316b.m26693b().mo2498a(getApplicationContext(), getId(), c7108e);
    }

    public void setRunInForeground(boolean z) {
        this.f1319p = z;
    }

    public final void setUsed() {
        this.f1318k = true;
    }

    public abstract InterfaceFutureC4566a<AbstractC0370a> startWork();

    public final void stop() {
        this.f1317d = true;
        onStopped();
    }

    public InterfaceFutureC4566a<Void> setProgressAsync(C0380b c0380b) {
        return this.f1316b.m26689f().mo2479a(getApplicationContext(), getId(), c0380b);
    }

    @Keep
    @SuppressLint({"BanKeepAnnotation"})
    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        if (context != null) {
            if (workerParameters != null) {
                this.f1315a = context;
                this.f1316b = workerParameters;
                return;
            }
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        throw new IllegalArgumentException("Application Context is null");
    }

    public InterfaceFutureC4566a<C7108e> getForegroundInfoAsync() {
        C3944d m17691u = C3944d.m17691u();
        m17691u.mo17693r(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return m17691u;
    }
}
