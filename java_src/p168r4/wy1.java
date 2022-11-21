package p168r4;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import p016b3.C0479g0;
import p016b3.C0543w1;
/* renamed from: r4.wy1 */
/* loaded from: classes2.dex */
public final class wy1 implements t73<ParcelFileDescriptor> {

    /* renamed from: a */
    public final /* synthetic */ kg0 f33360a;

    public wy1(az1 az1Var, kg0 kg0Var) {
        this.f33360a = kg0Var;
    }

    @Override // p168r4.t73
    /* renamed from: a */
    public final void mo4627a(Throwable th) {
        try {
            this.f33360a.mo10040M4(C0479g0.m26372X0(th));
        } catch (RemoteException e) {
            C0543w1.m26250l("Service can't call client", e);
        }
    }

    @Override // p168r4.t73
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo4626b(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            this.f33360a.mo10041E4(parcelFileDescriptor);
        } catch (RemoteException e) {
            C0543w1.m26250l("Service can't call client", e);
        }
    }
}
