package p185t3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: t3.j0 */
/* loaded from: classes.dex */
public final class C6751j0 implements Parcelable.Creator<C6749i0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6749i0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        boolean z = false;
        String str = null;
        IBinder iBinder = null;
        boolean z2 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                str = C7409b.m1510g(parcel, m1498s);
            } else if (m1504m == 2) {
                iBinder = C7409b.m1497t(parcel, m1498s);
            } else if (m1504m == 3) {
                z = C7409b.m1503n(parcel, m1498s);
            } else if (m1504m != 4) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                z2 = C7409b.m1503n(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6749i0(str, iBinder, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6749i0[] newArray(int i) {
        return new C6749i0[i];
    }
}
