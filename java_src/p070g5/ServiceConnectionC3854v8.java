package p070g5;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import p017b4.C0553a;
import p185t3.C6734b;
import p220x3.AbstractC7246c;
import p220x3.C7297q;
/* renamed from: g5.v8 */
/* loaded from: classes2.dex */
public final class ServiceConnectionC3854v8 implements ServiceConnection, AbstractC7246c.InterfaceC7247a, AbstractC7246c.InterfaceC7248b {

    /* renamed from: a */
    public volatile boolean f17011a;

    /* renamed from: b */
    public volatile C3741m3 f17012b;

    /* renamed from: d */
    public final /* synthetic */ C3866w8 f17013d;

    public ServiceConnectionC3854v8(C3866w8 c3866w8) {
        this.f17013d = c3866w8;
    }

    /* renamed from: b */
    public final void m17930b(Intent intent) {
        ServiceConnectionC3854v8 serviceConnectionC3854v8;
        this.f17013d.mo17839c();
        Context mo17856O = this.f17013d.f17008a.mo17856O();
        C0553a m26188b = C0553a.m26188b();
        synchronized (this) {
            if (this.f17011a) {
                this.f17013d.f17008a.mo17858F().m18014q().m18042a("Connection attempt already in progress");
                return;
            }
            this.f17013d.f17008a.mo17858F().m18014q().m18042a("Using local app measurement service");
            this.f17011a = true;
            serviceConnectionC3854v8 = this.f17013d.f17043c;
            m26188b.m26189a(mo17856O, intent, serviceConnectionC3854v8, 129);
        }
    }

    /* renamed from: c */
    public final void m17929c() {
        this.f17013d.mo17839c();
        Context mo17856O = this.f17013d.f17008a.mo17856O();
        synchronized (this) {
            if (this.f17011a) {
                this.f17013d.f17008a.mo17858F().m18014q().m18042a("Connection attempt already in progress");
            } else if (this.f17012b != null && (this.f17012b.m2000c() || this.f17012b.isConnected())) {
                this.f17013d.f17008a.mo17858F().m18014q().m18042a("Already awaiting connection attempt");
            } else {
                this.f17012b = new C3741m3(mo17856O, Looper.getMainLooper(), this, this);
                this.f17013d.f17008a.mo17858F().m18014q().m18042a("Connecting to remote service");
                this.f17011a = true;
                C7297q.m1883j(this.f17012b);
                this.f17012b.m1985p();
            }
        }
    }

    /* renamed from: d */
    public final void m17928d() {
        if (this.f17012b != null && (this.f17012b.isConnected() || this.f17012b.m2000c())) {
            this.f17012b.mo1996e();
        }
        this.f17012b = null;
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: j0 */
    public final void mo1948j0(int i) {
        C7297q.m1888e("MeasurementServiceConnection.onConnectionSuspended");
        this.f17013d.f17008a.mo17858F().m18019l().m18042a("Service connection suspended");
        this.f17013d.f17008a.mo17855P().m17826u(new RunnableC3830t8(this));
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7247a
    /* renamed from: o0 */
    public final void mo1947o0(Bundle bundle) {
        C7297q.m1888e("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                C7297q.m1883j(this.f17012b);
                this.f17013d.f17008a.mo17855P().m17826u(new RunnableC3818s8(this, this.f17012b.m2025B()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f17012b = null;
                this.f17011a = false;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ServiceConnectionC3854v8 serviceConnectionC3854v8;
        InterfaceC3669g3 c3633d3;
        C7297q.m1888e("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f17011a = false;
                this.f17013d.f17008a.mo17858F().m18018m().m18042a("Service connected with null binder");
                return;
            }
            InterfaceC3669g3 interfaceC3669g3 = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    if (queryLocalInterface instanceof InterfaceC3669g3) {
                        c3633d3 = (InterfaceC3669g3) queryLocalInterface;
                    } else {
                        c3633d3 = new C3633d3(iBinder);
                    }
                    interfaceC3669g3 = c3633d3;
                    this.f17013d.f17008a.mo17858F().m18014q().m18042a("Bound to IMeasurementService interface");
                } else {
                    this.f17013d.f17008a.mo17858F().m18018m().m18041b("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f17013d.f17008a.mo17858F().m18018m().m18042a("Service connect failed to get IMeasurementService");
            }
            if (interfaceC3669g3 == null) {
                this.f17011a = false;
                try {
                    C0553a m26188b = C0553a.m26188b();
                    Context mo17856O = this.f17013d.f17008a.mo17856O();
                    serviceConnectionC3854v8 = this.f17013d.f17043c;
                    m26188b.m26187c(mo17856O, serviceConnectionC3854v8);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f17013d.f17008a.mo17855P().m17826u(new RunnableC3794q8(this, interfaceC3669g3));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C7297q.m1888e("MeasurementServiceConnection.onServiceDisconnected");
        this.f17013d.f17008a.mo17858F().m18019l().m18042a("Service disconnected");
        this.f17013d.f17008a.mo17855P().m17826u(new RunnableC3806r8(this, componentName));
    }

    @Override // p220x3.AbstractC7246c.InterfaceC7248b
    /* renamed from: t0 */
    public final void mo1940t0(C6734b c6734b) {
        C7297q.m1888e("MeasurementServiceConnection.onConnectionFailed");
        C3789q3 m18508z = this.f17013d.f17008a.m18508z();
        if (m18508z != null) {
            m18508z.m18013r().m18041b("Service connection failed", c6734b);
        }
        synchronized (this) {
            this.f17011a = false;
            this.f17012b = null;
        }
        this.f17013d.f17008a.mo17855P().m17826u(new RunnableC3842u8(this));
    }
}
