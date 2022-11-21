package p088i5;

import android.os.Parcel;
import android.os.Parcelable;
import p185t3.C6734b;
import p220x3.C7295p0;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: i5.l */
/* loaded from: classes2.dex */
public final class C4138l extends AbstractC7408a {
    public static final Parcelable.Creator<C4138l> CREATOR = new C4139m();

    /* renamed from: a */
    public final int f17748a;

    /* renamed from: b */
    public final C6734b f17749b;

    /* renamed from: d */
    public final C7295p0 f17750d;

    public C4138l(int i, C6734b c6734b, C7295p0 c7295p0) {
        this.f17748a = i;
        this.f17749b = c6734b;
        this.f17750d = c7295p0;
    }

    /* renamed from: X0 */
    public final C6734b m17321X0() {
        return this.f17749b;
    }

    /* renamed from: Y0 */
    public final C7295p0 m17320Y0() {
        return this.f17750d;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f17748a);
        C7411c.m1474q(parcel, 2, this.f17749b, i, false);
        C7411c.m1474q(parcel, 3, this.f17750d, i, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
