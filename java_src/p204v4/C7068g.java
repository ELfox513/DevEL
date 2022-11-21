package p204v4;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import p131n3.C4743a;
import p194u3.AbstractC6900f;
import p220x3.AbstractC7264g;
import p220x3.C7254d;
/* renamed from: v4.g */
/* loaded from: classes2.dex */
public final class C7068g extends AbstractC7264g<InterfaceC7070i> {

    /* renamed from: T */
    public final C4743a.C4744a f36064T;

    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: k */
    public final int mo910k() {
        return 12800000;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: y */
    public final Bundle mo907y() {
        return this.f36064T.m15485a();
    }

    public C7068g(Context context, Looper looper, C7254d c7254d, C4743a.C4744a c4744a, AbstractC6900f.InterfaceC6901a interfaceC6901a, AbstractC6900f.InterfaceC6902b interfaceC6902b) {
        super(context, looper, 68, c7254d, interfaceC6901a, interfaceC6902b);
        this.f36064T = new C4743a.C4744a.C4745a(c4744a == null ? C4743a.C4744a.f18995k : c4744a).m15481a(C7063b.m2577a()).m15480b();
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        if (queryLocalInterface instanceof InterfaceC7070i) {
            return (InterfaceC7070i) queryLocalInterface;
        }
        return new C7069h(iBinder);
    }
}
