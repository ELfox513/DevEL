package p185t3;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.AbstractBinderC7314v1;
import p228y3.AbstractC7408a;
import p228y3.C7411c;
/* renamed from: t3.i0 */
/* loaded from: classes.dex */
public final class C6749i0 extends AbstractC7408a {
    public static final Parcelable.Creator<C6749i0> CREATOR = new C6751j0();

    /* renamed from: a */
    public final String f35421a;

    /* renamed from: b */
    public final AbstractBinderC6769y f35422b;

    /* renamed from: d */
    public final boolean f35423d;

    /* renamed from: k */
    public final boolean f35424k;

    public C6749i0(String str, IBinder iBinder, boolean z, boolean z2) {
        this.f35421a = str;
        BinderC6770z binderC6770z = null;
        if (iBinder != null) {
            try {
                InterfaceC3512a mo1845e = AbstractBinderC7314v1.m1850o0(iBinder).mo1845e();
                byte[] bArr = mo1845e == null ? null : (byte[]) BinderC3514b.m18740t0(mo1845e);
                if (bArr != null) {
                    binderC6770z = new BinderC6770z(bArr);
                } else {
                    Log.e("GoogleCertificatesQuery", "Could not unwrap certificate");
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificatesQuery", "Could not unwrap certificate", e);
            }
        }
        this.f35422b = binderC6770z;
        this.f35423d = z;
        this.f35424k = z2;
    }

    public C6749i0(String str, AbstractBinderC6769y abstractBinderC6769y, boolean z, boolean z2) {
        this.f35421a = str;
        this.f35422b = abstractBinderC6769y;
        this.f35423d = z;
        this.f35424k = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m1490a = C7411c.m1490a(parcel);
        C7411c.m1473r(parcel, 1, this.f35421a, false);
        AbstractBinderC6769y abstractBinderC6769y = this.f35422b;
        if (abstractBinderC6769y == null) {
            Log.w("GoogleCertificatesQuery", "certificate binder is null");
            abstractBinderC6769y = null;
        }
        C7411c.m1480k(parcel, 2, abstractBinderC6769y, false);
        C7411c.m1488c(parcel, 3, this.f35423d);
        C7411c.m1488c(parcel, 4, this.f35424k);
        C7411c.m1489b(parcel, m1490a);
    }
}
