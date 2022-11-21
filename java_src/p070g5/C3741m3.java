package p070g5;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p185t3.C6756m;
import p220x3.AbstractC7246c;
/* renamed from: g5.m3 */
/* loaded from: classes2.dex */
public final class C3741m3 extends AbstractC7246c<InterfaceC3669g3> {
    public C3741m3(Context context, Looper looper, AbstractC7246c.InterfaceC7247a interfaceC7247a, AbstractC7246c.InterfaceC7248b interfaceC7248b) {
        super(context, looper, 93, interfaceC7247a, interfaceC7248b, null);
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.measurement.START";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: k */
    public final int mo910k() {
        return C6756m.f35427a;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ InterfaceC3669g3 mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (queryLocalInterface instanceof InterfaceC3669g3) {
            return (InterfaceC3669g3) queryLocalInterface;
        }
        return new C3633d3(iBinder);
    }
}
