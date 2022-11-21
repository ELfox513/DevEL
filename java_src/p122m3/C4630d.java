package p122m3;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: m3.d */
/* loaded from: classes.dex */
public final class C4630d extends AbstractC7408a {
    public static final Parcelable.Creator<C4630d> CREATOR = new C4631e();

    /* renamed from: a */
    public final String f18671a;

    /* renamed from: b */
    public final String f18672b;

    public C4630d(String str, String str2) {
        this.f18671a = str;
        this.f18672b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f18671a, false);
        C7411c.m1473r(parcel, 2, this.f18672b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
