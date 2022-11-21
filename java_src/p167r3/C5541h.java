package p167r3;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import p185t3.C6756m;
import p194u3.AbstractC6900f;
import p204v4.C7063b;
import p220x3.AbstractC7264g;
import p220x3.C7254d;
/* renamed from: r3.h */
/* loaded from: classes.dex */
public final class C5541h extends AbstractC7264g<InterfaceC5555v> {

    /* renamed from: T */
    public final GoogleSignInOptions f20309T;

    @Override // p220x3.AbstractC7246c
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: k */
    public final int mo910k() {
        return C6756m.f35427a;
    }

    /* renamed from: k0 */
    public final GoogleSignInOptions m13088k0() {
        return this.f20309T;
    }

    public C5541h(Context context, Looper looper, C7254d c7254d, GoogleSignInOptions googleSignInOptions, AbstractC6900f.InterfaceC6901a interfaceC6901a, AbstractC6900f.InterfaceC6902b interfaceC6902b) {
        super(context, looper, 91, c7254d, interfaceC6901a, interfaceC6902b);
        GoogleSignInOptions.C1407a c1407a;
        if (googleSignInOptions != null) {
            c1407a = new GoogleSignInOptions.C1407a(googleSignInOptions);
        } else {
            c1407a = new GoogleSignInOptions.C1407a();
        }
        c1407a.m23053g(C7063b.m2577a());
        if (!c7254d.m1973d().isEmpty()) {
            for (Scope scope : c7254d.m1973d()) {
                c1407a.m23054f(scope, new Scope[0]);
            }
        }
        this.f20309T = c1407a.m23059a();
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: r */
    public final /* synthetic */ IInterface mo909r(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        if (queryLocalInterface instanceof InterfaceC5555v) {
            return (InterfaceC5555v) queryLocalInterface;
        }
        return new C5558y(iBinder);
    }
}
