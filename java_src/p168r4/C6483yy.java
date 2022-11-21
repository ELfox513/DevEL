package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.yy */
/* loaded from: classes2.dex */
public final class C6483yy implements Parcelable.Creator<C6446xy> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6446xy[] newArray(int i) {
        return new C6446xy[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6446xy createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 2) {
                if (m1504m != 3) {
                    if (m1504m != 4) {
                        C7409b.m1492y(parcel, m1498s);
                    } else {
                        z3 = C7409b.m1503n(parcel, m1498s);
                    }
                } else {
                    z2 = C7409b.m1503n(parcel, m1498s);
                }
            } else {
                z = C7409b.m1503n(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6446xy(z, z2, z3);
    }
}
