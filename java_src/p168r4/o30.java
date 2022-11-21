package p168r4;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: r4.o30 */
/* loaded from: classes2.dex */
public final class o30 extends C6155q2 implements q30 {
    public o30(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // p168r4.q30
    /* renamed from: F6 */
    public final void mo8038F6(g30 g30Var, String str) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, g30Var);
        m8074j0.writeString(str);
        m8072t0(1, m8074j0);
    }
}
