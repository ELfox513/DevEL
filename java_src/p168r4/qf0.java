package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.qf0 */
/* loaded from: classes2.dex */
public final class qf0 extends AbstractC7408a {
    public static final Parcelable.Creator<qf0> CREATOR = new rf0();

    /* renamed from: a */
    public final View f30099a;

    /* renamed from: b */
    public final Map<String, WeakReference<View>> f30100b;

    public qf0(IBinder iBinder, IBinder iBinder2) {
        this.f30099a = (View) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder));
        this.f30100b = (Map) BinderC3514b.m18740t0(InterfaceC3512a.AbstractBinderC3513a.m18742o0(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1480k(parcel, 1, BinderC3514b.m18741L0(this.f30099a).asBinder(), false);
        C7411c.m1480k(parcel, 2, BinderC3514b.m18741L0(this.f30100b).asBinder(), false);
        C7411c.m1489b(parcel, m1490a);
    }
}
