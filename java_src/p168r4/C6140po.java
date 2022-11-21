package p168r4;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import p016b3.C0497k2;
import p220x3.AbstractC7246c;
import p235z2.C7601t;
/* renamed from: r4.po */
/* loaded from: classes2.dex */
public final class C6140po {

    /* renamed from: a */
    public final Runnable f29537a = new RunnableC5991lo(this);

    /* renamed from: b */
    public final Object f29538b = new Object();

    /* renamed from: c */
    public C6251so f29539c;

    /* renamed from: d */
    public Context f29540d;

    /* renamed from: e */
    public C6362vo f29541e;

    /* renamed from: i */
    public final synchronized C6251so m8237i(AbstractC7246c.InterfaceC7247a interfaceC7247a, AbstractC7246c.InterfaceC7248b interfaceC7248b) {
        return new C6251so(this.f29540d, C7601t.m925r().m26396a(), interfaceC7247a, interfaceC7248b);
    }

    /* renamed from: j */
    public static /* synthetic */ void m8236j(C6140po c6140po) {
        synchronized (c6140po.f29538b) {
            C6251so c6251so = c6140po.f29539c;
            if (c6251so == null) {
                return;
            }
            if (c6251so.isConnected() || c6140po.f29539c.m2000c()) {
                c6140po.f29539c.mo1996e();
            }
            c6140po.f29539c = null;
            c6140po.f29541e = null;
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: d */
    public final void m8242d(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f29538b) {
            if (this.f29540d != null) {
                return;
            }
            this.f29540d = context.getApplicationContext();
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30793E2)).booleanValue()) {
                m8234l();
            } else {
                if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30785D2)).booleanValue()) {
                    C7601t.m936g().m10859b(new C6028mo(this));
                }
            }
        }
    }

    /* renamed from: e */
    public final void m8241e() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30801F2)).booleanValue()) {
            synchronized (this.f29538b) {
                m8234l();
                c03 c03Var = C0497k2.f1630i;
                c03Var.removeCallbacks(this.f29537a);
                c03Var.postDelayed(this.f29537a, ((Long) C5592av.m12935c().m8098c(C6225rz.f30809G2)).longValue());
            }
        }
    }

    /* renamed from: f */
    public final C6177qo m8240f(C6288to c6288to) {
        synchronized (this.f29538b) {
            if (this.f29541e == null) {
                return new C6177qo();
            }
            try {
                if (this.f29539c.m7095h0()) {
                    return this.f29541e.m6055A2(c6288to);
                }
                return this.f29541e.m6054b2(c6288to);
            } catch (RemoteException e) {
                cm0.m12439d("Unable to call into cache service.", e);
                return new C6177qo();
            }
        }
    }

    /* renamed from: g */
    public final long m8239g(C6288to c6288to) {
        synchronized (this.f29538b) {
            if (this.f29541e == null) {
                return -2L;
            }
            if (this.f29539c.m7095h0()) {
                try {
                    return this.f29541e.m6053e3(c6288to);
                } catch (RemoteException e) {
                    cm0.m12439d("Unable to call into cache service.", e);
                }
            }
            return -2L;
        }
    }

    /* renamed from: l */
    public final void m8234l() {
        synchronized (this.f29538b) {
            if (this.f29540d != null && this.f29539c == null) {
                C6251so m8237i = m8237i(new C6066no(this), new C6103oo(this));
                this.f29539c = m8237i;
                m8237i.m1985p();
            }
        }
    }
}
