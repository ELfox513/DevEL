package p018b5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: b5.p1 */
/* loaded from: classes2.dex */
public final class C0812p1 implements Parcelable.Creator<C0795o1> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C0795o1[] newArray(int i) {
        return new C0795o1[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C0795o1 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        long j = 0;
        long j2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        String str4 = null;
        boolean z = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 2:
                    j2 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 3:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 4:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 5:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 6:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 7:
                    bundle = C7409b.m1515b(parcel, m1498s);
                    break;
                case 8:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C0795o1(j, j2, z, str, str2, str3, bundle, str4);
    }
}
