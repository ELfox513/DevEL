package p078h4;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.GameEntity;
import p228y3.C7409b;
/* renamed from: h4.p */
/* loaded from: classes.dex */
public class C4040p implements Parcelable.Creator<GameEntity> {
    @Override // android.os.Parcelable.Creator
    public /* synthetic */ GameEntity[] newArray(int i) {
        return new GameEntity[i];
    }

    /* renamed from: a */
    public GameEntity mo17489a(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        Uri uri = null;
        Uri uri2 = null;
        Uri uri3 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        boolean z = false;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 2:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 3:
                    str3 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 4:
                    str4 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 5:
                    str5 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 6:
                    str6 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 7:
                    uri = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                    break;
                case 8:
                    uri2 = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                    break;
                case 9:
                    uri3 = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                    break;
                case 10:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 11:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 12:
                    str7 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 13:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 14:
                    i2 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 15:
                    i3 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 16:
                    z3 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 17:
                    z4 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 18:
                    str8 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 19:
                    str9 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 20:
                    str10 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 21:
                    z5 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 22:
                    z6 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 23:
                    z7 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 24:
                    str11 = C7409b.m1510g(parcel, m1498s);
                    break;
                case 25:
                    z8 = C7409b.m1503n(parcel, m1498s);
                    break;
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new GameEntity(str, str2, str3, str4, str5, str6, uri, uri2, uri3, z, z2, str7, i, i2, i3, z3, z4, str8, str9, str10, z5, z6, z7, str11, z8);
    }
}
