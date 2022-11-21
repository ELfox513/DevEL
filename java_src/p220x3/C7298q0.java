package p220x3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p185t3.C6734b;
import p228y3.C7409b;
/* renamed from: x3.q0 */
/* loaded from: classes.dex */
public final class C7298q0 implements Parcelable.Creator<C7295p0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7295p0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        IBinder iBinder = null;
        C6734b c6734b = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m == 1) {
                i = C7409b.m1496u(parcel, m1498s);
            } else if (m1504m == 2) {
                iBinder = C7409b.m1497t(parcel, m1498s);
            } else if (m1504m == 3) {
                c6734b = (C6734b) C7409b.m1511f(parcel, m1498s, C6734b.CREATOR);
            } else if (m1504m == 4) {
                z = C7409b.m1503n(parcel, m1498s);
            } else if (m1504m != 5) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                z2 = C7409b.m1503n(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C7295p0(i, iBinder, c6734b, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7295p0[] newArray(int i) {
        return new C7295p0[i];
    }
}
