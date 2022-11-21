package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.uy */
/* loaded from: classes2.dex */
public final class C6335uy extends AbstractC7408a {
    public static final Parcelable.Creator<C6335uy> CREATOR = new C6372vy();

    /* renamed from: a */
    public final String f32493a;

    public C6335uy(String str) {
        this.f32493a = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 15, this.f32493a, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
