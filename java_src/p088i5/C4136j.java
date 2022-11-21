package p088i5;

import android.os.Parcel;
import android.os.Parcelable;
import p220x3.C7287n0;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: i5.j */
/* loaded from: classes2.dex */
public final class C4136j extends AbstractC7408a {
    public static final Parcelable.Creator<C4136j> CREATOR = new C4137k();

    /* renamed from: a */
    public final int f17746a;

    /* renamed from: b */
    public final C7287n0 f17747b;

    public C4136j(int i, C7287n0 c7287n0) {
        this.f17746a = i;
        this.f17747b = c7287n0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f17746a);
        C7411c.m1474q(parcel, 2, this.f17747b, i, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
