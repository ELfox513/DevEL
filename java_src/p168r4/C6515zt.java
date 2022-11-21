package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.zt */
/* loaded from: classes2.dex */
public final class C6515zt implements Parcelable.Creator<C6478yt> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6478yt[] newArray(int i) {
        return new C6478yt[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6478yt createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        C6478yt[] c6478ytArr = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 2:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 3:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 4:
                    i2 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 5:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 6:
                    i3 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 7:
                    i4 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 8:
                    c6478ytArr = (C6478yt[]) C7409b.m1507j(parcel, m1498s, C6478yt.CREATOR);
                    break;
                case 9:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 10:
                    z3 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 11:
                    z4 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 12:
                    z5 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 13:
                    z6 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 14:
                    z7 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 15:
                    z8 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 16:
                    z9 = C7409b.m1503n(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6478yt(str, i, i2, z, i3, i4, c6478ytArr, z2, z3, z4, z5, z6, z7, z8, z9);
    }
}
