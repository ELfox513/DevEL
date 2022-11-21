package p070g5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: g5.t */
/* loaded from: classes2.dex */
public final class C3821t implements Parcelable.Creator<C3809s> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3809s[] newArray(int i) {
        return new C3809s[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3809s createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            if (C7409b.m1504m(m1498s) != 2) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                bundle = C7409b.m1515b(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C3809s(bundle);
    }
}
