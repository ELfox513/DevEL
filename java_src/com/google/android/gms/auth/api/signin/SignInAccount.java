package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import p158q3.C5420i;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* loaded from: classes.dex */
public class SignInAccount extends AbstractC7408a implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new C5420i();
    @Deprecated

    /* renamed from: a */
    public String f7693a;

    /* renamed from: b */
    public GoogleSignInAccount f7694b;
    @Deprecated

    /* renamed from: d */
    public String f7695d;

    /* renamed from: q0 */
    public final GoogleSignInAccount m23051q0() {
        return this.f7694b;
    }

    public SignInAccount(String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.f7694b = googleSignInAccount;
        this.f7693a = C7297q.m1886g(str, "8.3 and 8.4 SDKs require non-null email");
        this.f7695d = C7297q.m1886g(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 4, this.f7693a, false);
        C7411c.m1474q(parcel, 7, this.f7694b, i, false);
        C7411c.m1473r(parcel, 8, this.f7695d, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
