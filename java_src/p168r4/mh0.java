package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.mh0 */
/* loaded from: classes2.dex */
public final class mh0 extends AbstractC7408a {
    public static final Parcelable.Creator<mh0> CREATOR = new nh0();

    /* renamed from: a */
    public final C6293tt f27724a;

    /* renamed from: b */
    public final String f27725b;

    public mh0(C6293tt c6293tt, String str) {
        this.f27724a = c6293tt;
        this.f27725b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1474q(parcel, 2, this.f27724a, i, false);
        C7411c.m1473r(parcel, 3, this.f27725b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
