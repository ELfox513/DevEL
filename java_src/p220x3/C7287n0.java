package p220x3;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: x3.n0 */
/* loaded from: classes.dex */
public final class C7287n0 extends AbstractC7408a {
    public static final Parcelable.Creator<C7287n0> CREATOR = new C7291o0();

    /* renamed from: a */
    public final int f36757a;

    /* renamed from: b */
    public final Account f36758b;

    /* renamed from: d */
    public final int f36759d;

    /* renamed from: k */
    public final GoogleSignInAccount f36760k;

    public C7287n0(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.f36757a = i;
        this.f36758b = account;
        this.f36759d = i2;
        this.f36760k = googleSignInAccount;
    }

    public C7287n0(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f36757a);
        C7411c.m1474q(parcel, 2, this.f36758b, i, false);
        C7411c.m1479l(parcel, 3, this.f36759d);
        C7411c.m1474q(parcel, 4, this.f36760k, i, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
