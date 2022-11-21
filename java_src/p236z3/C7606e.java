package p236z3;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p185t3.C6738d;
import p203v3.InterfaceC7005e;
import p203v3.InterfaceC7023k;
import p213w4.C7181d;
import p220x3.AbstractC7264g;
import p220x3.C7254d;
import p220x3.C7318x;
/* renamed from: z3.e */
/* loaded from: classes.dex */
public final class C7606e extends AbstractC7264g<C7602a> {

    /* renamed from: T */
    public final C7318x f37627T;

    public C7606e(Context context, Looper looper, C7254d c7254d, C7318x c7318x, InterfaceC7005e interfaceC7005e, InterfaceC7023k interfaceC7023k) {
        super(context, looper, 270, c7254d, interfaceC7005e, interfaceC7023k);
        this.f37627T = c7318x;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: G */
    public final boolean mo911G() {
        return true;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: k */
    public final int mo910k() {
        return 203390000;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return queryLocalInterface instanceof C7602a ? (C7602a) queryLocalInterface : new C7602a(iBinder);
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: u */
    public final C6738d[] mo908u() {
        return C7181d.f36466b;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: y */
    public final Bundle mo907y() {
        return this.f37627T.m1843b();
    }
}
