package p168r4;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: r4.vb */
/* loaded from: classes2.dex */
public final class C6349vb {

    /* renamed from: e */
    public static C6349vb f32666e;

    /* renamed from: a */
    public final Handler f32667a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public final CopyOnWriteArrayList<WeakReference<InterfaceC6164qb>> f32668b = new CopyOnWriteArrayList<>();

    /* renamed from: c */
    public final Object f32669c = new Object();

    /* renamed from: d */
    public int f32670d = 0;

    /* renamed from: a */
    public static synchronized C6349vb m6193a(Context context) {
        C6349vb c6349vb;
        synchronized (C6349vb.class) {
            if (f32666e == null) {
                f32666e = new C6349vb(context);
            }
            c6349vb = f32666e;
        }
        return c6349vb;
    }

    /* renamed from: d */
    public static /* synthetic */ void m6190d(C6349vb c6349vb, int i) {
        synchronized (c6349vb.f32669c) {
            if (c6349vb.f32670d == i) {
                return;
            }
            c6349vb.f32670d = i;
            Iterator<WeakReference<InterfaceC6164qb>> it = c6349vb.f32668b.iterator();
            while (it.hasNext()) {
                WeakReference<InterfaceC6164qb> next = it.next();
                InterfaceC6164qb interfaceC6164qb = next.get();
                if (interfaceC6164qb != null) {
                    interfaceC6164qb.mo7312h(i);
                } else {
                    c6349vb.f32668b.remove(next);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m6192b(final InterfaceC6164qb interfaceC6164qb) {
        Iterator<WeakReference<InterfaceC6164qb>> it = this.f32668b.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC6164qb> next = it.next();
            if (next.get() == null) {
                this.f32668b.remove(next);
            }
        }
        this.f32668b.add(new WeakReference<>(interfaceC6164qb));
        this.f32667a.post(new Runnable(this, interfaceC6164qb) { // from class: r4.ob

            /* renamed from: a */
            public final C6349vb f28945a;

            /* renamed from: b */
            public final InterfaceC6164qb f28946b;

            {
                this.f28945a = this;
                this.f28946b = interfaceC6164qb;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f28946b.mo7312h(this.f28945a.m6191c());
            }
        });
    }

    /* renamed from: c */
    public final int m6191c() {
        int i;
        synchronized (this.f32669c) {
            i = this.f32670d;
        }
        return i;
    }

    public C6349vb(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new C6275tb(this, null), intentFilter);
    }
}
