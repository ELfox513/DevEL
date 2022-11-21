package p168r4;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
/* renamed from: r4.hn */
/* loaded from: classes2.dex */
public final class C5843hn {

    /* renamed from: a */
    public final Object f24752a = new Object();

    /* renamed from: b */
    public C5769fn f24753b = null;

    /* renamed from: c */
    public boolean f24754c = false;

    /* renamed from: a */
    public final void m10860a(Context context) {
        Application application;
        synchronized (this.f24752a) {
            if (!this.f24754c) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    applicationContext = context;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                } else {
                    application = null;
                }
                if (application == null) {
                    cm0.m12437f("Can not cast Context to Application");
                    return;
                }
                if (this.f24753b == null) {
                    this.f24753b = new C5769fn();
                }
                this.f24753b.m11470f(application, context);
                this.f24754c = true;
            }
        }
    }

    /* renamed from: b */
    public final void m10859b(InterfaceC5806gn interfaceC5806gn) {
        synchronized (this.f24752a) {
            if (this.f24753b == null) {
                this.f24753b = new C5769fn();
            }
            this.f24753b.m11469g(interfaceC5806gn);
        }
    }

    /* renamed from: c */
    public final void m10858c(InterfaceC5806gn interfaceC5806gn) {
        synchronized (this.f24752a) {
            C5769fn c5769fn = this.f24753b;
            if (c5769fn == null) {
                return;
            }
            c5769fn.m11468h(interfaceC5806gn);
        }
    }

    /* renamed from: d */
    public final Activity m10857d() {
        synchronized (this.f24752a) {
            C5769fn c5769fn = this.f24753b;
            if (c5769fn != null) {
                return c5769fn.m11467i();
            }
            return null;
        }
    }

    /* renamed from: e */
    public final Context m10856e() {
        synchronized (this.f24752a) {
            C5769fn c5769fn = this.f24753b;
            if (c5769fn != null) {
                return c5769fn.m11466j();
            }
            return null;
        }
    }
}
