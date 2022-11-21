package p202v2;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import p168r4.c40;
import p168r4.d40;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: v2.a */
/* loaded from: classes.dex */
public final class C6974a extends AbstractC7408a {
    @RecentlyNonNull
    public static final Parcelable.Creator<C6974a> CREATOR = new C6987j();

    /* renamed from: a */
    public final boolean f35877a;

    /* renamed from: b */
    public final IBinder f35878b;

    public C6974a(boolean z, IBinder iBinder) {
        this.f35877a = z;
        this.f35878b = iBinder;
    }

    /* renamed from: X0 */
    public boolean m2817X0() {
        return this.f35877a;
    }

    /* renamed from: Y0 */
    public final d40 m2816Y0() {
        IBinder iBinder = this.f35878b;
        if (iBinder == null) {
            return null;
        }
        return c40.m12632f7(iBinder);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1488c(parcel, 1, m2817X0());
        C7411c.m1480k(parcel, 2, this.f35878b, false);
        C7411c.m1489b(parcel, m1490a);
    }
}
