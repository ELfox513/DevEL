package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import p167r3.C5535b;
import p167r3.C5559z;
import p220x3.C7297q;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* loaded from: classes.dex */
public final class SignInConfiguration extends AbstractC7408a implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new C5559z();

    /* renamed from: a */
    public final String f7696a;

    /* renamed from: b */
    public GoogleSignInOptions f7697b;

    /* renamed from: X0 */
    public final GoogleSignInOptions m23046X0() {
        return this.f7697b;
    }

    public final int hashCode() {
        return new C5535b().m13104a(this.f7696a).m13104a(this.f7697b).m13103b();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInConfiguration)) {
            return false;
        }
        SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
        if (this.f7696a.equals(signInConfiguration.f7696a)) {
            GoogleSignInOptions googleSignInOptions = this.f7697b;
            if (googleSignInOptions == null) {
                if (signInConfiguration.f7697b == null) {
                    return true;
                }
            } else if (googleSignInOptions.equals(signInConfiguration.f7697b)) {
                return true;
            }
        }
        return false;
    }

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this.f7696a = C7297q.m1887f(str);
        this.f7697b = googleSignInOptions;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 2, this.f7696a, false);
        C7411c.m1474q(parcel, 5, this.f7697b, i, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
