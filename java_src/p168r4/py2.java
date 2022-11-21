package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p220x3.AbstractC7246c;
import p235z2.AbstractC7584c;
/* renamed from: r4.py2 */
/* loaded from: classes2.dex */
public final class py2 extends AbstractC7584c<uy2> {

    /* renamed from: Q */
    public final int f29847Q;

    public py2(Context context, Looper looper, AbstractC7246c.InterfaceC7247a interfaceC7247a, AbstractC7246c.InterfaceC7248b interfaceC7248b, int i) {
        super(context, looper, 116, interfaceC7247a, interfaceC7248b, null);
        this.f29847Q = i;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.gass.START";
    }

    /* renamed from: h0 */
    public final uy2 m8101h0() {
        return (uy2) super.m2025B();
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: k */
    public final int mo910k() {
        return this.f29847Q;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        if (queryLocalInterface instanceof uy2) {
            return (uy2) queryLocalInterface;
        }
        return new uy2(iBinder);
    }
}
