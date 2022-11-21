package p168r4;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
/* renamed from: r4.pe0 */
/* loaded from: classes2.dex */
public final class pe0 implements qe0 {

    /* renamed from: b */
    public static final Object f29440b = new Object();

    /* renamed from: c */
    public static boolean f29441c = false;

    /* renamed from: d */
    public static boolean f29442d = false;

    /* renamed from: a */
    public tu2 f29443a;

    @Override // p168r4.qe0
    /* renamed from: U */
    public final void mo7880U(InterfaceC3512a interfaceC3512a) {
        synchronized (f29440b) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && f29441c) {
                try {
                    this.f29443a.mo6711m0(interfaceC3512a);
                } catch (RemoteException | NullPointerException e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // p168r4.qe0
    /* renamed from: a */
    public final String mo7879a(Context context) {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue()) {
            return null;
        }
        try {
            m8335f(context);
            String valueOf = String.valueOf(this.f29443a.mo6712f());
            if (valueOf.length() != 0) {
                return "a.".concat(valueOf);
            }
            return new String("a.");
        } catch (RemoteException | NullPointerException e) {
            cm0.m12434i("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // p168r4.qe0
    /* renamed from: b */
    public final InterfaceC3512a mo7878b(String str, WebView webView, String str2, String str3, String str4, String str5, se0 se0Var, re0 re0Var, String str6) {
        synchronized (f29440b) {
            try {
                try {
                    if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && f29441c) {
                        try {
                            return this.f29443a.mo6714M2(str, BinderC3514b.m18741L0(webView), "", "javascript", str4, str5, se0Var.toString(), re0Var.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            cm0.m12434i("#007 Could not call remote method.", e);
                            return null;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // p168r4.qe0
    /* renamed from: c */
    public final void mo7877c(InterfaceC3512a interfaceC3512a, View view) {
        synchronized (f29440b) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && f29441c) {
                try {
                    this.f29443a.mo6716J1(interfaceC3512a, BinderC3514b.m18741L0(view));
                } catch (RemoteException | NullPointerException e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // p168r4.qe0
    /* renamed from: d */
    public final InterfaceC3512a mo7876d(String str, WebView webView, String str2, String str3, String str4, se0 se0Var, re0 re0Var, String str5) {
        synchronized (f29440b) {
            try {
                try {
                    if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && f29441c) {
                        try {
                            return this.f29443a.mo6713T4(str, BinderC3514b.m18741L0(webView), "", "javascript", str4, "Google", se0Var.toString(), re0Var.toString(), str5);
                        } catch (RemoteException | NullPointerException e) {
                            cm0.m12434i("#007 Could not call remote method.", e);
                            return null;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // p168r4.qe0
    /* renamed from: e */
    public final void mo7875e(InterfaceC3512a interfaceC3512a, View view) {
        synchronized (f29440b) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && f29441c) {
                try {
                    this.f29443a.mo6710n5(interfaceC3512a, BinderC3514b.m18741L0(view));
                } catch (RemoteException | NullPointerException e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // p168r4.qe0
    /* renamed from: e0 */
    public final boolean mo7874e0(Context context) {
        synchronized (f29440b) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue()) {
                return false;
            }
            if (f29441c) {
                return true;
            }
            try {
                m8335f(context);
                boolean mo6715M = this.f29443a.mo6715M(BinderC3514b.m18741L0(context));
                f29441c = mo6715M;
                return mo6715M;
            } catch (RemoteException e) {
                e = e;
                cm0.m12434i("#007 Could not call remote method.", e);
                return false;
            } catch (NullPointerException e2) {
                e = e2;
                cm0.m12434i("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    /* renamed from: f */
    public final void m8335f(Context context) {
        synchronized (f29440b) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && !f29442d) {
                try {
                    f29442d = true;
                    this.f29443a = (tu2) gm0.m11109a(context, "com.google.android.gms.ads.omid.DynamiteOmid", oe0.f28962a);
                } catch (fm0 e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // p168r4.qe0
    public final void zzf(InterfaceC3512a interfaceC3512a) {
        synchronized (f29440b) {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue() && f29441c) {
                try {
                    this.f29443a.zzf(interfaceC3512a);
                } catch (RemoteException | NullPointerException e) {
                    cm0.m12434i("#007 Could not call remote method.", e);
                }
            }
        }
    }
}
