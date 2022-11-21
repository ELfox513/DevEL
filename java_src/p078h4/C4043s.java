package p078h4;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.games.PlayerEntity;
import p114l4.C4563a;
import p228y3.C7409b;
/* renamed from: h4.s */
/* loaded from: classes.dex */
public class C4043s implements Parcelable.Creator<PlayerEntity> {
    @Override // android.os.Parcelable.Creator
    public /* synthetic */ PlayerEntity[] newArray(int i) {
        return new PlayerEntity[i];
    }

    /* renamed from: a */
    public PlayerEntity mo17488a(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        long j = 0;
        long j2 = 0;
        String str = null;
        String str2 = null;
        Uri uri = null;
        Uri uri2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        C4563a c4563a = null;
        C4035k c4035k = null;
        String str6 = null;
        String str7 = null;
        Uri uri3 = null;
        String str8 = null;
        Uri uri4 = null;
        String str9 = null;
        C4047w c4047w = null;
        C4038n c4038n = null;
        long j3 = -1;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 29) {
                if (m1504m != 33) {
                    if (m1504m != 35) {
                        switch (m1504m) {
                            case 1:
                                str = C7409b.m1510g(parcel, m1498s);
                                continue;
                            case 2:
                                str2 = C7409b.m1510g(parcel, m1498s);
                                continue;
                            case 3:
                                uri = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                                continue;
                            case 4:
                                uri2 = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                                continue;
                            case 5:
                                j = C7409b.m1495v(parcel, m1498s);
                                continue;
                            case 6:
                                i = C7409b.m1496u(parcel, m1498s);
                                continue;
                            case 7:
                                j2 = C7409b.m1495v(parcel, m1498s);
                                continue;
                            case 8:
                                str3 = C7409b.m1510g(parcel, m1498s);
                                continue;
                            case 9:
                                str4 = C7409b.m1510g(parcel, m1498s);
                                continue;
                            default:
                                switch (m1504m) {
                                    case 14:
                                        str5 = C7409b.m1510g(parcel, m1498s);
                                        continue;
                                    case 15:
                                        c4563a = (C4563a) C7409b.m1511f(parcel, m1498s, C4563a.CREATOR);
                                        continue;
                                    case 16:
                                        c4035k = (C4035k) C7409b.m1511f(parcel, m1498s, C4035k.CREATOR);
                                        continue;
                                        continue;
                                    default:
                                        switch (m1504m) {
                                            case 18:
                                                z = C7409b.m1503n(parcel, m1498s);
                                                continue;
                                            case 19:
                                                z2 = C7409b.m1503n(parcel, m1498s);
                                                continue;
                                            case 20:
                                                str6 = C7409b.m1510g(parcel, m1498s);
                                                continue;
                                            case 21:
                                                str7 = C7409b.m1510g(parcel, m1498s);
                                                continue;
                                            case 22:
                                                uri3 = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                                                continue;
                                            case 23:
                                                str8 = C7409b.m1510g(parcel, m1498s);
                                                continue;
                                            case 24:
                                                uri4 = (Uri) C7409b.m1511f(parcel, m1498s, Uri.CREATOR);
                                                continue;
                                            case 25:
                                                str9 = C7409b.m1510g(parcel, m1498s);
                                                continue;
                                                continue;
                                            default:
                                                C7409b.m1492y(parcel, m1498s);
                                                continue;
                                        }
                                }
                        }
                    } else {
                        c4038n = (C4038n) C7409b.m1511f(parcel, m1498s, C4038n.CREATOR);
                    }
                } else {
                    c4047w = (C4047w) C7409b.m1511f(parcel, m1498s, C4047w.CREATOR);
                }
            } else {
                j3 = C7409b.m1495v(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new PlayerEntity(str, str2, uri, uri2, j, i, j2, str3, str4, str5, c4563a, c4035k, z, z2, str6, str7, uri3, str8, uri4, str9, j3, c4047w, c4038n);
    }
}
