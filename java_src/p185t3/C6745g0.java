package p185t3;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: t3.g0 */
/* loaded from: classes.dex */
public final class C6745g0 extends AbstractC7408a {
    public static final Parcelable.Creator<C6745g0> CREATOR = new C6747h0();

    /* renamed from: a */
    public final boolean f35415a;

    /* renamed from: b */
    public final String f35416b;

    /* renamed from: d */
    public final int f35417d;

    public C6745g0(boolean z, String str, int i) {
        this.f35415a = z;
        this.f35416b = str;
        this.f35417d = C6743f0.m3511a(i) - 1;
    }

    /* renamed from: X0 */
    public final String m3497X0() {
        return this.f35416b;
    }

    /* renamed from: Y0 */
    public final int m3496Y0() {
        return C6743f0.m3511a(this.f35417d);
    }

    public final boolean zza() {
        return this.f35415a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1488c(parcel, 1, this.f35415a);
        C7411c.m1473r(parcel, 2, this.f35416b, false);
        C7411c.m1479l(parcel, 3, this.f35417d);
        C7411c.m1489b(parcel, m1490a);
    }
}
