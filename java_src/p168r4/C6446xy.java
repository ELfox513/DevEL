package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import p184t2.C6728w;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.xy */
/* loaded from: classes2.dex */
public final class C6446xy extends AbstractC7408a {
    public static final Parcelable.Creator<C6446xy> CREATOR = new C6483yy();

    /* renamed from: a */
    public final boolean f33802a;

    /* renamed from: b */
    public final boolean f33803b;

    /* renamed from: d */
    public final boolean f33804d;

    public C6446xy(C6728w c6728w) {
        this(c6728w.m3538c(), c6728w.m3539b(), c6728w.m3540a());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1488c(parcel, 2, this.f33802a);
        C7411c.m1488c(parcel, 3, this.f33803b);
        C7411c.m1488c(parcel, 4, this.f33804d);
        C7411c.m1489b(parcel, m1490a);
    }

    public C6446xy(boolean z, boolean z2, boolean z3) {
        this.f33802a = z;
        this.f33803b = z2;
        this.f33804d = z3;
    }
}
