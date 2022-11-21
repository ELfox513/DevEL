package androidx.work.impl.foreground;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.ServiceC0327j;
import androidx.work.impl.foreground.C0407a;
import p209w0.AbstractC7114j;
/* loaded from: classes.dex */
public class SystemForegroundService extends ServiceC0327j implements C0407a.InterfaceC0409b {

    /* renamed from: q */
    public static final String f1436q = AbstractC7114j.m2489f("SystemFgService");

    /* renamed from: r */
    public static SystemForegroundService f1437r = null;

    /* renamed from: b */
    public Handler f1438b;

    /* renamed from: d */
    public boolean f1439d;

    /* renamed from: k */
    public C0407a f1440k;

    /* renamed from: p */
    public NotificationManager f1441p;

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$a */
    /* loaded from: classes.dex */
    public class RunnableC0404a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f1442a;

        /* renamed from: b */
        public final /* synthetic */ Notification f1443b;

        /* renamed from: d */
        public final /* synthetic */ int f1444d;

        public RunnableC0404a(int i, Notification notification, int i2) {
            this.f1442a = i;
            this.f1443b = notification;
            this.f1444d = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 29) {
                SystemForegroundService.this.startForeground(this.f1442a, this.f1443b, this.f1444d);
            } else {
                SystemForegroundService.this.startForeground(this.f1442a, this.f1443b);
            }
        }
    }

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$b */
    /* loaded from: classes.dex */
    public class RunnableC0405b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f1446a;

        /* renamed from: b */
        public final /* synthetic */ Notification f1447b;

        public RunnableC0405b(int i, Notification notification) {
            this.f1446a = i;
            this.f1447b = notification;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f1441p.notify(this.f1446a, this.f1447b);
        }
    }

    /* renamed from: androidx.work.impl.foreground.SystemForegroundService$c */
    /* loaded from: classes.dex */
    public class RunnableC0406c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f1449a;

        public RunnableC0406c(int i) {
            this.f1449a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemForegroundService.this.f1441p.cancel(this.f1449a);
        }
    }

    @Override // androidx.work.impl.foreground.C0407a.InterfaceC0409b
    /* renamed from: c */
    public void mo26580c(int i, int i2, Notification notification) {
        this.f1438b.post(new RunnableC0404a(i, notification, i2));
    }

    @Override // androidx.work.impl.foreground.C0407a.InterfaceC0409b
    /* renamed from: d */
    public void mo26579d(int i, Notification notification) {
        this.f1438b.post(new RunnableC0405b(i, notification));
    }

    @Override // androidx.work.impl.foreground.C0407a.InterfaceC0409b
    /* renamed from: e */
    public void mo26578e(int i) {
        this.f1438b.post(new RunnableC0406c(i));
    }

    @Override // androidx.work.impl.foreground.C0407a.InterfaceC0409b
    public void stop() {
        this.f1439d = true;
        AbstractC7114j.m2491c().mo2488a(f1436q, "All commands completed.", new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 26) {
            stopForeground(true);
        }
        f1437r = null;
        stopSelf();
    }

    /* renamed from: f */
    public final void m26591f() {
        this.f1438b = new Handler(Looper.getMainLooper());
        this.f1441p = (NotificationManager) getApplicationContext().getSystemService("notification");
        C0407a c0407a = new C0407a(getApplicationContext());
        this.f1440k = c0407a;
        c0407a.m26581m(this);
    }

    @Override // androidx.lifecycle.ServiceC0327j, android.app.Service
    public void onCreate() {
        super.onCreate();
        f1437r = this;
        m26591f();
    }

    @Override // androidx.lifecycle.ServiceC0327j, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f1440k.m26583k();
    }

    @Override // androidx.lifecycle.ServiceC0327j, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f1439d) {
            AbstractC7114j.m2491c().mo2486d(f1436q, "Re-initializing SystemForegroundService after a request to shut-down.", new Throwable[0]);
            this.f1440k.m26583k();
            m26591f();
            this.f1439d = false;
        }
        if (intent != null) {
            this.f1440k.m26582l(intent);
            return 3;
        }
        return 3;
    }
}
