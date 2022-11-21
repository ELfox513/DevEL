package p016b3;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: b3.h0 */
/* loaded from: classes.dex */
public final class C0483h0 implements Parcelable.Creator<C0479g0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C0479g0[] newArray(int i) {
        return new C0479g0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C0479g0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    C7409b.m1492y(parcel, m1498s);
                } else {
                    i = C7409b.m1496u(parcel, m1498s);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C0479g0(str, i);
    }
}
