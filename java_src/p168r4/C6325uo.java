package p168r4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.C7409b;
/* renamed from: r4.uo */
/* loaded from: classes2.dex */
public final class C6325uo implements Parcelable.Creator<C6288to> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6288to[] newArray(int i) {
        return new C6288to[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6288to createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        long j = 0;
        long j2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Bundle bundle = null;
        String str5 = null;
        boolean z = false;
        int i = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 2:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 3:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 4:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 5:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 6:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 7:
                    bundle = C7409b.m1515b(parcel, m1498s);
                    break;
                case 8:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 9:
                    j2 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 10:
                    str5 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 11:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6288to(str, j, str2, str3, str4, bundle, z, j2, str5, i);
    }
}
