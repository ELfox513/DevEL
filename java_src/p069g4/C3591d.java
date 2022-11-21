package p069g4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
import p221x4.C7325a;
import p221x4.C7327c;
/* renamed from: g4.d */
/* loaded from: classes.dex */
public final class C3591d extends C7325a {
    public C3591d(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    /* renamed from: A2 */
    public final int m18564A2(InterfaceC3512a interfaceC3512a, String str, boolean z) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1832e(m1838o0, interfaceC3512a);
        m1838o0.writeString(str);
        C7327c.m1835b(m1838o0, z);
        Parcel m1839j0 = m1839j0(5, m1838o0);
        int readInt = m1839j0.readInt();
        m1839j0.recycle();
        return readInt;
    }

    /* renamed from: L0 */
    public final int m18563L0(InterfaceC3512a interfaceC3512a, String str, boolean z) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1832e(m1838o0, interfaceC3512a);
        m1838o0.writeString(str);
        C7327c.m1835b(m1838o0, z);
        Parcel m1839j0 = m1839j0(3, m1838o0);
        int readInt = m1839j0.readInt();
        m1839j0.recycle();
        return readInt;
    }

    /* renamed from: b2 */
    public final InterfaceC3512a m18562b2(InterfaceC3512a interfaceC3512a, String str, int i) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1832e(m1838o0, interfaceC3512a);
        m1838o0.writeString(str);
        m1838o0.writeInt(i);
        Parcel m1839j0 = m1839j0(4, m1838o0);
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m1839j0.readStrongBinder());
        m1839j0.recycle();
        return m18742o0;
    }

    /* renamed from: e3 */
    public final InterfaceC3512a m18561e3(InterfaceC3512a interfaceC3512a, String str, boolean z, long j) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1832e(m1838o0, interfaceC3512a);
        m1838o0.writeString(str);
        C7327c.m1835b(m1838o0, z);
        m1838o0.writeLong(j);
        Parcel m1839j0 = m1839j0(7, m1838o0);
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m1839j0.readStrongBinder());
        m1839j0.recycle();
        return m18742o0;
    }

    /* renamed from: j */
    public final int m18560j() {
        Parcel m1839j0 = m1839j0(6, m1838o0());
        int readInt = m1839j0.readInt();
        m1839j0.recycle();
        return readInt;
    }

    /* renamed from: p6 */
    public final InterfaceC3512a m18559p6(InterfaceC3512a interfaceC3512a, String str, int i, InterfaceC3512a interfaceC3512a2) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1832e(m1838o0, interfaceC3512a);
        m1838o0.writeString(str);
        m1838o0.writeInt(i);
        C7327c.m1832e(m1838o0, interfaceC3512a2);
        Parcel m1839j0 = m1839j0(8, m1838o0);
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m1839j0.readStrongBinder());
        m1839j0.recycle();
        return m18742o0;
    }

    /* renamed from: t0 */
    public final InterfaceC3512a m18558t0(InterfaceC3512a interfaceC3512a, String str, int i) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1832e(m1838o0, interfaceC3512a);
        m1838o0.writeString(str);
        m1838o0.writeInt(i);
        Parcel m1839j0 = m1839j0(2, m1838o0);
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m1839j0.readStrongBinder());
        m1839j0.recycle();
        return m18742o0;
    }
}
