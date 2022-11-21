package p168r4;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.og0 */
/* loaded from: classes2.dex */
public final class og0 extends AbstractC7408a {
    public static final Parcelable.Creator<og0> CREATOR = new pg0();

    /* renamed from: a */
    public final Bundle f28978a;

    /* renamed from: b */
    public final im0 f28979b;

    /* renamed from: d */
    public final ApplicationInfo f28980d;

    /* renamed from: k */
    public final String f28981k;

    /* renamed from: p */
    public final List<String> f28982p;

    /* renamed from: q */
    public final PackageInfo f28983q;

    /* renamed from: r */
    public final String f28984r;

    /* renamed from: s */
    public final String f28985s;

    /* renamed from: t */
    public br2 f28986t;

    /* renamed from: u */
    public String f28987u;

    public og0(Bundle bundle, im0 im0Var, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, String str2, String str3, br2 br2Var, String str4) {
        this.f28978a = bundle;
        this.f28979b = im0Var;
        this.f28981k = str;
        this.f28980d = applicationInfo;
        this.f28982p = list;
        this.f28983q = packageInfo;
        this.f28984r = str2;
        this.f28985s = str3;
        this.f28986t = br2Var;
        this.f28987u = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1485f(parcel, 1, this.f28978a, false);
        C7411c.m1474q(parcel, 2, this.f28979b, i, false);
        C7411c.m1474q(parcel, 3, this.f28980d, i, false);
        C7411c.m1473r(parcel, 4, this.f28981k, false);
        C7411c.m1471t(parcel, 5, this.f28982p, false);
        C7411c.m1474q(parcel, 6, this.f28983q, i, false);
        C7411c.m1473r(parcel, 7, this.f28984r, false);
        C7411c.m1473r(parcel, 9, this.f28985s, false);
        C7411c.m1474q(parcel, 10, this.f28986t, i, false);
        C7411c.m1473r(parcel, 11, this.f28987u, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
