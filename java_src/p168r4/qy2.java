package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.qy2 */
/* loaded from: classes2.dex */
public final class qy2 extends AbstractC7408a {
    public static final Parcelable.Creator<qy2> CREATOR = new ry2();

    /* renamed from: a */
    public final int f30361a;

    /* renamed from: b */
    public final String f30362b;

    /* renamed from: d */
    public final String f30363d;

    public qy2(int i, String str, String str2) {
        this.f30361a = i;
        this.f30362b = str;
        this.f30363d = str2;
    }

    public qy2(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f30361a);
        C7411c.m1473r(parcel, 2, this.f30362b, false);
        C7411c.m1473r(parcel, 3, this.f30363d, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
