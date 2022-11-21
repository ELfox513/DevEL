package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.lifecycle.ServiceC0327j;
import androidx.work.impl.background.systemalarm.C0399d;
import p066g1.C3560l;
import p209w0.AbstractC7114j;
/* loaded from: classes.dex */
public class SystemAlarmService extends ServiceC0327j implements C0399d.InterfaceC0402c {

    /* renamed from: k */
    public static final String f1394k = AbstractC7114j.m2489f("SystemAlarmService");

    /* renamed from: b */
    public C0399d f1395b;

    /* renamed from: d */
    public boolean f1396d;

    @Override // androidx.work.impl.background.systemalarm.C0399d.InterfaceC0402c
    /* renamed from: a */
    public void mo26593a() {
        this.f1396d = true;
        AbstractC7114j.m2491c().mo2488a(f1394k, "All commands completed in dispatcher", new Throwable[0]);
        C3560l.m18614a();
        stopSelf();
    }

    /* renamed from: f */
    public final void m26625f() {
        C0399d c0399d = new C0399d(this);
        this.f1395b = c0399d;
        c0399d.m26594m(this);
    }

    @Override // androidx.lifecycle.ServiceC0327j, android.app.Service
    public void onCreate() {
        super.onCreate();
        m26625f();
        this.f1396d = false;
    }

    @Override // androidx.lifecycle.ServiceC0327j, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f1396d = true;
        this.f1395b.m26597j();
    }

    @Override // androidx.lifecycle.ServiceC0327j, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f1396d) {
            AbstractC7114j.m2491c().mo2486d(f1394k, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.f1395b.m26597j();
            m26625f();
            this.f1396d = false;
        }
        if (intent != null) {
            this.f1395b.m26605a(intent, i2);
            return 3;
        }
        return 3;
    }
}
