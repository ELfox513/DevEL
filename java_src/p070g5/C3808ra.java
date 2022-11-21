package p070g5;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
/* renamed from: g5.ra */
/* loaded from: classes2.dex */
public final class C3808ra {

    /* renamed from: a */
    public final C3611b5 f16923a;

    public C3808ra(C3611b5 c3611b5) {
        this.f16923a = c3611b5;
    }

    /* renamed from: d */
    public final boolean m17994d() {
        return this.f16923a.m18546A().f16515v.m18548a() > 0;
    }

    /* renamed from: a */
    public final void m17997a(String str, Bundle bundle) {
        String uri;
        this.f16923a.mo17855P().mo17839c();
        if (!this.f16923a.m18524j()) {
            if (bundle.isEmpty()) {
                uri = null;
            } else {
                if (true == str.isEmpty()) {
                    str = "auto";
                }
                Uri.Builder builder = new Uri.Builder();
                builder.path(str);
                for (String str2 : bundle.keySet()) {
                    builder.appendQueryParameter(str2, bundle.getString(str2));
                }
                uri = builder.build().toString();
            }
            if (!TextUtils.isEmpty(uri)) {
                this.f16923a.m18546A().f16514u.m18387b(uri);
                this.f16923a.m18546A().f16515v.m18547b(this.f16923a.mo17854Q().mo24763a());
            }
        }
    }

    /* renamed from: b */
    public final void m17996b() {
        String str;
        this.f16923a.mo17855P().mo17839c();
        if (!m17994d()) {
            return;
        }
        if (m17993e()) {
            this.f16923a.m18546A().f16514u.m18387b(null);
            Bundle bundle = new Bundle();
            bundle.putString("source", "(not set)");
            bundle.putString("medium", "(not set)");
            bundle.putString("_cis", "intent");
            bundle.putLong("_cc", 1L);
            this.f16923a.m18543D().m18216p("auto", "_cmpx", bundle);
        } else {
            String m18388a = this.f16923a.m18546A().f16514u.m18388a();
            if (TextUtils.isEmpty(m18388a)) {
                this.f16923a.mo17858F().m18016o().m18042a("Cache still valid but referrer not found");
            } else {
                long m18548a = ((this.f16923a.m18546A().f16515v.m18548a() / 3600000) - 1) * 3600000;
                Uri parse = Uri.parse(m18388a);
                Bundle bundle2 = new Bundle();
                Pair pair = new Pair(parse.getPath(), bundle2);
                for (String str2 : parse.getQueryParameterNames()) {
                    bundle2.putString(str2, parse.getQueryParameter(str2));
                }
                ((Bundle) pair.second).putLong("_cc", m18548a);
                Object obj = pair.first;
                if (obj == null) {
                    str = "app";
                } else {
                    str = (String) obj;
                }
                this.f16923a.m18543D().m18216p(str, "_cmp", (Bundle) pair.second);
            }
            this.f16923a.m18546A().f16514u.m18387b(null);
        }
        this.f16923a.m18546A().f16515v.m18547b(0L);
    }

    /* renamed from: c */
    public final void m17995c() {
        if (m17994d() && m17993e()) {
            this.f16923a.m18546A().f16514u.m18387b(null);
        }
    }

    /* renamed from: e */
    public final boolean m17993e() {
        if (!m17994d() || this.f16923a.mo17854Q().mo24763a() - this.f16923a.m18546A().f16515v.m18548a() <= this.f16923a.m18513u().m18366m(null, C3621c3.f16347S)) {
            return false;
        }
        return true;
    }
}
