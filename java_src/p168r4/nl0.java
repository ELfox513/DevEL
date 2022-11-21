package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import p016b3.C0461b2;
import p016b3.C0543w1;
import p016b3.InterfaceC0549y1;
import p026c4.C1054o;
import p042d4.C3325e;
import p235z2.C7601t;
/* renamed from: r4.nl0 */
/* loaded from: classes2.dex */
public final class nl0 {

    /* renamed from: a */
    public final Object f28318a = new Object();

    /* renamed from: b */
    public final C0461b2 f28319b;

    /* renamed from: c */
    public final rl0 f28320c;

    /* renamed from: d */
    public boolean f28321d;

    /* renamed from: e */
    public Context f28322e;

    /* renamed from: f */
    public im0 f28323f;

    /* renamed from: g */
    public C6410wz f28324g;

    /* renamed from: h */
    public Boolean f28325h;

    /* renamed from: i */
    public final AtomicInteger f28326i;

    /* renamed from: j */
    public final ll0 f28327j;

    /* renamed from: k */
    public final Object f28328k;

    /* renamed from: l */
    public h83<ArrayList<String>> f28329l;

    /* renamed from: f */
    public final void m9061f(Boolean bool) {
        synchronized (this.f28318a) {
            this.f28325h = bool;
        }
    }

    /* renamed from: h */
    public final void m9059h() {
        this.f28327j.m9636a();
    }

    /* renamed from: m */
    public final void m9054m() {
        this.f28326i.incrementAndGet();
    }

    /* renamed from: n */
    public final void m9053n() {
        this.f28326i.decrementAndGet();
    }

    /* renamed from: o */
    public final int m9052o() {
        return this.f28326i.get();
    }

    /* renamed from: q */
    public final Context m9050q() {
        return this.f28322e;
    }

    /* renamed from: s */
    public final rl0 m9048s() {
        return this.f28320c;
    }

    /* renamed from: e */
    public final C6410wz m9062e() {
        C6410wz c6410wz;
        synchronized (this.f28318a) {
            c6410wz = this.f28324g;
        }
        return c6410wz;
    }

    /* renamed from: g */
    public final Boolean m9060g() {
        Boolean bool;
        synchronized (this.f28318a) {
            bool = this.f28325h;
        }
        return bool;
    }

    @TargetApi(23)
    /* renamed from: i */
    public final void m9058i(Context context, im0 im0Var) {
        C6410wz c6410wz;
        synchronized (this.f28318a) {
            if (!this.f28321d) {
                this.f28322e = context.getApplicationContext();
                this.f28323f = im0Var;
                C7601t.m936g().m10859b(this.f28320c);
                this.f28319b.mo26203e0(this.f28322e);
                vf0.m6163d(this.f28322e, this.f28323f);
                C7601t.m930m();
                if (!a10.f20331c.m6673e().booleanValue()) {
                    C0543w1.m26251k("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    c6410wz = null;
                } else {
                    c6410wz = new C6410wz();
                }
                this.f28324g = c6410wz;
                if (c6410wz != null) {
                    tm0.m6790a(new kl0(this).mo10833c(), "AppState.registerCsiReporter");
                }
                this.f28321d = true;
                m9049r();
            }
        }
        C7601t.m939d().m26339P(context, im0Var.f25171a);
    }

    /* renamed from: j */
    public final Resources m9057j() {
        if (this.f28323f.f25174k) {
            return this.f28322e.getResources();
        }
        try {
            gm0.m11108b(this.f28322e).getResources();
            return null;
        } catch (fm0 e) {
            cm0.m12436g("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    /* renamed from: k */
    public final void m9056k(Throwable th, String str) {
        vf0.m6163d(this.f28322e, this.f28323f).mo5332b(th, str);
    }

    /* renamed from: l */
    public final void m9055l(Throwable th, String str) {
        vf0.m6163d(this.f28322e, this.f28323f).mo5333a(th, str, n10.f28080g.m6673e().floatValue());
    }

    /* renamed from: p */
    public final InterfaceC0549y1 m9051p() {
        C0461b2 c0461b2;
        synchronized (this.f28318a) {
            c0461b2 = this.f28319b;
        }
        return c0461b2;
    }

    /* renamed from: t */
    public final /* synthetic */ ArrayList m9047t() {
        Context m12467a = ch0.m12467a(this.f28322e);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo m19143f = C3325e.m19140a(m12467a).m19143f(m12467a.getApplicationInfo().packageName, 4096);
            if (m19143f.requestedPermissions != null && m19143f.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = m19143f.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((m19143f.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(strArr[i]);
                    }
                    i++;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    public nl0() {
        C0461b2 c0461b2 = new C0461b2();
        this.f28319b = c0461b2;
        this.f28320c = new rl0(C6479yu.m4566c(), c0461b2);
        this.f28321d = false;
        this.f28324g = null;
        this.f28325h = null;
        this.f28326i = new AtomicInteger(0);
        this.f28327j = new ll0(null);
        this.f28328k = new Object();
    }

    /* renamed from: r */
    public final h83<ArrayList<String>> m9049r() {
        if (C1054o.m24738c() && this.f28322e != null) {
            if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30864N1)).booleanValue()) {
                synchronized (this.f28328k) {
                    h83<ArrayList<String>> h83Var = this.f28329l;
                    if (h83Var != null) {
                        return h83Var;
                    }
                    h83<ArrayList<String>> mo8015c = qm0.f30190a.mo8015c(new Callable(this) { // from class: r4.jl0

                        /* renamed from: a */
                        public final nl0 f26065a;

                        {
                            this.f26065a = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f26065a.m9047t();
                        }
                    });
                    this.f28329l = mo8015c;
                    return mo8015c;
                }
            }
        }
        return y73.m4814a(new ArrayList());
    }
}
