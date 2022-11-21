package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.ni0 */
/* loaded from: classes2.dex */
public final class ni0 extends AbstractC7408a {
    public static final Parcelable.Creator<ni0> CREATOR = new oi0();

    /* renamed from: a */
    public final String f28298a;

    /* renamed from: b */
    public final String f28299b;

    public ni0(String str, String str2) {
        this.f28298a = str;
        this.f28299b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f28298a, false);
        C7411c.m1473r(parcel, 2, this.f28299b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
