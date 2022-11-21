package p070g5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
import p018b5.C0794o0;
import p018b5.C0828q0;
/* renamed from: g5.d3 */
/* loaded from: classes2.dex */
public final class C3633d3 extends C0794o0 implements InterfaceC3669g3 {
    public C3633d3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: C5 */
    public final void mo17958C5(C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, c3784pa);
        m25562t0(18, m25564j0);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: F4 */
    public final void mo17956F4(C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, c3784pa);
        m25562t0(4, m25564j0);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: H1 */
    public final List<C3652ea> mo17955H1(String str, String str2, boolean z, C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        C0828q0.m25477c(m25564j0, z);
        C0828q0.m25476d(m25564j0, c3784pa);
        Parcel m25563o0 = m25563o0(14, m25564j0);
        ArrayList createTypedArrayList = m25563o0.createTypedArrayList(C3652ea.CREATOR);
        m25563o0.recycle();
        return createTypedArrayList;
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: L3 */
    public final void mo17953L3(long j, String str, String str2, String str3) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeLong(j);
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        m25564j0.writeString(str3);
        m25562t0(10, m25564j0);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: M3 */
    public final void mo17952M3(C3833u c3833u, C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, c3833u);
        C0828q0.m25476d(m25564j0, c3784pa);
        m25562t0(1, m25564j0);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: N6 */
    public final void mo17951N6(C3652ea c3652ea, C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, c3652ea);
        C0828q0.m25476d(m25564j0, c3784pa);
        m25562t0(2, m25564j0);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: V1 */
    public final byte[] mo17949V1(C3833u c3833u, String str) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, c3833u);
        m25564j0.writeString(str);
        Parcel m25563o0 = m25563o0(9, m25564j0);
        byte[] createByteArray = m25563o0.createByteArray();
        m25563o0.recycle();
        return createByteArray;
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: Y5 */
    public final List<C3617c> mo17948Y5(String str, String str2, C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        C0828q0.m25476d(m25564j0, c3784pa);
        Parcel m25563o0 = m25563o0(16, m25564j0);
        ArrayList createTypedArrayList = m25563o0.createTypedArrayList(C3617c.CREATOR);
        m25563o0.recycle();
        return createTypedArrayList;
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: a5 */
    public final void mo17947a5(C3617c c3617c, C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, c3617c);
        C0828q0.m25476d(m25564j0, c3784pa);
        m25562t0(12, m25564j0);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: e4 */
    public final void mo17943e4(C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, c3784pa);
        m25562t0(6, m25564j0);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: g6 */
    public final String mo17940g6(C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, c3784pa);
        Parcel m25563o0 = m25563o0(11, m25564j0);
        String readString = m25563o0.readString();
        m25563o0.recycle();
        return readString;
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: j5 */
    public final void mo17939j5(Bundle bundle, C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, bundle);
        C0828q0.m25476d(m25564j0, c3784pa);
        m25562t0(19, m25564j0);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: p2 */
    public final List<C3617c> mo17937p2(String str, String str2, String str3) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(null);
        m25564j0.writeString(str2);
        m25564j0.writeString(str3);
        Parcel m25563o0 = m25563o0(17, m25564j0);
        ArrayList createTypedArrayList = m25563o0.createTypedArrayList(C3617c.CREATOR);
        m25563o0.recycle();
        return createTypedArrayList;
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: q3 */
    public final void mo17935q3(C3784pa c3784pa) {
        Parcel m25564j0 = m25564j0();
        C0828q0.m25476d(m25564j0, c3784pa);
        m25562t0(20, m25564j0);
    }

    @Override // p070g5.InterfaceC3669g3
    /* renamed from: v1 */
    public final List<C3652ea> mo17933v1(String str, String str2, String str3, boolean z) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(null);
        m25564j0.writeString(str2);
        m25564j0.writeString(str3);
        C0828q0.m25477c(m25564j0, z);
        Parcel m25563o0 = m25563o0(15, m25564j0);
        ArrayList createTypedArrayList = m25563o0.createTypedArrayList(C3652ea.CREATOR);
        m25563o0.recycle();
        return createTypedArrayList;
    }
}
