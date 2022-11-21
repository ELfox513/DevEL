package p168r4;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.util.concurrent.Executor;
import p004a3.C0064e;
import p004a3.C0074o;
import p026c4.C1054o;
import p136o.C5057c;
import p235z2.C7601t;
/* renamed from: r4.g32 */
/* loaded from: classes2.dex */
public final class g32 implements q12<xf1> {

    /* renamed from: a */
    public final Context f23858a;

    /* renamed from: b */
    public final vg1 f23859b;

    /* renamed from: c */
    public final Executor f23860c;

    /* renamed from: d */
    public final mo2 f23861d;

    public g32(Context context, Executor executor, vg1 vg1Var, mo2 mo2Var) {
        this.f23858a = context;
        this.f23859b = vg1Var;
        this.f23860c = executor;
        this.f23861d = mo2Var;
    }

    /* renamed from: d */
    public static String m11299d(no2 no2Var) {
        try {
            return no2Var.f28435v.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // p168r4.q12
    /* renamed from: a */
    public final boolean mo4841a(bp2 bp2Var, no2 no2Var) {
        if ((this.f23858a instanceof Activity) && C1054o.m24739b() && q00.m8086a(this.f23858a) && !TextUtils.isEmpty(m11299d(no2Var))) {
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public final /* synthetic */ h83 m11300c(Uri uri, bp2 bp2Var, no2 no2Var, Object obj) {
        try {
            C5057c m14739a = new C5057c.C5058a().m14739a();
            m14739a.f19270a.setData(uri);
            C0064e c0064e = new C0064e(m14739a.f19270a, null);
            final vm0 vm0Var = new vm0();
            yf1 mo6159c = this.f23859b.mo6159c(new x31(bp2Var, no2Var, null), new bg1(new dh1(vm0Var) { // from class: r4.f32

                /* renamed from: a */
                public final vm0 f23268a;

                {
                    this.f23268a = vm0Var;
                }

                @Override // p168r4.dh1
                /* renamed from: a */
                public final void mo4920a(boolean z, Context context, w71 w71Var) {
                    vm0 vm0Var2 = this.f23268a;
                    try {
                        C7601t.m940c();
                        C0074o.m27689a(context, (AdOverlayInfoParcel) vm0Var2.get(), true);
                    } catch (Exception unused) {
                    }
                }
            }, null));
            vm0Var.m6086e(new AdOverlayInfoParcel(c0064e, null, mo6159c.mo4735i(), null, new im0(0, 0, false, false, false), null, null));
            this.f23861d.m9305d();
            return y73.m4814a(mo6159c.mo4736h());
        } catch (Throwable th) {
            cm0.m12439d("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }

    @Override // p168r4.q12
    /* renamed from: b */
    public final h83<xf1> mo4840b(final bp2 bp2Var, final no2 no2Var) {
        final Uri uri;
        String m11299d = m11299d(no2Var);
        if (m11299d != null) {
            uri = Uri.parse(m11299d);
        } else {
            uri = null;
        }
        return y73.m4806i(y73.m4814a(null), new e73(this, uri, bp2Var, no2Var) { // from class: r4.e32

            /* renamed from: a */
            public final g32 f22773a;

            /* renamed from: b */
            public final Uri f22774b;

            /* renamed from: c */
            public final bp2 f22775c;

            /* renamed from: d */
            public final no2 f22776d;

            {
                this.f22773a = this;
                this.f22774b = uri;
                this.f22775c = bp2Var;
                this.f22776d = no2Var;
            }

            @Override // p168r4.e73
            /* renamed from: a */
            public final h83 mo1029a(Object obj) {
                return this.f22773a.m11300c(this.f22774b, this.f22775c, this.f22776d, obj);
            }
        }, this.f23860c);
    }
}
