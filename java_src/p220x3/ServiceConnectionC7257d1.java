package p220x3;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
/* renamed from: x3.d1 */
/* loaded from: classes.dex */
public final class ServiceConnectionC7257d1 implements ServiceConnection {

    /* renamed from: a */
    public final int f36698a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC7246c f36699b;

    public ServiceConnectionC7257d1(AbstractC7246c abstractC7246c, int i) {
        this.f36699b = abstractC7246c;
        this.f36698a = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        InterfaceC7283m c7307t0;
        if (iBinder == null) {
            AbstractC7246c.m2010T(this.f36699b, 16);
            return;
        }
        obj = this.f36699b.f36673y;
        synchronized (obj) {
            AbstractC7246c abstractC7246c = this.f36699b;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (queryLocalInterface != null && (queryLocalInterface instanceof InterfaceC7283m)) {
                c7307t0 = (InterfaceC7283m) queryLocalInterface;
            } else {
                c7307t0 = new C7307t0(iBinder);
            }
            abstractC7246c.f36674z = c7307t0;
        }
        this.f36699b.m2011S(0, null, this.f36698a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f36699b.f36673y;
        synchronized (obj) {
            this.f36699b.f36674z = null;
        }
        Handler handler = this.f36699b.f36671w;
        handler.sendMessage(handler.obtainMessage(6, this.f36698a, 1));
    }
}
