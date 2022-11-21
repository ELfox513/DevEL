package p184t2;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import p168r4.BinderC6409wy;
import p168r4.InterfaceC6000lx;
import p168r4.cm0;
import p220x3.C7297q;
/* renamed from: t2.v */
/* loaded from: classes.dex */
public final class C6726v {

    /* renamed from: a */
    public final Object f35375a = new Object();

    /* renamed from: b */
    public InterfaceC6000lx f35376b;

    /* renamed from: c */
    public AbstractC6727a f35377c;

    /* renamed from: t2.v$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC6727a {
        /* renamed from: a */
        public void mo3545a() {
        }

        /* renamed from: b */
        public void m3544b(boolean z) {
        }

        /* renamed from: c */
        public void mo3543c() {
        }

        /* renamed from: d */
        public void m3542d() {
        }

        /* renamed from: e */
        public void mo3541e() {
        }
    }

    /* renamed from: a */
    public void m3548a(@RecentlyNonNull AbstractC6727a abstractC6727a) {
        C7297q.m1882k(abstractC6727a, "VideoLifecycleCallbacks may not be null.");
        synchronized (this.f35375a) {
            this.f35377c = abstractC6727a;
            InterfaceC6000lx interfaceC6000lx = this.f35376b;
            if (interfaceC6000lx != null) {
                try {
                    interfaceC6000lx.mo6189U4(new BinderC6409wy(abstractC6727a));
                } catch (RemoteException e) {
                    cm0.m12439d("Unable to call setVideoLifecycleCallbacks on video controller.", e);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m3547b(InterfaceC6000lx interfaceC6000lx) {
        synchronized (this.f35375a) {
            this.f35376b = interfaceC6000lx;
            AbstractC6727a abstractC6727a = this.f35377c;
            if (abstractC6727a != null) {
                m3548a(abstractC6727a);
            }
        }
    }

    /* renamed from: c */
    public final InterfaceC6000lx m3546c() {
        InterfaceC6000lx interfaceC6000lx;
        synchronized (this.f35375a) {
            interfaceC6000lx = this.f35376b;
        }
        return interfaceC6000lx;
    }
}
