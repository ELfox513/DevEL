package p220x3;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
import p221x4.C7325a;
/* renamed from: x3.u1 */
/* loaded from: classes.dex */
public final class C7311u1 extends C7325a implements InterfaceC7317w1 {
    public C7311u1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // p220x3.InterfaceC7317w1
    /* renamed from: c */
    public final int mo1846c() {
        Parcel m1839j0 = m1839j0(2, m1838o0());
        int readInt = m1839j0.readInt();
        m1839j0.recycle();
        return readInt;
    }

    @Override // p220x3.InterfaceC7317w1
    /* renamed from: e */
    public final InterfaceC3512a mo1845e() {
        Parcel m1839j0 = m1839j0(1, m1838o0());
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m1839j0.readStrongBinder());
        m1839j0.recycle();
        return m18742o0;
    }
}
