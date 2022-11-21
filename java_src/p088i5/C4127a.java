package p088i5;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import p079h5.InterfaceC4053f;
import p167r3.C5536c;
import p185t3.C6734b;
import p185t3.C6756m;
import p194u3.AbstractC6900f;
import p220x3.AbstractC7246c;
import p220x3.AbstractC7264g;
import p220x3.C7254d;
import p220x3.C7287n0;
import p220x3.C7297q;
/* renamed from: i5.a */
/* loaded from: classes2.dex */
public class C4127a extends AbstractC7264g<C4133g> implements InterfaceC4053f {

    /* renamed from: X */
    public static final /* synthetic */ int f17736X = 0;

    /* renamed from: T */
    public final boolean f17737T;

    /* renamed from: U */
    public final C7254d f17738U;

    /* renamed from: V */
    public final Bundle f17739V;

    /* renamed from: W */
    public final Integer f17740W;

    @Override // p220x3.AbstractC7246c
    @RecentlyNonNull
    /* renamed from: C */
    public final String mo913C() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // p220x3.AbstractC7246c
    @RecentlyNonNull
    /* renamed from: D */
    public final String mo912D() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // p079h5.InterfaceC4053f
    /* renamed from: j */
    public final void mo17324j() {
        mo1991h(new AbstractC7246c.C7250d());
    }

    @Override // p220x3.AbstractC7246c
    /* renamed from: k */
    public final int mo910k() {
        return C6756m.f35427a;
    }

    @Override // p220x3.AbstractC7246c, p194u3.C6883a.InterfaceC6892f
    /* renamed from: n */
    public final boolean mo1987n() {
        return this.f17737T;
    }

    @Override // p220x3.AbstractC7246c
    @RecentlyNonNull
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ IInterface mo909r(@RecentlyNonNull IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof C4133g ? (C4133g) queryLocalInterface : new C4133g(iBinder);
    }

    public C4127a(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, boolean z, @RecentlyNonNull C7254d c7254d, @RecentlyNonNull Bundle bundle, @RecentlyNonNull AbstractC6900f.InterfaceC6901a interfaceC6901a, @RecentlyNonNull AbstractC6900f.InterfaceC6902b interfaceC6902b) {
        super(context, looper, 44, c7254d, interfaceC6901a, interfaceC6902b);
        this.f17737T = true;
        this.f17738U = c7254d;
        this.f17739V = bundle;
        this.f17740W = c7254d.m1965l();
    }

    @Override // p079h5.InterfaceC4053f
    /* renamed from: g */
    public final void mo17325g(InterfaceC4132f interfaceC4132f) {
        GoogleSignInAccount googleSignInAccount;
        C7297q.m1882k(interfaceC4132f, "Expecting a valid ISignInCallbacks");
        try {
            Account m1974c = this.f17738U.m1974c();
            if ("<<default account>>".equals(m1974c.name)) {
                googleSignInAccount = C5536c.m13100b(m1981w()).m13099c();
            } else {
                googleSignInAccount = null;
            }
            ((C4133g) m2025B()).m17322L0(new C4136j(1, new C7287n0(m1974c, ((Integer) C7297q.m1883j(this.f17740W)).intValue(), googleSignInAccount)), interfaceC4132f);
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                interfaceC4132f.mo2596b5(new C4138l(1, new C6734b(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // p220x3.AbstractC7246c
    @RecentlyNonNull
    /* renamed from: y */
    public final Bundle mo907y() {
        if (!m1981w().getPackageName().equals(this.f17738U.m1970g())) {
            this.f17739V.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f17738U.m1970g());
        }
        return this.f17739V;
    }

    @RecentlyNonNull
    /* renamed from: k0 */
    public static Bundle m17323k0(@RecentlyNonNull C7254d c7254d) {
        c7254d.m1966k();
        Integer m1965l = c7254d.m1965l();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", c7254d.m1976a());
        if (m1965l != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", m1965l.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return bundle;
    }
}
