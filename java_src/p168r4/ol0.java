package p168r4;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import p016b3.InterfaceC0549y1;
import p235z2.C7601t;
/* renamed from: r4.ol0 */
/* loaded from: classes2.dex */
public final class ol0 {

    /* renamed from: g */
    public final String f29048g;

    /* renamed from: h */
    public final InterfaceC0549y1 f29049h;

    /* renamed from: a */
    public long f29042a = -1;

    /* renamed from: b */
    public long f29043b = -1;

    /* renamed from: c */
    public int f29044c = -1;

    /* renamed from: d */
    public int f29045d = -1;

    /* renamed from: e */
    public long f29046e = 0;

    /* renamed from: f */
    public final Object f29047f = new Object();

    /* renamed from: i */
    public int f29050i = 0;

    /* renamed from: j */
    public int f29051j = 0;

    public ol0(String str, InterfaceC0549y1 interfaceC0549y1) {
        this.f29048g = str;
        this.f29049h = interfaceC0549y1;
    }

    /* renamed from: a */
    public final void m8779a() {
        synchronized (this.f29047f) {
            this.f29050i++;
        }
    }

    /* renamed from: b */
    public final void m8778b() {
        synchronized (this.f29047f) {
            this.f29051j++;
        }
    }

    /* renamed from: d */
    public final void m8776d() {
        m8773g();
    }

    /* renamed from: e */
    public final void m8775e() {
        m8773g();
    }

    /* renamed from: c */
    public final void m8777c(C6293tt c6293tt, long j) {
        synchronized (this.f29047f) {
            long mo26191w = this.f29049h.mo26191w();
            long mo24763a = C7601t.m932k().mo24763a();
            if (this.f29043b == -1) {
                if (mo24763a - mo26191w > ((Long) C5592av.m12935c().m8098c(C6225rz.f30791E0)).longValue()) {
                    this.f29045d = -1;
                } else {
                    this.f29045d = this.f29049h.mo26197n();
                }
                this.f29043b = j;
                this.f29042a = j;
            } else {
                this.f29042a = j;
            }
            Bundle bundle = c6293tt.f31996d;
            if (bundle != null && bundle.getInt("gw", 2) == 1) {
                return;
            }
            this.f29044c++;
            int i = this.f29045d + 1;
            this.f29045d = i;
            if (i == 0) {
                this.f29046e = 0L;
                this.f29049h.mo26213W0(mo24763a);
            } else {
                this.f29046e = mo24763a - this.f29049h.mo26226E();
            }
        }
    }

    /* renamed from: f */
    public final Bundle m8774f(Context context, String str) {
        Bundle bundle;
        String str2;
        synchronized (this.f29047f) {
            bundle = new Bundle();
            if (this.f29049h.mo26190y()) {
                str2 = "";
            } else {
                str2 = this.f29048g;
            }
            bundle.putString("session_id", str2);
            bundle.putLong("basets", this.f29043b);
            bundle.putLong("currts", this.f29042a);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f29044c);
            bundle.putInt("preqs_in_session", this.f29045d);
            bundle.putLong("time_in_session", this.f29046e);
            bundle.putInt("pclick", this.f29050i);
            bundle.putInt("pimp", this.f29051j);
            Context m12467a = ch0.m12467a(context);
            int identifier = m12467a.getResources().getIdentifier("Theme.Translucent", "style", "android");
            boolean z = false;
            if (identifier == 0) {
                cm0.m12438e("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            } else {
                try {
                    if (identifier == m12467a.getPackageManager().getActivityInfo(new ComponentName(m12467a.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                        z = true;
                    } else {
                        cm0.m12438e("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    cm0.m12437f("Fail to fetch AdActivity theme");
                    cm0.m12438e("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
                }
            }
            bundle.putBoolean("support_transparent_background", z);
        }
        return bundle;
    }

    /* renamed from: g */
    public final void m8773g() {
        if (l10.f27013a.m6673e().booleanValue()) {
            synchronized (this.f29047f) {
                this.f29044c--;
                this.f29045d--;
            }
        }
    }
}
