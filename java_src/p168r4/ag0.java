package p168r4;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import p228y3.C7409b;
/* renamed from: r4.ag0 */
/* loaded from: classes2.dex */
public final class ag0 implements Parcelable.Creator<zf0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zf0 createFromParcel(Parcel parcel) {
        return m13031a(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zf0[] newArray(int i) {
        return new zf0[i];
    }

    /* renamed from: a */
    public static final zf0 m13031a(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        long j = 0;
        long j2 = 0;
        Bundle bundle = null;
        C6293tt c6293tt = null;
        C6478yt c6478yt = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        im0 im0Var = null;
        Bundle bundle2 = null;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        String str5 = null;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        d20 d20Var = null;
        ArrayList<String> arrayList3 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Bundle bundle4 = null;
        String str11 = null;
        C6149px c6149px = null;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        ArrayList<Integer> arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        ArrayList<String> arrayList6 = null;
        String str16 = null;
        s70 s70Var = null;
        String str17 = null;
        Bundle bundle6 = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        boolean z4 = false;
        int i7 = 0;
        boolean z5 = false;
        boolean z6 = false;
        int i8 = 0;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 2:
                    bundle = C7409b.m1515b(parcel, m1498s);
                    break;
                case 3:
                    c6293tt = (C6293tt) C7409b.m1511f(parcel, m1498s, C6293tt.CREATOR);
                    break;
                case 4:
                    c6478yt = (C6478yt) C7409b.m1511f(parcel, m1498s, C6478yt.CREATOR);
                    break;
                case 5:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) C7409b.m1511f(parcel, m1498s, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) C7409b.m1511f(parcel, m1498s, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 9:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 10:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 11:
                    im0Var = (im0) C7409b.m1511f(parcel, m1498s, im0.CREATOR);
                    break;
                case 12:
                    bundle2 = C7409b.m1515b(parcel, m1498s);
                    break;
                case 13:
                    i2 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 14:
                    arrayList = C7409b.m1508i(parcel, m1498s);
                    break;
                case 15:
                    bundle3 = C7409b.m1515b(parcel, m1498s);
                    break;
                case 16:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case 32:
                case 38:
                case 62:
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
                case 18:
                    i3 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 19:
                    i4 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 20:
                    f = C7409b.m1500q(parcel, m1498s);
                    break;
                case 21:
                    str5 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 25:
                    j = C7409b.m1495v(parcel, m1498s);
                    break;
                case 26:
                    str6 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 27:
                    arrayList2 = C7409b.m1508i(parcel, m1498s);
                    break;
                case 28:
                    str7 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 29:
                    d20Var = (d20) C7409b.m1511f(parcel, m1498s, d20.CREATOR);
                    break;
                case 30:
                    arrayList3 = C7409b.m1508i(parcel, m1498s);
                    break;
                case 31:
                    j2 = C7409b.m1495v(parcel, m1498s);
                    break;
                case 33:
                    str8 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 34:
                    f2 = C7409b.m1500q(parcel, m1498s);
                    break;
                case 35:
                    i5 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 36:
                    i6 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 37:
                    z3 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 39:
                    str9 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 40:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 41:
                    str10 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 42:
                    z4 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 43:
                    i7 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 44:
                    bundle4 = C7409b.m1515b(parcel, m1498s);
                    break;
                case 45:
                    str11 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 46:
                    c6149px = (C6149px) C7409b.m1511f(parcel, m1498s, C6149px.CREATOR);
                    break;
                case 47:
                    z5 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 48:
                    bundle5 = C7409b.m1515b(parcel, m1498s);
                    break;
                case 49:
                    str12 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 50:
                    str13 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 51:
                    str14 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 52:
                    z6 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 53:
                    arrayList4 = C7409b.m1512e(parcel, m1498s);
                    break;
                case 54:
                    str15 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 55:
                    arrayList5 = C7409b.m1508i(parcel, m1498s);
                    break;
                case 56:
                    i8 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 57:
                    z7 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 58:
                    z8 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 59:
                    z9 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 60:
                    arrayList6 = C7409b.m1508i(parcel, m1498s);
                    break;
                case 61:
                    str16 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 63:
                    s70Var = (s70) C7409b.m1511f(parcel, m1498s, s70.CREATOR);
                    break;
                case 64:
                    str17 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 65:
                    bundle6 = C7409b.m1515b(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new zf0(i, bundle, c6293tt, c6478yt, str, applicationInfo, packageInfo, str2, str3, str4, im0Var, bundle2, i2, arrayList, bundle3, z, i3, i4, f, str5, j, str6, arrayList2, str7, d20Var, arrayList3, j2, str8, f2, z2, i5, i6, z3, str9, str10, z4, i7, bundle4, str11, c6149px, z5, bundle5, str12, str13, str14, z6, arrayList4, str15, arrayList5, i8, z7, z8, z9, arrayList6, str16, s70Var, str17, bundle6);
    }
}
