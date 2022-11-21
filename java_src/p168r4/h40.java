package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
import p060f4.InterfaceC3512a;
/* renamed from: r4.h40 */
/* loaded from: classes2.dex */
public final class h40 extends C6155q2 implements j40 {
    public h40(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // p168r4.j40
    /* renamed from: E */
    public final InterfaceC3512a mo8751E() {
        Parcel m8073o0 = m8073o0(19, m8074j0());
        InterfaceC3512a m18742o0 = InterfaceC3512a.AbstractBinderC3513a.m18742o0(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m18742o0;
    }

    @Override // p168r4.j40
    /* renamed from: c */
    public final String mo8743c() {
        Parcel m8073o0 = m8073o0(2, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.j40
    /* renamed from: d */
    public final List mo8742d() {
        Parcel m8073o0 = m8073o0(3, m8074j0());
        ArrayList m7245g = C6229s2.m7245g(m8073o0);
        m8073o0.recycle();
        return m7245g;
    }

    @Override // p168r4.j40
    /* renamed from: f */
    public final p20 mo8741f() {
        p20 n20Var;
        Parcel m8073o0 = m8073o0(5, m8074j0());
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            n20Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            if (queryLocalInterface instanceof p20) {
                n20Var = (p20) queryLocalInterface;
            } else {
                n20Var = new n20(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return n20Var;
    }

    @Override // p168r4.j40
    /* renamed from: g */
    public final String mo8740g() {
        Parcel m8073o0 = m8073o0(4, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.j40
    /* renamed from: h */
    public final String mo8739h() {
        Parcel m8073o0 = m8073o0(7, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.j40
    /* renamed from: i */
    public final double mo8738i() {
        Parcel m8073o0 = m8073o0(8, m8074j0());
        double readDouble = m8073o0.readDouble();
        m8073o0.recycle();
        return readDouble;
    }

    @Override // p168r4.j40
    /* renamed from: j */
    public final String mo8737j() {
        Parcel m8073o0 = m8073o0(6, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.j40
    /* renamed from: k */
    public final String mo8736k() {
        Parcel m8073o0 = m8073o0(9, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.j40
    /* renamed from: l */
    public final String mo8734l() {
        Parcel m8073o0 = m8073o0(10, m8074j0());
        String readString = m8073o0.readString();
        m8073o0.recycle();
        return readString;
    }

    @Override // p168r4.j40
    /* renamed from: m */
    public final h20 mo8733m() {
        h20 f20Var;
        Parcel m8073o0 = m8073o0(14, m8074j0());
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            f20Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            if (queryLocalInterface instanceof h20) {
                f20Var = (h20) queryLocalInterface;
            } else {
                f20Var = new f20(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return f20Var;
    }

    @Override // p168r4.j40
    /* renamed from: p */
    public final InterfaceC6000lx mo8731p() {
        Parcel m8073o0 = m8073o0(11, m8074j0());
        InterfaceC6000lx m9853f7 = AbstractBinderC5963kx.m9853f7(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m9853f7;
    }

    @Override // p168r4.j40
    /* renamed from: v */
    public final List mo8725v() {
        Parcel m8073o0 = m8073o0(23, m8074j0());
        ArrayList m7245g = C6229s2.m7245g(m8073o0);
        m8073o0.recycle();
        return m7245g;
    }
}
