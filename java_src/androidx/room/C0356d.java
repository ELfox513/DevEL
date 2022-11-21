package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.C0351c;
import androidx.room.InterfaceC0345a;
import androidx.room.InterfaceC0348b;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: androidx.room.d */
/* loaded from: classes.dex */
public class C0356d {

    /* renamed from: a */
    public final Context f1285a;

    /* renamed from: b */
    public final String f1286b;

    /* renamed from: c */
    public int f1287c;

    /* renamed from: d */
    public final C0351c f1288d;

    /* renamed from: e */
    public final C0351c.AbstractC0354c f1289e;

    /* renamed from: f */
    public InterfaceC0348b f1290f;

    /* renamed from: g */
    public final Executor f1291g;

    /* renamed from: h */
    public final InterfaceC0345a f1292h = new BinderC0357a();

    /* renamed from: i */
    public final AtomicBoolean f1293i = new AtomicBoolean(false);

    /* renamed from: j */
    public final ServiceConnection f1294j;

    /* renamed from: k */
    public final Runnable f1295k;

    /* renamed from: l */
    public final Runnable f1296l;

    /* renamed from: m */
    public final Runnable f1297m;

    /* renamed from: androidx.room.d$a */
    /* loaded from: classes.dex */
    public class BinderC0357a extends InterfaceC0345a.AbstractBinderC0346a {

        /* renamed from: androidx.room.d$a$a */
        /* loaded from: classes.dex */
        public class RunnableC0358a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ String[] f1299a;

            public RunnableC0358a(String[] strArr) {
                this.f1299a = strArr;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0356d.this.f1288d.m26737e(this.f1299a);
            }
        }

        public BinderC0357a() {
        }

        @Override // androidx.room.InterfaceC0345a
        /* renamed from: O1 */
        public void mo26721O1(String[] strArr) {
            C0356d.this.f1291g.execute(new RunnableC0358a(strArr));
        }
    }

    /* renamed from: androidx.room.d$b */
    /* loaded from: classes.dex */
    public class ServiceConnectionC0359b implements ServiceConnection {
        public ServiceConnectionC0359b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C0356d.this.f1290f = InterfaceC0348b.AbstractBinderC0349a.m26745j0(iBinder);
            C0356d c0356d = C0356d.this;
            c0356d.f1291g.execute(c0356d.f1295k);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C0356d c0356d = C0356d.this;
            c0356d.f1291g.execute(c0356d.f1296l);
            C0356d.this.f1290f = null;
        }
    }

    /* renamed from: androidx.room.d$c */
    /* loaded from: classes.dex */
    public class RunnableC0360c implements Runnable {
        public RunnableC0360c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C0356d c0356d = C0356d.this;
                InterfaceC0348b interfaceC0348b = c0356d.f1290f;
                if (interfaceC0348b != null) {
                    c0356d.f1287c = interfaceC0348b.mo26743s2(c0356d.f1292h, c0356d.f1286b);
                    C0356d c0356d2 = C0356d.this;
                    c0356d2.f1288d.m26741a(c0356d2.f1289e);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot register multi-instance invalidation callback", e);
            }
        }
    }

    /* renamed from: androidx.room.d$d */
    /* loaded from: classes.dex */
    public class RunnableC0361d implements Runnable {
        public RunnableC0361d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0356d c0356d = C0356d.this;
            c0356d.f1288d.m26735g(c0356d.f1289e);
        }
    }

    /* renamed from: androidx.room.d$e */
    /* loaded from: classes.dex */
    public class RunnableC0362e implements Runnable {
        public RunnableC0362e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0356d c0356d = C0356d.this;
            c0356d.f1288d.m26735g(c0356d.f1289e);
            try {
                C0356d c0356d2 = C0356d.this;
                InterfaceC0348b interfaceC0348b = c0356d2.f1290f;
                if (interfaceC0348b != null) {
                    interfaceC0348b.mo26744S6(c0356d2.f1292h, c0356d2.f1287c);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e);
            }
            C0356d c0356d3 = C0356d.this;
            c0356d3.f1285a.unbindService(c0356d3.f1294j);
        }
    }

    /* renamed from: androidx.room.d$f */
    /* loaded from: classes.dex */
    public class C0363f extends C0351c.AbstractC0354c {
        public C0363f(String[] strArr) {
            super(strArr);
        }

        @Override // androidx.room.C0351c.AbstractC0354c
        /* renamed from: a */
        public boolean mo26720a() {
            return true;
        }

        @Override // androidx.room.C0351c.AbstractC0354c
        /* renamed from: b */
        public void mo26719b(Set<String> set) {
            if (C0356d.this.f1293i.get()) {
                return;
            }
            try {
                C0356d c0356d = C0356d.this;
                InterfaceC0348b interfaceC0348b = c0356d.f1290f;
                if (interfaceC0348b != null) {
                    interfaceC0348b.mo26742u6(c0356d.f1287c, (String[]) set.toArray(new String[0]));
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot broadcast invalidation", e);
            }
        }
    }

    public C0356d(Context context, String str, C0351c c0351c, Executor executor) {
        ServiceConnectionC0359b serviceConnectionC0359b = new ServiceConnectionC0359b();
        this.f1294j = serviceConnectionC0359b;
        this.f1295k = new RunnableC0360c();
        this.f1296l = new RunnableC0361d();
        this.f1297m = new RunnableC0362e();
        Context applicationContext = context.getApplicationContext();
        this.f1285a = applicationContext;
        this.f1286b = str;
        this.f1288d = c0351c;
        this.f1291g = executor;
        this.f1289e = new C0363f((String[]) c0351c.f1262a.keySet().toArray(new String[0]));
        applicationContext.bindService(new Intent(applicationContext, MultiInstanceInvalidationService.class), serviceConnectionC0359b, 1);
    }
}
