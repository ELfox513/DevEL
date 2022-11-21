package p220x3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p185t3.C6734b;
import p220x3.InterfaceC7273j;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: x3.p0 */
/* loaded from: classes.dex */
public final class C7295p0 extends AbstractC7408a {
    public static final Parcelable.Creator<C7295p0> CREATOR = new C7298q0();

    /* renamed from: a */
    public final int f36772a;

    /* renamed from: b */
    public final IBinder f36773b;

    /* renamed from: d */
    public final C6734b f36774d;

    /* renamed from: k */
    public final boolean f36775k;

    /* renamed from: p */
    public final boolean f36776p;

    public C7295p0(int i, IBinder iBinder, C6734b c6734b, boolean z, boolean z2) {
        this.f36772a = i;
        this.f36773b = iBinder;
        this.f36774d = c6734b;
        this.f36775k = z;
        this.f36776p = z2;
    }

    /* renamed from: X0 */
    public final InterfaceC7273j m1901X0() {
        IBinder iBinder = this.f36773b;
        if (iBinder == null) {
            return null;
        }
        return InterfaceC7273j.AbstractBinderC7274a.m1928o0(iBinder);
    }

    /* renamed from: Y0 */
    public final C6734b m1900Y0() {
        return this.f36774d;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof C7295p0) {
            C7295p0 c7295p0 = (C7295p0) obj;
            return this.f36774d.equals(c7295p0.f36774d) && C7289o.m1908a(m1901X0(), c7295p0.m1901X0());
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f36772a);
        C7411c.m1480k(parcel, 2, this.f36773b, false);
        C7411c.m1474q(parcel, 3, this.f36774d, i, false);
        C7411c.m1488c(parcel, 4, this.f36775k);
        C7411c.m1488c(parcel, 5, this.f36776p);
        C7411c.m1489b(parcel, m1490a);
    }
}
