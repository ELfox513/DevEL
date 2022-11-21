package p168r4;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import p228y3.C7409b;
/* renamed from: r4.vt */
/* loaded from: classes2.dex */
public final class C6367vt implements Parcelable.Creator<C6293tt> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6293tt[] newArray(int i) {
        return new C6293tt[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C6293tt createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        Bundle bundle = null;
        ArrayList<String> arrayList = null;
        String str = null;
        C6335uy c6335uy = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        C5922jt c5922jt = null;
        String str5 = null;
        ArrayList<String> arrayList3 = null;
        String str6 = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 2:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 3:
                    bundle = C7409b.m1515b(parcel, m1498s);
                    break;
                case 4:
                    i2 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 5:
                    arrayList = C7409b.m1508i(parcel, m1498s);
                    break;
                case 6:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 7:
                    i3 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 8:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 9:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 10:
                    c6335uy = (C6335uy) C7409b.m1511f(parcel, m1498s, C6335uy.CREATOR);
                    break;
                case 11:
                    location = (Location) C7409b.m1511f(parcel, m1498s, Location.CREATOR);
                    break;
                case 12:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 13:
                    bundle2 = C7409b.m1515b(parcel, m1498s);
                    break;
                case 14:
                    bundle3 = C7409b.m1515b(parcel, m1498s);
                    break;
                case 15:
                    arrayList2 = C7409b.m1508i(parcel, m1498s);
                    break;
                case 16:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 17:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 18:
                    z3 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 19:
                    c5922jt = (C5922jt) C7409b.m1511f(parcel, m1498s, C5922jt.CREATOR);
                    break;
                case 20:
                    i4 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 21:
                    str5 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 22:
                    arrayList3 = C7409b.m1508i(parcel, m1498s);
                    break;
                case 23:
                    i5 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 24:
                    str6 = C7409b.m1510g(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C6293tt(i, j, bundle, i2, arrayList, z, i3, z2, str, c6335uy, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3, c5922jt, i4, str5, arrayList3, i5, str6);
    }
}
