package p168r4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.du */
/* loaded from: classes2.dex */
public final class C5701du implements Parcelable.Creator<C5664cu> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C5664cu[] newArray(int i) {
        return new C5664cu[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C5664cu createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        C5996lt c5996lt = null;
        Bundle bundle = null;
        long j = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 1) {
                if (m1504m != 2) {
                    if (m1504m != 3) {
                        if (m1504m != 4) {
                            C7409b.m1492y(parcel, m1498s);
                        } else {
                            bundle = C7409b.m1515b(parcel, m1498s);
                        }
                    } else {
                        c5996lt = (C5996lt) C7409b.m1511f(parcel, m1498s, C5996lt.CREATOR);
                    }
                } else {
                    j = C7409b.m1495v(parcel, m1498s);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C5664cu(str, j, c5996lt, bundle);
    }
}
