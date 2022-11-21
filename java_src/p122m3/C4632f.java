package p122m3;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: m3.f */
/* loaded from: classes.dex */
public final class C4632f extends AbstractC7408a {
    public static final Parcelable.Creator<C4632f> CREATOR = new C4633g();

    /* renamed from: a */
    public final String f18673a;

    /* renamed from: b */
    public final int f18674b;

    public C4632f(String str, int i) {
        this.f18673a = str;
        this.f18674b = i;
    }

    /* renamed from: X0 */
    public final int m15908X0() {
        return this.f18674b;
    }

    /* renamed from: Y0 */
    public final String m15907Y0() {
        return this.f18673a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f18673a, false);
        C7411c.m1479l(parcel, 2, this.f18674b);
        C7411c.m1489b(parcel, m1490a);
    }
}
