package p186t4;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p122m3.C4634h;
import p185t3.C6738d;
import p203v3.InterfaceC7005e;
import p203v3.InterfaceC7023k;
import p220x3.AbstractC7264g;
import p220x3.C7254d;
/* renamed from: t4.d */
/* loaded from: classes2.dex */
public final class C6774d extends AbstractC7264g<C6777g> {
    public C6774d(Context context, Looper looper, C7254d c7254d, InterfaceC7005e interfaceC7005e, InterfaceC7023k interfaceC7023k) {
        super(context, looper, 300, c7254d, interfaceC7005e, interfaceC7023k);
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.appset.internal.IAppSetService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.appset.service.START";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: G */
    public final boolean mo911G() {
        return true;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: Q */
    public final boolean mo2013Q() {
        return true;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: k */
    public final int mo910k() {
        return 212800000;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: u */
    public final C6738d[] mo908u() {
        return C4634h.f18676b;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.appset.internal.IAppSetService");
        if (queryLocalInterface instanceof C6777g) {
            return (C6777g) queryLocalInterface;
        }
        return new C6777g(iBinder);
    }
}
