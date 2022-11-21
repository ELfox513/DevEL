package p195u4;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import p131n3.C4746b;
import p131n3.C4747c;
import p185t3.C6756m;
import p194u3.AbstractC6900f;
import p220x3.AbstractC7264g;
import p220x3.C7254d;
/* renamed from: u4.b */
/* loaded from: classes2.dex */
public final class C6919b extends AbstractC7264g<InterfaceC6920c> {

    /* renamed from: T */
    public final Bundle f35773T;

    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: k */
    public final int mo910k() {
        return C6756m.f35427a;
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: y */
    public final Bundle mo907y() {
        return this.f35773T;
    }

    public C6919b(Context context, Looper looper, C7254d c7254d, C4747c c4747c, AbstractC6900f.InterfaceC6901a interfaceC6901a, AbstractC6900f.InterfaceC6902b interfaceC6902b) {
        super(context, looper, 16, c7254d, interfaceC6901a, interfaceC6902b);
        if (c4747c == null) {
            this.f35773T = new Bundle();
            return;
        }
        throw new NoSuchMethodError();
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        if (queryLocalInterface instanceof InterfaceC6920c) {
            return (InterfaceC6920c) queryLocalInterface;
        }
        return new C6921d(iBinder);
    }

    @Override // p220x3.AbstractC7246c, p194u3.C6883a.InterfaceC6892f
    /* renamed from: n */
    public final boolean mo1987n() {
        C7254d m1944h0 = m1944h0();
        if (!TextUtils.isEmpty(m1944h0.m1975b()) && !m1944h0.m1972e(C4746b.f19004c).isEmpty()) {
            return true;
        }
        return false;
    }
}
