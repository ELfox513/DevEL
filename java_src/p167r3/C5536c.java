package p167r3;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import p220x3.C7297q;
/* renamed from: r3.c */
/* loaded from: classes.dex */
public class C5536c {

    /* renamed from: c */
    public static final Lock f20300c = new ReentrantLock();

    /* renamed from: d */
    public static C5536c f20301d;

    /* renamed from: a */
    public final Lock f20302a = new ReentrantLock();

    /* renamed from: b */
    public final SharedPreferences f20303b;

    /* renamed from: i */
    public static final String m13093i(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @RecentlyNullable
    /* renamed from: e */
    public String m13097e() {
        return m13094h("refreshToken");
    }

    /* renamed from: a */
    public void m13101a() {
        this.f20302a.lock();
        try {
            this.f20303b.edit().clear().apply();
        } finally {
            this.f20302a.unlock();
        }
    }

    @RecentlyNullable
    /* renamed from: c */
    public GoogleSignInAccount m13099c() {
        String m13094h;
        String m13094h2 = m13094h("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(m13094h2) || (m13094h = m13094h(m13093i("googleSignInAccount", m13094h2))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.m23086g1(m13094h);
        } catch (JSONException unused) {
            return null;
        }
    }

    @RecentlyNullable
    /* renamed from: d */
    public GoogleSignInOptions m13098d() {
        String m13094h;
        String m13094h2 = m13094h("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(m13094h2) || (m13094h = m13094h(m13093i("googleSignInOptions", m13094h2))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.m23073e1(m13094h);
        } catch (JSONException unused) {
            return null;
        }
    }

    /* renamed from: g */
    public final void m13095g(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        this.f20302a.lock();
        try {
            this.f20303b.edit().putString(str, str2).apply();
        } finally {
            this.f20302a.unlock();
        }
    }

    @RecentlyNullable
    /* renamed from: h */
    public final String m13094h(@RecentlyNonNull String str) {
        this.f20302a.lock();
        try {
            return this.f20303b.getString(str, null);
        } finally {
            this.f20302a.unlock();
        }
    }

    public C5536c(Context context) {
        this.f20303b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static C5536c m13100b(@RecentlyNonNull Context context) {
        C7297q.m1883j(context);
        Lock lock = f20300c;
        lock.lock();
        try {
            if (f20301d == null) {
                f20301d = new C5536c(context.getApplicationContext());
            }
            C5536c c5536c = f20301d;
            lock.unlock();
            return c5536c;
        } catch (Throwable th) {
            f20300c.unlock();
            throw th;
        }
    }

    /* renamed from: f */
    public void m13096f(@RecentlyNonNull GoogleSignInAccount googleSignInAccount, @RecentlyNonNull GoogleSignInOptions googleSignInOptions) {
        C7297q.m1883j(googleSignInAccount);
        C7297q.m1883j(googleSignInOptions);
        m13095g("defaultGoogleSignInAccount", googleSignInAccount.m23084i1());
        C7297q.m1883j(googleSignInAccount);
        C7297q.m1883j(googleSignInOptions);
        String m23084i1 = googleSignInAccount.m23084i1();
        m13095g(m13093i("googleSignInAccount", m23084i1), googleSignInAccount.m23083j1());
        m13095g(m13093i("googleSignInOptions", m23084i1), googleSignInOptions.m23072f1());
    }
}
