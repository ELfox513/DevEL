package p185t3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: t3.e0 */
/* loaded from: classes.dex */
public final class C6741e0 implements Parcelable.Creator<C6739d0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6739d0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        IBinder iBinder = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                str = C7409b.m1510g(parcel, m1498s);
            } else if (m1504m == 2) {
                z = C7409b.m1503n(parcel, m1498s);
            } else if (m1504m == 3) {
                z2 = C7409b.m1503n(parcel, m1498s);
            } else if (m1504m == 4) {
                iBinder = C7409b.m1497t(parcel, m1498s);
            } else if (m1504m != 5) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                z3 = C7409b.m1503n(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6739d0(str, z, z2, iBinder, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6739d0[] newArray(int i) {
        return new C6739d0[i];
    }
}
