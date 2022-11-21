package p105k4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import p006a5.C0094h;
import p006a5.C0100n;
/* renamed from: k4.h */
/* loaded from: classes.dex */
public final class C4450h extends C0094h implements InterfaceC4446d {
    public C4450h(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.games.internal.IGamesService");
    }

    @Override // p105k4.InterfaceC4446d
    /* renamed from: P5 */
    public final void mo16468P5(InterfaceC4460p interfaceC4460p) {
        Parcel m27680j0 = m27680j0();
        C0100n.m27675b(m27680j0, interfaceC4460p);
        m27678t0(5002, m27680j0);
    }

    @Override // p105k4.InterfaceC4446d
    /* renamed from: Q6 */
    public final Bundle mo16467Q6() {
        Parcel m27679o0 = m27679o0(5004, m27680j0());
        Bundle bundle = (Bundle) C0100n.m27676a(m27679o0, Bundle.CREATOR);
        m27679o0.recycle();
        return bundle;
    }

    @Override // p105k4.InterfaceC4446d
    /* renamed from: V */
    public final void mo16466V(long j) {
        Parcel m27680j0 = m27680j0();
        m27680j0.writeLong(j);
        m27678t0(5001, m27680j0);
    }

    @Override // p105k4.InterfaceC4446d
    /* renamed from: X5 */
    public final void mo16465X5() {
        m27678t0(5006, m27680j0());
    }

    @Override // p105k4.InterfaceC4446d
    /* renamed from: e5 */
    public final void mo16464e5(IBinder iBinder, Bundle bundle) {
        Parcel m27680j0 = m27680j0();
        m27680j0.writeStrongBinder(iBinder);
        C0100n.m27674c(m27680j0, bundle);
        m27678t0(5005, m27680j0);
    }

    @Override // p105k4.InterfaceC4446d
    /* renamed from: m4 */
    public final void mo16463m4(InterfaceC4460p interfaceC4460p, String str, IBinder iBinder, Bundle bundle) {
        Parcel m27680j0 = m27680j0();
        C0100n.m27675b(m27680j0, interfaceC4460p);
        m27680j0.writeString(str);
        m27680j0.writeStrongBinder(iBinder);
        C0100n.m27674c(m27680j0, bundle);
        m27678t0(5024, m27680j0);
    }

    @Override // p105k4.InterfaceC4446d
    /* renamed from: t6 */
    public final void mo16462t6(InterfaceC4444b interfaceC4444b, long j) {
        Parcel m27680j0 = m27680j0();
        C0100n.m27675b(m27680j0, interfaceC4444b);
        m27680j0.writeLong(j);
        m27678t0(15501, m27680j0);
    }
}
