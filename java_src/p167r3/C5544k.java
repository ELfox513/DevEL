package p167r3;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.common.api.Status;
import p005a4.C0086a;
import p158q3.C5414c;
import p194u3.AbstractC6900f;
import p194u3.AbstractC6904h;
import p194u3.C6906i;
import p203v3.C7008f;
/* renamed from: r3.k */
/* loaded from: classes.dex */
public final class C5544k {

    /* renamed from: a */
    public static C0086a f20312a = new C0086a("GoogleSignInCommon", new String[0]);

    /* renamed from: a */
    public static C5414c m13087a(Intent intent) {
        if (intent == null) {
            return new C5414c(null, Status.f7711s);
        }
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        if (googleSignInAccount == null) {
            if (status == null) {
                status = Status.f7711s;
            }
            return new C5414c(null, status);
        }
        return new C5414c(googleSignInAccount, Status.f7709q);
    }

    /* renamed from: b */
    public static Intent m13086b(Context context, GoogleSignInOptions googleSignInOptions) {
        f20312a.m27686a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0098  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p194u3.AbstractC6903g<p158q3.C5414c> m13085c(p194u3.AbstractC6900f r5, android.content.Context r6, com.google.android.gms.auth.api.signin.GoogleSignInOptions r7, boolean r8) {
        /*
            a4.a r0 = p167r3.C5544k.f20312a
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "silentSignIn()"
            r0.m27686a(r3, r2)
            a4.a r0 = p167r3.C5544k.f20312a
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "getEligibleSavedSignInResult()"
            r0.m27686a(r3, r2)
            p220x3.C7297q.m1883j(r7)
            r3.s r0 = p167r3.C5552s.m13076c(r6)
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r0 = r0.m13073f()
            r2 = 0
            if (r0 == 0) goto L87
            android.accounts.Account r3 = r0.m23060u0()
            android.accounts.Account r4 = r7.m23060u0()
            if (r3 != 0) goto L31
            if (r4 != 0) goto L2f
            r3 = 1
            goto L35
        L2f:
            r3 = 0
            goto L35
        L31:
            boolean r3 = r3.equals(r4)
        L35:
            if (r3 == 0) goto L87
            boolean r3 = r7.m23074d1()
            if (r3 != 0) goto L87
            boolean r3 = r7.m23075c1()
            if (r3 == 0) goto L57
            boolean r3 = r0.m23075c1()
            if (r3 == 0) goto L87
            java.lang.String r3 = r7.m23077a1()
            java.lang.String r4 = r0.m23077a1()
            boolean r3 = p220x3.C7289o.m1908a(r3, r4)
            if (r3 == 0) goto L87
        L57:
            java.util.HashSet r3 = new java.util.HashSet
            java.util.ArrayList r0 = r0.m23078Z0()
            r3.<init>(r0)
            java.util.HashSet r0 = new java.util.HashSet
            java.util.ArrayList r4 = r7.m23078Z0()
            r0.<init>(r4)
            boolean r0 = r3.containsAll(r0)
            if (r0 == 0) goto L87
            r3.s r0 = p167r3.C5552s.m13076c(r6)
            com.google.android.gms.auth.api.signin.GoogleSignInAccount r0 = r0.m13074e()
            if (r0 == 0) goto L87
            boolean r3 = r0.m23087f1()
            if (r3 != 0) goto L87
            q3.c r3 = new q3.c
            com.google.android.gms.common.api.Status r4 = com.google.android.gms.common.api.Status.f7709q
            r3.<init>(r0, r4)
            goto L88
        L87:
            r3 = r2
        L88:
            if (r3 == 0) goto L98
            a4.a r6 = p167r3.C5544k.f20312a
            java.lang.Object[] r7 = new java.lang.Object[r1]
            java.lang.String r8 = "Eligible saved sign in result found"
            r6.m27686a(r8, r7)
            u3.g r5 = p194u3.C6906i.m3036b(r3, r5)
            return r5
        L98:
            if (r8 == 0) goto Laa
            q3.c r6 = new q3.c
            com.google.android.gms.common.api.Status r7 = new com.google.android.gms.common.api.Status
            r8 = 4
            r7.<init>(r8)
            r6.<init>(r2, r7)
            u3.g r5 = p194u3.C6906i.m3036b(r6, r5)
            return r5
        Laa:
            a4.a r8 = p167r3.C5544k.f20312a
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r1 = "trySilentSignIn()"
            r8.m27686a(r1, r0)
            r3.j r8 = new r3.j
            r8.<init>(r5, r6, r7)
            com.google.android.gms.common.api.internal.a r5 = r5.mo2672a(r8)
            v3.l r6 = new v3.l
            r6.<init>(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p167r3.C5544k.m13085c(u3.f, android.content.Context, com.google.android.gms.auth.api.signin.GoogleSignInOptions, boolean):u3.g");
    }

    /* renamed from: d */
    public static AbstractC6904h<Status> m13084d(AbstractC6900f abstractC6900f, Context context, boolean z) {
        f20312a.m27686a("Signing out", new Object[0]);
        m13083e(context);
        if (z) {
            return C6906i.m3035c(Status.f7709q, abstractC6900f);
        }
        return abstractC6900f.mo2671b(new C5545l(abstractC6900f));
    }

    /* renamed from: f */
    public static Intent m13082f(Context context, GoogleSignInOptions googleSignInOptions) {
        f20312a.m27686a("getFallbackSignInIntent()", new Object[0]);
        Intent m13086b = m13086b(context, googleSignInOptions);
        m13086b.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return m13086b;
    }

    /* renamed from: g */
    public static AbstractC6904h<Status> m13081g(AbstractC6900f abstractC6900f, Context context, boolean z) {
        f20312a.m27686a("Revoking access", new Object[0]);
        String m13097e = C5536c.m13100b(context).m13097e();
        m13083e(context);
        if (z) {
            return RunnableC5540g.m13089a(m13097e);
        }
        return abstractC6900f.mo2671b(new C5547n(abstractC6900f));
    }

    /* renamed from: h */
    public static Intent m13080h(Context context, GoogleSignInOptions googleSignInOptions) {
        f20312a.m27686a("getNoImplementationSignInIntent()", new Object[0]);
        Intent m13086b = m13086b(context, googleSignInOptions);
        m13086b.setAction("com.google.android.gms.auth.NO_IMPL");
        return m13086b;
    }

    /* renamed from: e */
    public static void m13083e(Context context) {
        C5552s.m13076c(context).m13078a();
        for (AbstractC6900f abstractC6900f : AbstractC6900f.m3040c()) {
            abstractC6900f.m3038f();
        }
        C7008f.m2707a();
    }
}
