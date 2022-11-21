package p220x3;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import p185t3.C6738d;
import p228y3.C7409b;
import p228y3.C7411c;
/* renamed from: x3.k1 */
/* loaded from: classes.dex */
public final class C7279k1 implements Parcelable.Creator<C7261f> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7261f createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        IBinder iBinder = null;
        Scope[] scopeArr = null;
        Bundle bundle = null;
        Account account = null;
        C6738d[] c6738dArr = null;
        C6738d[] c6738dArr2 = null;
        String str2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            switch (C7409b.m1504m(m1498s)) {
                case 1:
                    i = C7409b.m1496u(parcel, m1498s);
                    break;
                case 2:
                    i2 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 3:
                    i3 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 4:
                    str = C7409b.m1510g(parcel, m1498s);
                    break;
                case 5:
                    iBinder = C7409b.m1497t(parcel, m1498s);
                    break;
                case 6:
                    scopeArr = (Scope[]) C7409b.m1507j(parcel, m1498s, Scope.CREATOR);
                    break;
                case 7:
                    bundle = C7409b.m1515b(parcel, m1498s);
                    break;
                case 8:
                    account = (Account) C7409b.m1511f(parcel, m1498s, Account.CREATOR);
                    break;
                case 9:
                default:
                    C7409b.m1492y(parcel, m1498s);
                    break;
                case 10:
                    c6738dArr = (C6738d[]) C7409b.m1507j(parcel, m1498s, C6738d.CREATOR);
                    break;
                case 11:
                    c6738dArr2 = (C6738d[]) C7409b.m1507j(parcel, m1498s, C6738d.CREATOR);
                    break;
                case 12:
                    z = C7409b.m1503n(parcel, m1498s);
                    break;
                case 13:
                    i4 = C7409b.m1496u(parcel, m1498s);
                    break;
                case 14:
                    z2 = C7409b.m1503n(parcel, m1498s);
                    break;
                case 15:
                    str2 = C7409b.m1510g(parcel, m1498s);
                    break;
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new C7261f(i, i2, i3, str, iBinder, scopeArr, bundle, account, c6738dArr, c6738dArr2, z, i4, z2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ C7261f[] newArray(int i) {
        return new C7261f[i];
    }

    /* renamed from: a */
    public static void m1926a(C7261f c7261f, Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, c7261f.f36708a);
        C7411c.m1479l(parcel, 2, c7261f.f36709b);
        C7411c.m1479l(parcel, 3, c7261f.f36710d);
        C7411c.m1473r(parcel, 4, c7261f.f36711k, false);
        C7411c.m1480k(parcel, 5, c7261f.f36712p, false);
        C7411c.m1470u(parcel, 6, c7261f.f36713q, i, false);
        C7411c.m1485f(parcel, 7, c7261f.f36714r, false);
        C7411c.m1474q(parcel, 8, c7261f.f36715s, i, false);
        C7411c.m1470u(parcel, 10, c7261f.f36716t, i, false);
        C7411c.m1470u(parcel, 11, c7261f.f36717u, i, false);
        C7411c.m1488c(parcel, 12, c7261f.f36718v);
        C7411c.m1479l(parcel, 13, c7261f.f36719w);
        C7411c.m1488c(parcel, 14, c7261f.f36720x);
        C7411c.m1473r(parcel, 15, c7261f.m1949X0(), false);
        C7411c.m1489b(parcel, m1490a);
    }
}
