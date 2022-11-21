package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.nt */
/* loaded from: classes2.dex */
public final class C6071nt implements Parcelable.Creator<C5996lt> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C5996lt[] newArray(int i) {
        return new C5996lt[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C5996lt createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        C5996lt c5996lt = null;
        IBinder iBinder = null;
        int i = 0;
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
                                iBinder = C7409b.m1497t(parcel, m1498s);
                            }
                        } else {
                            c5996lt = (C5996lt) C7409b.m1511f(parcel, m1498s, C5996lt.CREATOR);
                        }
                    } else {
                        str2 = C7409b.m1510g(parcel, m1498s);
                    }
                } else {
                    str = C7409b.m1510g(parcel, m1498s);
                }
            } else {
                i = C7409b.m1496u(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C5996lt(i, str, str2, c5996lt, iBinder);
    }
}
