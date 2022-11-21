package p168r4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.mz2 */
/* loaded from: classes2.dex */
public final class mz2 extends C6155q2 {
    public mz2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    /* renamed from: A2 */
    public final void m9248A2(byte[] bArr) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeByteArray(bArr);
        m8072t0(5, m8074j0);
    }

    /* renamed from: I0 */
    public final void m9247I0(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(7, m8074j0);
    }

    /* renamed from: Y */
    public final void m9246Y(int i) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeInt(i);
        m8072t0(6, m8074j0);
    }

    /* renamed from: b2 */
    public final void m9245b2(int[] iArr) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeIntArray(null);
        m8072t0(4, m8074j0);
    }

    /* renamed from: c */
    public final void m9244c() {
        m8072t0(3, m8074j0());
    }

    /* renamed from: e3 */
    public final void m9243e3(InterfaceC3512a interfaceC3512a, String str, String str2) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString(str);
        m8074j0.writeString(null);
        m8072t0(8, m8074j0);
    }
}
