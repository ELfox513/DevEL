package p202v2;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import p168r4.AbstractBinderC5630bw;
import p168r4.InterfaceC5666cw;
import p168r4.c40;
import p168r4.d40;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
@Deprecated
/* renamed from: v2.g */
/* loaded from: classes.dex */
public final class C6983g extends AbstractC7408a {
    @RecentlyNonNull
    public static final Parcelable.Creator<C6983g> CREATOR = new C6990m();

    /* renamed from: a */
    public final boolean f35895a;

    /* renamed from: b */
    public final InterfaceC5666cw f35896b;

    /* renamed from: d */
    public final IBinder f35897d;

    /* renamed from: X0 */
    public final InterfaceC5666cw m2785X0() {
        return this.f35896b;
    }

    /* renamed from: Y0 */
    public final d40 m2784Y0() {
        IBinder iBinder = this.f35897d;
        if (iBinder == null) {
            return null;
        }
        return c40.m12632f7(iBinder);
    }

    public final boolean zza() {
        return this.f35895a;
    }

    public C6983g(boolean z, IBinder iBinder, IBinder iBinder2) {
        InterfaceC5666cw interfaceC5666cw;
        this.f35895a = z;
        if (iBinder != null) {
            interfaceC5666cw = AbstractBinderC5630bw.m12683f7(iBinder);
        } else {
            interfaceC5666cw = null;
        }
        this.f35896b = interfaceC5666cw;
        this.f35897d = iBinder2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        IBinder asBinder;
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1488c(parcel, 1, this.f35895a);
        InterfaceC5666cw interfaceC5666cw = this.f35896b;
        if (interfaceC5666cw == null) {
            asBinder = null;
        } else {
            asBinder = interfaceC5666cw.asBinder();
        }
        C7411c.m1480k(parcel, 2, asBinder, false);
        C7411c.m1480k(parcel, 3, this.f35897d, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
