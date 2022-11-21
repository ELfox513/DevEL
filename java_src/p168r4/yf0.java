package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p220x3.AbstractC7246c;
import p235z2.AbstractC7584c;
/* renamed from: r4.yf0 */
/* loaded from: classes2.dex */
public final class yf0 extends AbstractC7584c<gg0> {
    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.ads.service.START";
    }

    /* renamed from: h0 */
    public final gg0 m4738h0() {
        return (gg0) super.m2025B();
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        if (queryLocalInterface instanceof gg0) {
            return (gg0) queryLocalInterface;
        }
        return new dg0(iBinder);
    }

    public yf0(Context context, Looper looper, AbstractC7246c.InterfaceC7247a interfaceC7247a, AbstractC7246c.InterfaceC7248b interfaceC7248b) {
        super(ch0.m12467a(context), looper, 8, interfaceC7247a, interfaceC7248b, null);
    }
}
