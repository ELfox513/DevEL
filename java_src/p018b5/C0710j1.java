package p018b5;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* renamed from: b5.j1 */
/* loaded from: classes2.dex */
public final class C0710j1 extends C0794o0 implements InterfaceC0744l1 {
    public C0710j1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // p018b5.InterfaceC0744l1
    /* renamed from: e */
    public final int mo25561e() {
        Parcel m25563o0 = m25563o0(2, m25564j0());
        int readInt = m25563o0.readInt();
        m25563o0.recycle();
        return readInt;
    }

    @Override // p018b5.InterfaceC0744l1
    /* renamed from: e1 */
    public final void mo25560e1(String str, String str2, Bundle bundle, long j) {
        Parcel m25564j0 = m25564j0();
        m25564j0.writeString(str);
        m25564j0.writeString(str2);
        C0828q0.m25476d(m25564j0, bundle);
        m25564j0.writeLong(j);
        m25562t0(1, m25564j0);
    }
}
