package p004a3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import p168r4.im0;
import p228y3.C7409b;
import p235z2.C7591j;
/* renamed from: a3.p */
/* loaded from: classes.dex */
public final class C0075p implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        C0064e c0064e = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        String str2 = null;
        IBinder iBinder5 = null;
        String str3 = null;
        im0 im0Var = null;
        String str4 = null;
        C7591j c7591j = null;
        IBinder iBinder6 = null;
        String str5 = null;
        IBinder iBinder7 = null;
        IBinder iBinder8 = null;
        IBinder iBinder9 = null;
        IBinder iBinder10 = null;
        String str6 = null;
        String str7 = null;
        IBinder iBinder11 = null;
        IBinder iBinder12 = null;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 2:
                    c0064e = (C0064e) C7409b.m1511f(parcel, m1498s, C0064e.CREATOR);
                    break;
                case 3:
                    iBinder = C7409b.m1497t(parcel, m1498s);
                    break;
                case 4:
                    iBinder2 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 5:
                    iBinder3 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 6:
                    iBinder4 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 7:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 8:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 9:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 10:
                    iBinder5 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 11:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 12:
                    i2 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 13:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 14:
                    im0Var = (im0) C7409b.m1511f(parcel, m1498s, im0.CREATOR);
                    break;
                case 15:
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
                case 16:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 17:
                    c7591j = (C7591j) C7409b.m1511f(parcel, m1498s, C7591j.CREATOR);
                    break;
                case 18:
                    iBinder6 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 19:
                    str5 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 20:
                    iBinder7 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 21:
                    iBinder8 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 22:
                    iBinder9 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 23:
                    iBinder10 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 24:
                    str6 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 25:
                    str7 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 26:
                    iBinder11 = C7409b.m1497t(parcel, m1498s);
                    break;
                case 27:
                    iBinder12 = C7409b.m1497t(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new AdOverlayInfoParcel(c0064e, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, im0Var, str4, c7591j, iBinder6, str5, iBinder7, iBinder8, iBinder9, iBinder10, str6, str7, iBinder11, iBinder12);
    }
}
