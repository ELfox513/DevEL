package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p184t2.C6723t;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.sy */
/* loaded from: classes2.dex */
public final class C6261sy extends AbstractC7408a {
    public static final Parcelable.Creator<C6261sy> CREATOR = new C6298ty();

    /* renamed from: a */
    public final int f31579a;

    /* renamed from: b */
    public final int f31580b;

    public C6261sy(int i, int i2) {
        this.f31579a = i;
        this.f31580b = i2;
    }

    public C6261sy(C6723t c6723t) {
        this.f31579a = c6723t.m3556b();
        this.f31580b = c6723t.m3555c();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f31579a);
        C7411c.m1479l(parcel, 2, this.f31580b);
        C7411c.m1489b(parcel, m1490a);
    }
}
