package p016b3;

import android.os.Parcel;
import android.os.Parcelable;
import p168r4.C5996lt;
import p168r4.dq2;
import p168r4.l13;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: b3.g0 */
/* loaded from: classes.dex */
public final class C0479g0 extends AbstractC7408a {
    public static final Parcelable.Creator<C0479g0> CREATOR = new C0483h0();

    /* renamed from: a */
    public final String f1607a;

    /* renamed from: b */
    public final int f1608b;

    public C0479g0(String str, int i) {
        this.f1607a = str == null ? "" : str;
        this.f1608b = i;
    }

    /* renamed from: X0 */
    public static C0479g0 m26372X0(Throwable th) {
        String message;
        C5996lt m11992a = dq2.m11992a(th);
        if (l13.m9809c(th.getMessage())) {
            message = m11992a.f27362b;
        } else {
            message = th.getMessage();
        }
        return new C0479g0(message, m11992a.f27361a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f1607a, false);
        C7411c.m1479l(parcel, 2, this.f1608b);
        C7411c.m1489b(parcel, m1490a);
    }
}
