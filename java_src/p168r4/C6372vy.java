package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.vy */
/* loaded from: classes2.dex */
public final class C6372vy implements Parcelable.Creator<C6335uy> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6335uy[] newArray(int i) {
        return new C6335uy[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6335uy createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            if (C7409b.m1504m(m1498s) != 15) {
                C7409b.m1492y(parcel, m1498s);
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6335uy(str);
    }
}
