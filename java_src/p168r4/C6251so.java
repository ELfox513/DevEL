package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p026c4.C1041b;
import p184t2.C6730y;
import p185t3.C6738d;
import p220x3.AbstractC7246c;
import p235z2.AbstractC7584c;
/* renamed from: r4.so */
/* loaded from: classes2.dex */
public final class C6251so extends AbstractC7584c<C6362vo> {
    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    /* renamed from: i0 */
    public final C6362vo m7094i0() {
        return (C6362vo) super.m2025B();
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: u */
    public final C6738d[] mo908u() {
        return C6730y.f35382b;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        if (queryLocalInterface instanceof C6362vo) {
            return (C6362vo) queryLocalInterface;
        }
        return new C6362vo(iBinder);
    }

    public C6251so(Context context, Looper looper, AbstractC7246c.InterfaceC7247a interfaceC7247a, AbstractC7246c.InterfaceC7248b interfaceC7248b) {
        super(ch0.m12467a(context), looper, 123, interfaceC7247a, interfaceC7248b, null);
    }

    /* renamed from: h0 */
    public final boolean m7095h0() {
        C6738d[] m1989l = m1989l();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31059l1)).booleanValue() && C1041b.m24777c(m1989l, C6730y.f35381a)) {
            return true;
        }
        return false;
    }
}
