package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import p184t2.C6702a;
import p184t2.C6716m;
import p184t2.C6725u;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: r4.lt */
/* loaded from: classes2.dex */
public final class C5996lt extends AbstractC7408a {
    public static final Parcelable.Creator<C5996lt> CREATOR = new C6071nt();

    /* renamed from: a */
    public final int f27361a;

    /* renamed from: b */
    public final String f27362b;

    /* renamed from: d */
    public final String f27363d;

    /* renamed from: k */
    public C5996lt f27364k;

    /* renamed from: p */
    public IBinder f27365p;

    public C5996lt(int i, String str, String str2, C5996lt c5996lt, IBinder iBinder) {
        this.f27361a = i;
        this.f27362b = str;
        this.f27363d = str2;
        this.f27364k = c5996lt;
        this.f27365p = iBinder;
    }

    /* renamed from: X0 */
    public final C6702a m9568X0() {
        C6702a c6702a;
        C5996lt c5996lt = this.f27364k;
        if (c5996lt == null) {
            c6702a = null;
        } else {
            c6702a = new C6702a(c5996lt.f27361a, c5996lt.f27362b, c5996lt.f27363d);
        }
        return new C6702a(this.f27361a, this.f27362b, this.f27363d, c6702a);
    }

    /* renamed from: Y0 */
    public final C6716m m9567Y0() {
        C6702a c6702a;
        C5996lt c5996lt = this.f27364k;
        InterfaceC5853hx interfaceC5853hx = null;
        if (c5996lt == null) {
            c6702a = null;
        } else {
            c6702a = new C6702a(c5996lt.f27361a, c5996lt.f27362b, c5996lt.f27363d);
        }
        int i = this.f27361a;
        String str = this.f27362b;
        String str2 = this.f27363d;
        IBinder iBinder = this.f27365p;
        if (iBinder != null) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            if (queryLocalInterface instanceof InterfaceC5853hx) {
                interfaceC5853hx = (InterfaceC5853hx) queryLocalInterface;
            } else {
                interfaceC5853hx = new C5779fx(iBinder);
            }
        }
        return new C6716m(i, str, str2, c6702a, C6725u.m3549d(interfaceC5853hx));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1479l(parcel, 1, this.f27361a);
        C7411c.m1473r(parcel, 2, this.f27362b, false);
        C7411c.m1473r(parcel, 3, this.f27363d, false);
        C7411c.m1474q(parcel, 4, this.f27364k, i, false);
        C7411c.m1480k(parcel, 5, this.f27365p, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
