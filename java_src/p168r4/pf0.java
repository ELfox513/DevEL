package p168r4;

import android.content.Context;
import android.os.RemoteException;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p086i3.AbstractC4125c;
import p184t2.EnumC6703b;
/* renamed from: r4.pf0 */
/* loaded from: classes2.dex */
public final class pf0 {

    /* renamed from: d */
    public static vk0 f29447d;

    /* renamed from: a */
    public final Context f29448a;

    /* renamed from: b */
    public final EnumC6703b f29449b;

    /* renamed from: c */
    public final C6260sx f29450c;

    public pf0(Context context, EnumC6703b enumC6703b, C6260sx c6260sx) {
        this.f29448a = context;
        this.f29449b = enumC6703b;
        this.f29450c = c6260sx;
    }

    /* renamed from: a */
    public static vk0 m8332a(Context context) {
        vk0 vk0Var;
        synchronized (pf0.class) {
            if (f29447d == null) {
                f29447d = C6479yu.m4567b().m5569l(context, new cb0());
            }
            vk0Var = f29447d;
        }
        return vk0Var;
    }

    /* renamed from: b */
    public final void m8331b(AbstractC4125c abstractC4125c) {
        C6293tt m5009a;
        vk0 m8332a = m8332a(this.f29448a);
        if (m8332a == null) {
            abstractC4125c.mo17327a("Internal Error, query info generator is null.");
            return;
        }
        InterfaceC3512a m18741L0 = BinderC3514b.m18741L0(this.f29448a);
        C6260sx c6260sx = this.f29450c;
        if (c6260sx == null) {
            m5009a = new C6330ut().m6381a();
        } else {
            m5009a = C6441xt.f33766a.m5009a(this.f29448a, c6260sx);
        }
        try {
            m8332a.mo6130k5(m18741L0, new zk0(null, this.f29449b.name(), null, m5009a), new of0(this, abstractC4125c));
        } catch (RemoteException unused) {
            abstractC4125c.mo17327a("Internal Error.");
        }
    }
}
