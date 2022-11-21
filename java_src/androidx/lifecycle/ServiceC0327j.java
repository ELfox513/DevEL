package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* renamed from: androidx.lifecycle.j */
/* loaded from: classes.dex */
public class ServiceC0327j extends Service implements InterfaceC0322g {

    /* renamed from: a */
    public final C0335q f1237a = new C0335q(this);

    @Override // androidx.lifecycle.InterfaceC0322g
    public AbstractC0317d getLifecycle() {
        return this.f1237a.m26761a();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f1237a.m26760b();
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f1237a.m26759c();
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f1237a.m26758d();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        this.f1237a.m26757e();
        super.onStart(intent, i);
    }
}
