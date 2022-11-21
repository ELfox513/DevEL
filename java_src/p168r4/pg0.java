package p168r4;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import p228y3.C7409b;
/* renamed from: r4.pg0 */
/* loaded from: classes2.dex */
public final class pg0 implements Parcelable.Creator<og0> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ og0[] newArray(int i) {
        return new og0[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ og0 createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        Bundle bundle = null;
        im0 im0Var = null;
        ApplicationInfo applicationInfo = null;
        String str = null;
        ArrayList<String> arrayList = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        br2 br2Var = null;
        String str4 = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    bundle = C7409b.m1515b(parcel, m1498s);
                    break;
                case 2:
                    im0Var = (im0) C7409b.m1511f(parcel, m1498s, im0.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) C7409b.m1511f(parcel, m1498s, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 5:
                    arrayList = C7409b.m1508i(parcel, m1498s);
                    break;
                case 6:
                    packageInfo = (PackageInfo) C7409b.m1511f(parcel, m1498s, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 8:
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
                case 9:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 10:
                    br2Var = (br2) C7409b.m1511f(parcel, m1498s, br2.CREATOR);
                    break;
                case 11:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new og0(bundle, im0Var, applicationInfo, str, arrayList, packageInfo, str2, str3, br2Var, str4);
    }
}
