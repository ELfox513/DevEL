package p168r4;

import android.os.RemoteException;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import p026c4.InterfaceC1045f;
/* renamed from: r4.hk1 */
/* loaded from: classes2.dex */
public final class hk1 implements View.OnClickListener {

    /* renamed from: a */
    public final fo1 f24652a;

    /* renamed from: b */
    public final InterfaceC1045f f24653b;

    /* renamed from: d */
    public g40 f24654d;

    /* renamed from: k */
    public u50<Object> f24655k;

    /* renamed from: p */
    public String f24656p;

    /* renamed from: q */
    public Long f24657q;

    /* renamed from: r */
    public WeakReference<View> f24658r;

    public hk1(fo1 fo1Var, InterfaceC1045f interfaceC1045f) {
        this.f24652a = fo1Var;
        this.f24653b = interfaceC1045f;
    }

    /* renamed from: b */
    public final g40 m10897b() {
        return this.f24654d;
    }

    /* renamed from: d */
    public final void m10895d() {
        View view;
        this.f24656p = null;
        this.f24657q = null;
        WeakReference<View> weakReference = this.f24658r;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.f24658r = null;
    }

    /* renamed from: a */
    public final void m10898a(final g40 g40Var) {
        this.f24654d = g40Var;
        u50<Object> u50Var = this.f24655k;
        if (u50Var != null) {
            this.f24652a.m11451f("/unconfirmedClick", u50Var);
        }
        u50<Object> u50Var2 = new u50(this, g40Var) { // from class: r4.gk1

            /* renamed from: a */
            public final hk1 f24120a;

            /* renamed from: b */
            public final g40 f24121b;

            {
                this.f24120a = this;
                this.f24121b = g40Var;
            }

            @Override // p168r4.u50
            /* renamed from: a */
            public final void mo4240a(Object obj, Map map) {
                hk1 hk1Var = this.f24120a;
                g40 g40Var2 = this.f24121b;
                try {
                    hk1Var.f24657q = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    cm0.m12440c("Failed to call parse unconfirmedClickTimestamp.");
                }
                hk1Var.f24656p = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (g40Var2 == null) {
                    cm0.m12442a("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    g40Var2.mo11295H(str);
                } catch (RemoteException e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
        };
        this.f24655k = u50Var2;
        this.f24652a.m11452e("/unconfirmedClick", u50Var2);
    }

    /* renamed from: c */
    public final void m10896c() {
        if (this.f24654d == null || this.f24657q == null) {
            return;
        }
        m10895d();
        try {
            this.f24654d.mo11294d();
        } catch (RemoteException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.f24658r;
        if (weakReference != null && weakReference.get() == view) {
            if (this.f24656p != null && this.f24657q != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", this.f24656p);
                hashMap.put("time_interval", String.valueOf(this.f24653b.mo24763a() - this.f24657q.longValue()));
                hashMap.put("messageType", "onePointFiveClick");
                this.f24652a.m11450g("sendMessageToNativeJs", hashMap);
            }
            m10895d();
        }
    }
}
