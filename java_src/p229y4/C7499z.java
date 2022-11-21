package p229y4;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.view.Window;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p106k5.C4472f;
import p106k5.InterfaceC4464b;
/* renamed from: y4.z */
/* loaded from: classes2.dex */
public final class C7499z implements InterfaceC4464b {

    /* renamed from: a */
    public final Application f37316a;

    /* renamed from: b */
    public final C7425d f37317b;

    /* renamed from: c */
    public final C7454k0 f37318c;

    /* renamed from: d */
    public final C7463n f37319d;

    /* renamed from: e */
    public final C7430e0 f37320e;

    /* renamed from: f */
    public final InterfaceC7465n1<C7446i0> f37321f;

    /* renamed from: g */
    public Dialog f37322g;

    /* renamed from: h */
    public C7446i0 f37323h;

    /* renamed from: i */
    public final AtomicBoolean f37324i = new AtomicBoolean();

    /* renamed from: j */
    public final AtomicReference<C7496y> f37325j = new AtomicReference<>();

    /* renamed from: k */
    public final AtomicReference<InterfaceC4464b.InterfaceC4465a> f37326k = new AtomicReference<>();

    /* renamed from: l */
    public final AtomicReference<C7493x> f37327l = new AtomicReference<>();

    /* renamed from: b */
    public final C7446i0 m1381b() {
        return this.f37323h;
    }

    /* renamed from: c */
    public final void m1380c(C4472f.InterfaceC4474b interfaceC4474b, C4472f.InterfaceC4473a interfaceC4473a) {
        C7446i0 mo1390a = ((C7450j0) this.f37321f).mo1390a();
        this.f37323h = mo1390a;
        mo1390a.setBackgroundColor(0);
        mo1390a.getSettings().setJavaScriptEnabled(true);
        mo1390a.setWebViewClient(new C7442h0(mo1390a, null));
        this.f37325j.set(new C7496y(interfaceC4474b, interfaceC4473a, null));
        this.f37323h.loadDataWithBaseURL(this.f37320e.m1450a(), this.f37320e.m1449b(), "text/html", "UTF-8", null);
        C7439g1.f37157a.postDelayed(new Runnable() { // from class: y4.v
            @Override // java.lang.Runnable
            public final void run() {
                C7499z.this.m1376g(new C7486u1(4, "Web view timed out."));
            }
        }, 10000L);
    }

    /* renamed from: f */
    public final void m1377f() {
        C7496y andSet = this.f37325j.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.mo1388b(this);
    }

    /* renamed from: g */
    public final void m1376g(C7486u1 c7486u1) {
        C7496y andSet = this.f37325j.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.mo1389a(c7486u1.m1394a());
    }

    /* renamed from: h */
    public final void m1375h() {
        Dialog dialog = this.f37322g;
        if (dialog != null) {
            dialog.dismiss();
            this.f37322g = null;
        }
        this.f37318c.m1423a(null);
        C7493x andSet = this.f37327l.getAndSet(null);
        if (andSet != null) {
            andSet.f37302b.f37316a.unregisterActivityLifecycleCallbacks(andSet);
        }
    }

    public C7499z(Application application, C7425d c7425d, C7454k0 c7454k0, C7463n c7463n, C7430e0 c7430e0, InterfaceC7465n1<C7446i0> interfaceC7465n1) {
        this.f37316a = application;
        this.f37317b = c7425d;
        this.f37318c = c7454k0;
        this.f37319d = c7463n;
        this.f37320e = c7430e0;
        this.f37321f = interfaceC7465n1;
    }

    @Override // p106k5.InterfaceC4464b
    /* renamed from: a */
    public final void mo1382a(Activity activity, InterfaceC4464b.InterfaceC4465a interfaceC4465a) {
        C7439g1.m1447a();
        if (!this.f37324i.compareAndSet(false, true)) {
            interfaceC4465a.mo16342a(new C7486u1(3, "ConsentForm#show can only be invoked once.").m1394a());
            return;
        }
        C7493x c7493x = new C7493x(this, activity);
        this.f37316a.registerActivityLifecycleCallbacks(c7493x);
        this.f37327l.set(c7493x);
        this.f37318c.m1423a(activity);
        Dialog dialog = new Dialog(activity, 16973840);
        dialog.setContentView(this.f37323h);
        dialog.setCancelable(false);
        Window window = dialog.getWindow();
        if (window == null) {
            interfaceC4465a.mo16342a(new C7486u1(3, "Activity with null windows is passed in.").m1394a());
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
        this.f37326k.set(interfaceC4465a);
        dialog.show();
        this.f37322g = dialog;
        this.f37323h.m1437b("UMP_messagePresented", "");
    }

    /* renamed from: d */
    public final void m1379d(int i) {
        m1375h();
        InterfaceC4464b.InterfaceC4465a andSet = this.f37326k.getAndSet(null);
        if (andSet == null) {
            return;
        }
        this.f37319d.m1411e(3);
        andSet.mo16342a(null);
    }

    /* renamed from: e */
    public final void m1378e(C7486u1 c7486u1) {
        m1375h();
        InterfaceC4464b.InterfaceC4465a andSet = this.f37326k.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.mo16342a(c7486u1.m1394a());
    }
}
