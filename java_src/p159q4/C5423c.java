package p159q4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: q4.c */
/* loaded from: classes.dex */
public final class C5423c implements Parcelable.Creator<C5421a> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C5421a[] newArray(int i) {
        return new C5421a[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C5421a createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        boolean[] zArr = null;
        boolean[] zArr2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        if (m1504m != 4) {
                            if (m1504m != 5) {
                                C7409b.m1492y(parcel, m1498s);
                            } else {
                                zArr2 = C7409b.m1516a(parcel, m1498s);
                            }
                        } else {
                            zArr = C7409b.m1516a(parcel, m1498s);
                        }
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
        return new C5421a(z, z2, z3, zArr, zArr2);
    }
}
