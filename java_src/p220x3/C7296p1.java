package p220x3;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import java.util.HashMap;
import p017b4.C0553a;
import p221x4.HandlerC7328d;
/* renamed from: x3.p1 */
/* loaded from: classes.dex */
public final class C7296p1 extends AbstractC7267h {

    /* renamed from: e */
    public final Context f36778e;

    /* renamed from: f */
    public final Handler f36779f;

    /* renamed from: d */
    public final HashMap<C7282l1, ServiceConnectionC7288n1> f36777d = new HashMap<>();

    /* renamed from: g */
    public final C0553a f36780g = C0553a.m26188b();

    /* renamed from: h */
    public final long f36781h = 5000;

    /* renamed from: i */
    public final long f36782i = 300000;

    @Override // p220x3.AbstractC7267h
    /* renamed from: d */
    public final boolean mo1899d(C7282l1 c7282l1, ServiceConnection serviceConnection, String str) {
        boolean m1914e;
        C7297q.m1882k(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f36777d) {
            ServiceConnectionC7288n1 serviceConnectionC7288n1 = this.f36777d.get(c7282l1);
            if (serviceConnectionC7288n1 == null) {
                serviceConnectionC7288n1 = new ServiceConnectionC7288n1(this, c7282l1);
                serviceConnectionC7288n1.m1916c(serviceConnection, serviceConnection, str);
                serviceConnectionC7288n1.m1918a(str);
                this.f36777d.put(c7282l1, serviceConnectionC7288n1);
            } else {
                this.f36779f.removeMessages(0, c7282l1);
                if (!serviceConnectionC7288n1.m1912g(serviceConnection)) {
                    serviceConnectionC7288n1.m1916c(serviceConnection, serviceConnection, str);
                    int m1913f = serviceConnectionC7288n1.m1913f();
                    if (m1913f != 1) {
                        if (m1913f == 2) {
                            serviceConnectionC7288n1.m1918a(str);
                        }
                    } else {
                        serviceConnection.onServiceConnected(serviceConnectionC7288n1.m1909j(), serviceConnectionC7288n1.m1910i());
                    }
                } else {
                    String valueOf = String.valueOf(c7282l1);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            m1914e = serviceConnectionC7288n1.m1914e();
        }
        return m1914e;
    }

    @Override // p220x3.AbstractC7267h
    /* renamed from: e */
    public final void mo1898e(C7282l1 c7282l1, ServiceConnection serviceConnection, String str) {
        C7297q.m1882k(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f36777d) {
            ServiceConnectionC7288n1 serviceConnectionC7288n1 = this.f36777d.get(c7282l1);
            if (serviceConnectionC7288n1 != null) {
                if (serviceConnectionC7288n1.m1912g(serviceConnection)) {
                    serviceConnectionC7288n1.m1915d(serviceConnection, str);
                    if (serviceConnectionC7288n1.m1911h()) {
                        this.f36779f.sendMessageDelayed(this.f36779f.obtainMessage(0, c7282l1), this.f36781h);
                    }
                } else {
                    String valueOf = String.valueOf(c7282l1);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 76);
                    sb.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                String valueOf2 = String.valueOf(c7282l1);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 50);
                sb2.append("Nonexistent connection status for service config: ");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    public C7296p1(Context context) {
        this.f36778e = context.getApplicationContext();
        this.f36779f = new HandlerC7328d(context.getMainLooper(), new C7292o1(this, null));
    }
}
