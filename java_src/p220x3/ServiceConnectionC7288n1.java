package p220x3;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import java.util.HashMap;
import java.util.Map;
import p017b4.C0553a;
/* renamed from: x3.n1 */
/* loaded from: classes.dex */
public final class ServiceConnectionC7288n1 implements ServiceConnection, InterfaceC7299q1 {

    /* renamed from: a */
    public final Map<ServiceConnection, ServiceConnection> f36761a = new HashMap();

    /* renamed from: b */
    public int f36762b = 2;

    /* renamed from: d */
    public boolean f36763d;

    /* renamed from: k */
    public IBinder f36764k;

    /* renamed from: p */
    public final C7282l1 f36765p;

    /* renamed from: q */
    public ComponentName f36766q;

    /* renamed from: r */
    public final /* synthetic */ C7296p1 f36767r;

    public ServiceConnectionC7288n1(C7296p1 c7296p1, C7282l1 c7282l1) {
        this.f36767r = c7296p1;
        this.f36765p = c7282l1;
    }

    /* renamed from: a */
    public final void m1918a(String str) {
        C0553a c0553a;
        Context context;
        Context context2;
        C0553a c0553a2;
        Context context3;
        Handler handler;
        Handler handler2;
        long j;
        this.f36762b = 3;
        c0553a = this.f36767r.f36780g;
        context = this.f36767r.f36778e;
        C7282l1 c7282l1 = this.f36765p;
        context2 = this.f36767r.f36778e;
        boolean m26186d = c0553a.m26186d(context, str, c7282l1.m1919d(context2), this, this.f36765p.m1920c());
        this.f36763d = m26186d;
        if (m26186d) {
            handler = this.f36767r.f36779f;
            Message obtainMessage = handler.obtainMessage(1, this.f36765p);
            handler2 = this.f36767r.f36779f;
            j = this.f36767r.f36782i;
            handler2.sendMessageDelayed(obtainMessage, j);
            return;
        }
        this.f36762b = 2;
        try {
            c0553a2 = this.f36767r.f36780g;
            context3 = this.f36767r.f36778e;
            c0553a2.m26187c(context3, this);
        } catch (IllegalArgumentException unused) {
        }
    }

    /* renamed from: c */
    public final void m1916c(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f36761a.put(serviceConnection, serviceConnection2);
    }

    /* renamed from: d */
    public final void m1915d(ServiceConnection serviceConnection, String str) {
        this.f36761a.remove(serviceConnection);
    }

    /* renamed from: e */
    public final boolean m1914e() {
        return this.f36763d;
    }

    /* renamed from: f */
    public final int m1913f() {
        return this.f36762b;
    }

    /* renamed from: g */
    public final boolean m1912g(ServiceConnection serviceConnection) {
        return this.f36761a.containsKey(serviceConnection);
    }

    /* renamed from: h */
    public final boolean m1911h() {
        return this.f36761a.isEmpty();
    }

    /* renamed from: i */
    public final IBinder m1910i() {
        return this.f36764k;
    }

    /* renamed from: j */
    public final ComponentName m1909j() {
        return this.f36766q;
    }

    /* renamed from: b */
    public final void m1917b(String str) {
        Handler handler;
        C0553a c0553a;
        Context context;
        handler = this.f36767r.f36779f;
        handler.removeMessages(1, this.f36765p);
        c0553a = this.f36767r.f36780g;
        context = this.f36767r.f36778e;
        c0553a.m26187c(context, this);
        this.f36763d = false;
        this.f36762b = 2;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f36767r.f36777d;
        synchronized (hashMap) {
            handler = this.f36767r.f36779f;
            handler.removeMessages(1, this.f36765p);
            this.f36764k = iBinder;
            this.f36766q = componentName;
            for (ServiceConnection serviceConnection : this.f36761a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.f36762b = 1;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        HashMap hashMap;
        Handler handler;
        hashMap = this.f36767r.f36777d;
        synchronized (hashMap) {
            handler = this.f36767r.f36779f;
            handler.removeMessages(1, this.f36765p);
            this.f36764k = null;
            this.f36766q = componentName;
            for (ServiceConnection serviceConnection : this.f36761a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.f36762b = 2;
        }
    }
}
