package p078h4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: h4.o */
/* loaded from: classes.dex */
public final class C4039o implements Parcelable.Creator<C4038n> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4038n[] newArray(int i) {
        return new C4038n[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C4038n createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            if (C7409b.m1504m(m1498s) != 1) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                i = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C4038n(i);
    }
}
