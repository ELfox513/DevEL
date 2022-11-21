package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.bg0 */
/* loaded from: classes2.dex */
public final class bg0 extends AbstractC7408a {
    public static final Parcelable.Creator<bg0> CREATOR = new cg0();

    /* renamed from: a */
    public final boolean f21050a;

    /* renamed from: b */
    public final List<String> f21051b;

    public bg0(boolean z, List<String> list) {
        this.f21050a = z;
        this.f21051b = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1488c(parcel, 2, this.f21050a);
        C7411c.m1471t(parcel, 3, this.f21051b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
