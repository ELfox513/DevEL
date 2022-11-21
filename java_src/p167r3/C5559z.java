package p167r3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import p228y3.C7409b;
/* renamed from: r3.z */
/* loaded from: classes.dex */
public final class C5559z implements Parcelable.Creator<SignInConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration[] newArray(int i) {
        return new SignInConfiguration[i];
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInConfiguration createFromParcel(Parcel parcel) {
        int m1491z = C7409b.m1491z(parcel);
        String str = null;
        GoogleSignInOptions googleSignInOptions = null;
        while (parcel.dataPosition() < m1491z) {
            int m1498s = C7409b.m1498s(parcel);
            int m1504m = C7409b.m1504m(m1498s);
            if (m1504m != 2) {
                if (m1504m != 5) {
                    C7409b.m1492y(parcel, m1498s);
                } else {
                    googleSignInOptions = (GoogleSignInOptions) C7409b.m1511f(parcel, m1498s, GoogleSignInOptions.CREATOR);
                }
            } else {
                str = C7409b.m1510g(parcel, m1498s);
            }
        }
        C7409b.m1505l(parcel, m1491z);
        return new SignInConfiguration(str, googleSignInOptions);
    }
}
