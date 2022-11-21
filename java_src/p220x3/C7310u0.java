package p220x3;

import android.os.IBinder;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
import p185t3.C6739d0;
import p185t3.C6745g0;
import p185t3.C6749i0;
import p221x4.C7325a;
import p221x4.C7327c;
/* renamed from: x3.u0 */
/* loaded from: classes.dex */
public final class C7310u0 extends C7325a implements InterfaceC7316w0 {
    public C7310u0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // p220x3.InterfaceC7316w0
    /* renamed from: C2 */
    public final C6745g0 mo1849C2(C6739d0 c6739d0) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1833d(m1838o0, c6739d0);
        Parcel m1839j0 = m1839j0(6, m1838o0);
        C6745g0 c6745g0 = (C6745g0) C7327c.m1834c(m1839j0, C6745g0.CREATOR);
        m1839j0.recycle();
        return c6745g0;
    }

    @Override // p220x3.InterfaceC7316w0
    /* renamed from: X6 */
    public final boolean mo1848X6(C6749i0 c6749i0, InterfaceC3512a interfaceC3512a) {
        Parcel m1838o0 = m1838o0();
        C7327c.m1833d(m1838o0, c6749i0);
        C7327c.m1832e(m1838o0, interfaceC3512a);
        Parcel m1839j0 = m1839j0(5, m1838o0);
        boolean m1836a = C7327c.m1836a(m1839j0);
        m1839j0.recycle();
        return m1836a;
    }

    @Override // p220x3.InterfaceC7316w0
    /* renamed from: g */
    public final boolean mo1847g() {
        Parcel m1839j0 = m1839j0(7, m1838o0());
        boolean m1836a = C7327c.m1836a(m1839j0);
        m1839j0.recycle();
        return m1836a;
    }
}
