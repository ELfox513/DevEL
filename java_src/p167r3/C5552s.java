package p167r3;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
/* renamed from: r3.s */
/* loaded from: classes.dex */
public final class C5552s {

    /* renamed from: d */
    public static C5552s f20316d;

    /* renamed from: a */
    public C5536c f20317a;

    /* renamed from: b */
    public GoogleSignInAccount f20318b;

    /* renamed from: c */
    public GoogleSignInOptions f20319c;

    /* renamed from: c */
    public static synchronized C5552s m13076c(Context context) {
        C5552s m13075d;
        synchronized (C5552s.class) {
            m13075d = m13075d(context.getApplicationContext());
        }
        return m13075d;
    }

    /* renamed from: a */
    public final synchronized void m13078a() {
        this.f20317a.m13101a();
        this.f20318b = null;
        this.f20319c = null;
    }

    /* renamed from: b */
    public final synchronized void m13077b(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.f20317a.m13096f(googleSignInAccount, googleSignInOptions);
        this.f20318b = googleSignInAccount;
        this.f20319c = googleSignInOptions;
    }

    /* renamed from: e */
    public final synchronized GoogleSignInAccount m13074e() {
        return this.f20318b;
    }

    /* renamed from: f */
    public final synchronized GoogleSignInOptions m13073f() {
        return this.f20319c;
    }

    /* renamed from: d */
    public static synchronized C5552s m13075d(Context context) {
        synchronized (C5552s.class) {
            C5552s c5552s = f20316d;
            if (c5552s != null) {
                return c5552s;
            }
            C5552s c5552s2 = new C5552s(context);
            f20316d = c5552s2;
            return c5552s2;
        }
    }

    public C5552s(Context context) {
        C5536c m13100b = C5536c.m13100b(context);
        this.f20317a = m13100b;
        this.f20318b = m13100b.m13099c();
        this.f20319c = this.f20317a.m13098d();
    }
}
