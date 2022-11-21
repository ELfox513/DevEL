package p168r4;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.ng0 */
/* loaded from: classes2.dex */
public final class ng0 implements Parcelable.Creator<mg0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ mg0[] newArray(int i) {
        return new mg0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ mg0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            if (C7409b.m1504m(m1498s) != 2) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) C7409b.m1511f(parcel, m1498s, ParcelFileDescriptor.CREATOR);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new mg0(parcelFileDescriptor);
    }
}
