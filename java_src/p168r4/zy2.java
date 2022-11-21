package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.zy2 */
/* loaded from: classes2.dex */
public final class zy2 extends AbstractC7408a {
    public static final Parcelable.Creator<zy2> CREATOR = new bz2();

    /* renamed from: a */
    public final int f34786a;

    /* renamed from: b */
    public final int f34787b;

    /* renamed from: d */
    public final String f34788d;

    /* renamed from: k */
    public final String f34789k;

    /* renamed from: p */
    public final int f34790p;

    public zy2(int i, int i2, int i3, String str, String str2) {
        this.f34786a = i;
        this.f34787b = i2;
        this.f34788d = str;
        this.f34789k = str2;
        this.f34790p = i3;
    }

    public zy2(int i, int i2, String str, String str2) {
        this(1, 1, i2 - 1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f34786a);
        C7411c.m1479l(parcel, 2, this.f34787b);
        C7411c.m1473r(parcel, 3, this.f34788d, false);
        C7411c.m1473r(parcel, 4, this.f34789k, false);
        C7411c.m1479l(parcel, 5, this.f34790p);
        C7411c.m1489b(parcel, m1490a);
    }
}
