package p185t3;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: t3.d0 */
/* loaded from: classes.dex */
public final class C6739d0 extends AbstractC7408a {
    public static final Parcelable.Creator<C6739d0> CREATOR = new C6741e0();

    /* renamed from: a */
    public final String f35406a;

    /* renamed from: b */
    public final boolean f35407b;

    /* renamed from: d */
    public final boolean f35408d;

    /* renamed from: k */
    public final Context f35409k;

    /* renamed from: p */
    public final boolean f35410p;

    public C6739d0(String str, boolean z, boolean z2, IBinder iBinder, boolean z3) {
        this.f35406a = str;
        this.f35407b = z;
        this.f35408d = z2;
        this.f35409k = (Context) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder));
        this.f35410p = z3;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [f4.a, android.os.IBinder] */
    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f35406a, false);
        C7411c.m1488c(parcel, 2, this.f35407b);
        C7411c.m1488c(parcel, 3, this.f35408d);
        C7411c.m1480k(parcel, 4, BinderC3514b.m18741L0(this.f35409k), false);
        C7411c.m1488c(parcel, 5, this.f35410p);
        C7411c.m1489b(parcel, m1490a);
    }
}
