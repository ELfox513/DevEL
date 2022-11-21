package p168r4;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.prineside.tdi2.Config;
import java.util.List;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.to */
/* loaded from: classes2.dex */
public final class C6288to extends AbstractC7408a {
    public static final Parcelable.Creator<C6288to> CREATOR = new C6325uo();

    /* renamed from: a */
    public final String f31922a;

    /* renamed from: b */
    public final long f31923b;

    /* renamed from: d */
    public final String f31924d;

    /* renamed from: k */
    public final String f31925k;

    /* renamed from: p */
    public final String f31926p;

    /* renamed from: q */
    public final Bundle f31927q;

    /* renamed from: r */
    public final boolean f31928r;

    /* renamed from: s */
    public long f31929s;

    /* renamed from: t */
    public String f31930t;

    /* renamed from: u */
    public int f31931u;

    /* renamed from: X0 */
    public static C6288to m6775X0(Uri uri) {
        long parseLong;
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                int size = pathSegments.size();
                StringBuilder sb = new StringBuilder(62);
                sb.append("Expected 2 path parts for namespace and id, found :");
                sb.append(size);
                cm0.m12437f(sb.toString());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter("url");
            boolean equals = Config.SITE_API_VERSION.equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            if (queryParameter2 == null) {
                parseLong = 0;
            } else {
                parseLong = Long.parseLong(queryParameter2);
            }
            long j = parseLong;
            Bundle bundle = new Bundle();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new C6288to(queryParameter, j, host, str, str2, bundle, equals, 0L, "", 0);
        } catch (NullPointerException | NumberFormatException e) {
            cm0.m12436g("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    public C6288to(String str, long j, String str2, String str3, String str4, Bundle bundle, boolean z, long j2, String str5, int i) {
        this.f31922a = str;
        this.f31923b = j;
        this.f31924d = str2 == null ? "" : str2;
        this.f31925k = str3 == null ? "" : str3;
        this.f31926p = str4 == null ? "" : str4;
        this.f31927q = bundle == null ? new Bundle() : bundle;
        this.f31928r = z;
        this.f31929s = j2;
        this.f31930t = str5;
        this.f31931u = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f31922a, false);
        C7411c.m1476o(parcel, 3, this.f31923b);
        C7411c.m1473r(parcel, 4, this.f31924d, false);
        C7411c.m1473r(parcel, 5, this.f31925k, false);
        C7411c.m1473r(parcel, 6, this.f31926p, false);
        C7411c.m1485f(parcel, 7, this.f31927q, false);
        C7411c.m1488c(parcel, 8, this.f31928r);
        C7411c.m1476o(parcel, 9, this.f31929s);
        C7411c.m1473r(parcel, 10, this.f31930t, false);
        C7411c.m1479l(parcel, 11, this.f31931u);
        C7411c.m1489b(parcel, m1490a);
    }
}
