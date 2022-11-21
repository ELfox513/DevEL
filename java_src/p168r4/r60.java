package p168r4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p220x3.AbstractC7246c;
import p235z2.AbstractC7584c;
/* renamed from: r4.r60 */
/* loaded from: classes2.dex */
public final class r60 extends AbstractC7584c<z60> {
    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.ads.service.HTTP";
    }

    /* renamed from: h0 */
    public final z60 m7607h0() {
        return (z60) super.m2025B();
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        if (queryLocalInterface instanceof z60) {
            return (z60) queryLocalInterface;
        }
        return new z60(iBinder);
    }

    public r60(Context context, Looper looper, AbstractC7246c.InterfaceC7247a interfaceC7247a, AbstractC7246c.InterfaceC7248b interfaceC7248b) {
        super(ch0.m12467a(context), looper, 166, interfaceC7247a, interfaceC7248b, null);
    }
}
