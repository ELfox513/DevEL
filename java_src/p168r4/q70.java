package p168r4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.q70 */
/* loaded from: classes2.dex */
public final class q70 extends AbstractC7408a {
    public static final Parcelable.Creator<q70> CREATOR = new r70();

    /* renamed from: a */
    public final String f30028a;

    /* renamed from: b */
    public final Bundle f30029b;

    public q70(String str, Bundle bundle) {
        this.f30028a = str;
        this.f30029b = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f30028a, false);
        C7411c.m1485f(parcel, 2, this.f30029b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
