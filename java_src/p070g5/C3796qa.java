package p070g5;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import p228y3.C7409b;
/* renamed from: g5.qa */
/* loaded from: classes2.dex */
public final class C3796qa implements Parcelable.Creator<C3784pa> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3784pa[] newArray(int i) {
        return new C3784pa[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C3784pa createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str8 = null;
        String str9 = "";
        long j6 = -2147483648L;
        boolean z = true;
        boolean z2 = false;
        int i = 0;
        boolean z3 = true;
        boolean z4 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 2:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 3:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 4:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 5:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 6:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 7:
                    j2 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 8:
                    str5 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 9:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 10:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 11:
                    j6 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 12:
                    str6 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 13:
                    j3 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 14:
                    j4 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 15:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 16:
                    z3 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 17:
                case 20:
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
                case 18:
                    z4 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 19:
                    str7 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 21:
                    bool = C7409b.m1502o(parcel, m1498s);
                    break;
                case 22:
                    j5 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 23:
                    arrayList = C7409b.m1508i(parcel, m1498s);
                    break;
                case 24:
                    str8 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 25:
                    str9 = C7409b.m1510g(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C3784pa(str, str2, str3, str4, j, j2, str5, z, z2, j6, str6, j3, j4, i, z3, z4, str7, bool, j5, arrayList, str8, str9);
    }
}
