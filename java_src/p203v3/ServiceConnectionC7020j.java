package p203v3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Set;
import p185t3.C6734b;
import p185t3.C6738d;
import p194u3.C6883a;
import p220x3.AbstractC7246c;
import p220x3.AbstractC7267h;
import p220x3.C7297q;
import p220x3.InterfaceC7273j;
/* renamed from: v3.j */
/* loaded from: classes.dex */
public final class ServiceConnectionC7020j implements C6883a.InterfaceC6892f, ServiceConnection {

    /* renamed from: w */
    public static final String f35977w = ServiceConnectionC7020j.class.getSimpleName();

    /* renamed from: a */
    public final String f35978a;

    /* renamed from: b */
    public final String f35979b;

    /* renamed from: d */
    public final ComponentName f35980d;

    /* renamed from: k */
    public final Context f35981k;

    /* renamed from: p */
    public final InterfaceC7005e f35982p;

    /* renamed from: q */
    public final Handler f35983q;

    /* renamed from: r */
    public final InterfaceC7023k f35984r;

    /* renamed from: s */
    public IBinder f35985s;

    /* renamed from: t */
    public boolean f35986t;

    /* renamed from: u */
    public String f35987u;

    /* renamed from: v */
    public String f35988v;

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: a */
    public final Set<Scope> mo1945a() {
        return Collections.emptySet();
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: c */
    public final boolean mo2655c() {
        m2652j();
        return this.f35986t;
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: f */
    public final void mo1994f(@RecentlyNonNull AbstractC7246c.InterfaceC7251e interfaceC7251e) {
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: i */
    public final boolean mo2653i() {
        return false;
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    public final boolean isConnected() {
        m2652j();
        return this.f35985s != null;
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: k */
    public final int mo2651k() {
        return 0;
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    @RecentlyNonNull
    /* renamed from: l */
    public final C6738d[] mo2650l() {
        return new C6738d[0];
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    @RecentlyNullable
    /* renamed from: m */
    public final String mo2649m() {
        return this.f35987u;
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: n */
    public final boolean mo1987n() {
        return false;
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: o */
    public final void mo2648o(InterfaceC7273j interfaceC7273j, Set<Scope> set) {
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull final IBinder iBinder) {
        this.f35983q.post(new Runnable(this, iBinder) { // from class: v3.l0

            /* renamed from: a */
            public final ServiceConnectionC7020j f36001a;

            /* renamed from: b */
            public final IBinder f36002b;

            {
                this.f36001a = this;
                this.f36002b = iBinder;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f36001a.m2645r(this.f36002b);
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@RecentlyNonNull ComponentName componentName) {
        this.f35983q.post(new Runnable(this) { // from class: v3.n0

            /* renamed from: a */
            public final ServiceConnectionC7020j f36008a;

            {
                this.f36008a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f36008a.m2646q();
            }
        });
    }

    /* renamed from: p */
    public final void m2647p(String str) {
        this.f35988v = str;
    }

    /* renamed from: q */
    public final /* synthetic */ void m2646q() {
        this.f35986t = false;
        this.f35985s = null;
        m2644s("Disconnected.");
        this.f35982p.mo2594j0(1);
    }

    /* renamed from: r */
    public final /* synthetic */ void m2645r(IBinder iBinder) {
        this.f35986t = false;
        this.f35985s = iBinder;
        m2644s("Connected.");
        this.f35982p.mo2593o0(new Bundle());
    }

    /* renamed from: s */
    public final void m2644s(String str) {
        String.valueOf(this.f35985s);
        str.length();
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    @RecentlyNonNull
    /* renamed from: d */
    public final String mo2654d() {
        String str = this.f35978a;
        if (str != null) {
            return str;
        }
        C7297q.m1883j(this.f35980d);
        return this.f35980d.getPackageName();
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: b */
    public final void mo2656b(@RecentlyNonNull String str) {
        m2652j();
        this.f35987u = str;
        mo1996e();
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: e */
    public final void mo1996e() {
        m2652j();
        m2644s("Disconnect called.");
        try {
            this.f35981k.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        this.f35986t = false;
        this.f35985s = null;
    }

    @Override // p194u3.C6883a.InterfaceC6892f
    /* renamed from: h */
    public final void mo1991h(@RecentlyNonNull AbstractC7246c.InterfaceC7249c interfaceC7249c) {
        m2652j();
        m2644s("Connect started.");
        if (isConnected()) {
            try {
                mo2656b("connect() called when already connected");
            } catch (Exception unused) {
            }
        }
        try {
            Intent intent = new Intent();
            ComponentName componentName = this.f35980d;
            if (componentName != null) {
                intent.setComponent(componentName);
            } else {
                intent.setPackage(this.f35978a).setAction(this.f35979b);
            }
            boolean bindService = this.f35981k.bindService(intent, this, AbstractC7267h.m1939a());
            this.f35986t = bindService;
            if (!bindService) {
                this.f35985s = null;
                this.f35984r.mo2591t0(new C6734b(16));
            }
            m2644s("Finished connect.");
        } catch (SecurityException e) {
            this.f35986t = false;
            this.f35985s = null;
            throw e;
        }
    }

    /* renamed from: j */
    public final void m2652j() {
        if (Thread.currentThread() == this.f35983q.getLooper().getThread()) {
            return;
        }
        throw new IllegalStateException("This method should only run on the NonGmsServiceBrokerClient's handler thread.");
    }
}
