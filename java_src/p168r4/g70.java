package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.g70 */
/* loaded from: classes2.dex */
public final class g70 extends AbstractC7408a {
    public static final Parcelable.Creator<g70> CREATOR = new h70();

    /* renamed from: a */
    public final String f23921a;

    /* renamed from: b */
    public final boolean f23922b;

    /* renamed from: d */
    public final int f23923d;

    /* renamed from: k */
    public final String f23924k;

    public g70(String str, boolean z, int i, String str2) {
        this.f23921a = str;
        this.f23922b = z;
        this.f23923d = i;
        this.f23924k = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f23921a, false);
        C7411c.m1488c(parcel, 2, this.f23922b);
        C7411c.m1479l(parcel, 3, this.f23923d);
        C7411c.m1473r(parcel, 4, this.f23924k, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
