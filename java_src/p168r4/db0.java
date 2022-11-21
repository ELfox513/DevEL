package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: r4.db0 */
/* loaded from: classes2.dex */
public final class db0 extends C6155q2 implements fb0 {
    public db0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // p168r4.fb0
    /* renamed from: A */
    public final boolean mo11590A(String str) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        Parcel m8073o0 = m8073o0(2, m8074j0);
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p168r4.fb0
    /* renamed from: E0 */
    public final boolean mo11589E0(String str) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        Parcel m8073o0 = m8073o0(4, m8074j0);
        boolean m7251a = C6229s2.m7251a(m8073o0);
        m8073o0.recycle();
        return m7251a;
    }

    @Override // p168r4.fb0
    /* renamed from: s */
    public final ed0 mo11588s(String str) {
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        Parcel m8073o0 = m8073o0(3, m8074j0);
        ed0 m12163f7 = dd0.m12163f7(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m12163f7;
    }

    @Override // p168r4.fb0
    /* renamed from: u */
    public final ib0 mo11587u(String str) {
        ib0 gb0Var;
        Parcel m8074j0 = m8074j0();
        m8074j0.writeString(str);
        Parcel m8073o0 = m8073o0(1, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            gb0Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            if (queryLocalInterface instanceof ib0) {
                gb0Var = (ib0) queryLocalInterface;
            } else {
                gb0Var = new gb0(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return gb0Var;
    }
}
