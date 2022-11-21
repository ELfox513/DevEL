package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.px */
/* loaded from: classes2.dex */
public final class C6149px extends AbstractC7408a {
    public static final Parcelable.Creator<C6149px> CREATOR = new C6186qx();

    /* renamed from: a */
    public final int f29840a;

    public C6149px(int i) {
        this.f29840a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 2, this.f29840a);
        C7411c.m1489b(parcel, m1490a);
    }
}
