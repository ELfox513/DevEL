package p069g4;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
import p221x4.C7325a;
import p221x4.C7327c;
/* renamed from: g4.e */
/* loaded from: classes.dex */
public final class C3592e extends C7325a {
    public C3592e(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    /* renamed from: L0 */
    public final InterfaceC3512a m18557L0(InterfaceC3512a interfaceC3512a, String str, int i, InterfaceC3512a interfaceC3512a2) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1832e(m1838o0, interfaceC3512a);
        m1838o0.writeString(str);
        m1838o0.writeInt(i);
        C7327c.m1832e(m1838o0, interfaceC3512a2);
        Parcel m1839j0 = m1839j0(3, m1838o0);
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m1839j0.readStrongBinder());
        m1839j0.recycle();
        return m18742o0;
    }

    /* renamed from: t0 */
    public final InterfaceC3512a m18556t0(InterfaceC3512a interfaceC3512a, String str, int i, InterfaceC3512a interfaceC3512a2) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1832e(m1838o0, interfaceC3512a);
        m1838o0.writeString(str);
        m1838o0.writeInt(i);
        C7327c.m1832e(m1838o0, interfaceC3512a2);
        Parcel m1839j0 = m1839j0(2, m1838o0);
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m1839j0.readStrongBinder());
        m1839j0.recycle();
        return m18742o0;
    }
}
