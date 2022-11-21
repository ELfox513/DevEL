package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import androidx.fragment.app.ActivityC0256d;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import p101k0.AbstractC4393a;
import p110l0.C4542b;
import p167r3.C5539f;
import p167r3.C5552s;
import p194u3.AbstractC6900f;
import p204v4.C7062a;
@KeepName
/* loaded from: classes.dex */
public class SignInHubActivity extends ActivityC0256d {

    /* renamed from: H */
    public static boolean f7698H = false;

    /* renamed from: C */
    public boolean f7699C = false;

    /* renamed from: D */
    public SignInConfiguration f7700D;

    /* renamed from: E */
    public boolean f7701E;

    /* renamed from: F */
    public int f7702F;

    /* renamed from: G */
    public Intent f7703G;

    /* renamed from: com.google.android.gms.auth.api.signin.internal.SignInHubActivity$a */
    /* loaded from: classes.dex */
    public class C1409a implements AbstractC4393a.InterfaceC4394a<Void> {
        public C1409a() {
        }

        @Override // p101k0.AbstractC4393a.InterfaceC4394a
        /* renamed from: c */
        public final void mo16709c(C4542b<Void> c4542b) {
        }

        @Override // p101k0.AbstractC4393a.InterfaceC4394a
        /* renamed from: a */
        public final C4542b<Void> mo16711a(int i, Bundle bundle) {
            return new C5539f(SignInHubActivity.this, AbstractC6900f.m3040c());
        }

        @Override // p101k0.AbstractC4393a.InterfaceC4394a
        /* renamed from: b */
        public final /* synthetic */ void mo16710b(C4542b<Void> c4542b, Void r3) {
            SignInHubActivity signInHubActivity = SignInHubActivity.this;
            signInHubActivity.setResult(signInHubActivity.f7702F, SignInHubActivity.this.f7703G);
            SignInHubActivity.this.finish();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // androidx.fragment.app.ActivityC0256d, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.f7699C) {
            return;
        }
        setResult(0);
        if (i == 40962) {
            if (intent != null) {
                SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra("signInAccount");
                if (signInAccount != null && signInAccount.m23051q0() != null) {
                    GoogleSignInAccount m23051q0 = signInAccount.m23051q0();
                    C5552s.m13076c(this).m13077b(this.f7700D.m23046X0(), (GoogleSignInAccount) C7062a.m2578a(m23051q0));
                    intent.removeExtra("signInAccount");
                    intent.putExtra("googleSignInAccount", m23051q0);
                    this.f7701E = true;
                    this.f7702F = i2;
                    this.f7703G = intent;
                    m23045A();
                    return;
                } else if (intent.hasExtra("errorCode")) {
                    int intExtra = intent.getIntExtra("errorCode", 8);
                    if (intExtra == 13) {
                        intExtra = 12501;
                    }
                    m23043y(intExtra);
                    return;
                }
            }
            m23043y(8);
        }
    }

    /* renamed from: y */
    public final void m23043y(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
        f7698H = false;
    }

    /* renamed from: A */
    public final void m23045A() {
        m27089n().mo16707c(0, null, new C1409a());
        f7698H = false;
    }

    @Override // androidx.fragment.app.ActivityC0256d, androidx.activity.ComponentActivity, p163r.ActivityC5468j, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        Intent intent = getIntent();
        String str2 = (String) C7062a.m2578a(intent.getAction());
        if ("com.google.android.gms.auth.NO_IMPL".equals(str2)) {
            m23043y(12500);
        } else if (!str2.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN") && !str2.equals("com.google.android.gms.auth.APPAUTH_SIGN_IN")) {
            String valueOf = String.valueOf(intent.getAction());
            if (valueOf.length() != 0) {
                str = "Unknown action: ".concat(valueOf);
            } else {
                str = new String("Unknown action: ");
            }
            Log.e("AuthSignInClient", str);
            finish();
        } else {
            SignInConfiguration signInConfiguration = (SignInConfiguration) ((Bundle) C7062a.m2578a(intent.getBundleExtra("config"))).getParcelable("config");
            if (signInConfiguration == null) {
                Log.e("AuthSignInClient", "Activity started with invalid configuration.");
                setResult(0);
                finish();
                return;
            }
            this.f7700D = signInConfiguration;
            if (bundle == null) {
                if (f7698H) {
                    setResult(0);
                    m23043y(12502);
                    return;
                }
                f7698H = true;
                Intent intent2 = new Intent(str2);
                if (str2.equals("com.google.android.gms.auth.GOOGLE_SIGN_IN")) {
                    intent2.setPackage("com.google.android.gms");
                } else {
                    intent2.setPackage(getPackageName());
                }
                intent2.putExtra("config", this.f7700D);
                try {
                    startActivityForResult(intent2, 40962);
                    return;
                } catch (ActivityNotFoundException unused) {
                    this.f7699C = true;
                    Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
                    m23043y(17);
                    return;
                }
            }
            boolean z = bundle.getBoolean("signingInGoogleApiClients");
            this.f7701E = z;
            if (z) {
                this.f7702F = bundle.getInt("signInResultCode");
                this.f7703G = (Intent) C7062a.m2578a((Intent) bundle.getParcelable("signInResultData"));
                m23045A();
            }
        }
    }

    @Override // androidx.fragment.app.ActivityC0256d, androidx.activity.ComponentActivity, p163r.ActivityC5468j, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.f7701E);
        if (this.f7701E) {
            bundle.putInt("signInResultCode", this.f7702F);
            bundle.putParcelable("signInResultData", this.f7703G);
        }
    }
}
