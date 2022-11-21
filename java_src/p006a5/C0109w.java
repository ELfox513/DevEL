package p006a5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p105k4.AbstractC4451i;
import p228y3.C7411c;
/* renamed from: a5.w */
/* loaded from: classes2.dex */
public final class C0109w extends AbstractC4451i {
    public static final Parcelable.Creator<C0109w> CREATOR = new C0108v();

    /* renamed from: a */
    public final Bundle f173a;

    /* renamed from: b */
    public final IBinder f174b;

    public C0109w(C0107u c0107u) {
        this.f173a = c0107u.m27668a();
        this.f174b = c0107u.f166a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1485f(parcel, 1, this.f173a, false);
        C7411c.m1480k(parcel, 2, this.f174b, false);
        C7411c.m1489b(parcel, m1490a);
    }

    public C0109w(Bundle bundle, IBinder iBinder) {
        this.f173a = bundle;
        this.f174b = iBinder;
    }
}
