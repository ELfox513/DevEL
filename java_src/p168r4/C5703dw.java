package p168r4;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p060f4.InterfaceC3512a;
/* renamed from: r4.dw */
/* loaded from: classes2.dex */
public final class C5703dw extends C6155q2 implements InterfaceC5778fw {
    public C5703dw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: A6 */
    public final vk0 mo11352A6(InterfaceC3512a interfaceC3512a, fb0 fb0Var, int i) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(14, m8074j0);
        vk0 m6511f7 = uk0.m6511f7(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m6511f7;
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: I3 */
    public final InterfaceC6369vv mo11350I3(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, String str, int i) {
        InterfaceC6369vv c6295tv;
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6478yt);
        m8074j0.writeString(str);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(10, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            c6295tv = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof InterfaceC6369vv) {
                c6295tv = (InterfaceC6369vv) queryLocalInterface;
            } else {
                c6295tv = new C6295tv(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return c6295tv;
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: K4 */
    public final InterfaceC6369vv mo11349K4(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, String str, fb0 fb0Var, int i) {
        InterfaceC6369vv c6295tv;
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6478yt);
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(2, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            c6295tv = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof InterfaceC6369vv) {
                c6295tv = (InterfaceC6369vv) queryLocalInterface;
            } else {
                c6295tv = new C6295tv(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return c6295tv;
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: O3 */
    public final ke0 mo11348O3(InterfaceC3512a interfaceC3512a, fb0 fb0Var, int i) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(15, m8074j0);
        ke0 m10300f7 = je0.m10300f7(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m10300f7;
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: P3 */
    public final InterfaceC6369vv mo11347P3(InterfaceC3512a interfaceC3512a, C6478yt c6478yt, String str, fb0 fb0Var, int i) {
        InterfaceC6369vv c6295tv;
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        C6229s2.m7248d(m8074j0, c6478yt);
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(1, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            c6295tv = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof InterfaceC6369vv) {
                c6295tv = (InterfaceC6369vv) queryLocalInterface;
            } else {
                c6295tv = new C6295tv(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return c6295tv;
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: U */
    public final we0 mo11346U(InterfaceC3512a interfaceC3512a) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        Parcel m8073o0 = m8073o0(8, m8074j0);
        we0 m6166f7 = ve0.m6166f7(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m6166f7;
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: b4 */
    public final InterfaceC6074nw mo11345b4(InterfaceC3512a interfaceC3512a, int i) {
        InterfaceC6074nw c5999lw;
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(9, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            c5999lw = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof InterfaceC6074nw) {
                c5999lw = (InterfaceC6074nw) queryLocalInterface;
            } else {
                c5999lw = new C5999lw(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return c5999lw;
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: m1 */
    public final InterfaceC6221rv mo11342m1(InterfaceC3512a interfaceC3512a, String str, fb0 fb0Var, int i) {
        InterfaceC6221rv c6147pv;
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(3, m8074j0);
        IBinder readStrongBinder = m8073o0.readStrongBinder();
        if (readStrongBinder == null) {
            c6147pv = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (queryLocalInterface instanceof InterfaceC6221rv) {
                c6147pv = (InterfaceC6221rv) queryLocalInterface;
            } else {
                c6147pv = new C6147pv(readStrongBinder);
            }
        }
        m8073o0.recycle();
        return c6147pv;
    }

    @Override // p168r4.InterfaceC5778fw
    /* renamed from: x5 */
    public final yh0 mo11339x5(InterfaceC3512a interfaceC3512a, String str, fb0 fb0Var, int i) {
        Parcel m8074j0 = m8074j0();
        C6229s2.m7246f(m8074j0, interfaceC3512a);
        m8074j0.writeString(str);
        C6229s2.m7246f(m8074j0, fb0Var);
        m8074j0.writeInt(213806000);
        Parcel m8073o0 = m8073o0(12, m8074j0);
        yh0 m5314f7 = xh0.m5314f7(m8073o0.readStrongBinder());
        m8073o0.recycle();
        return m5314f7;
    }
}
