package p222x5;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
import p170r6.InterfaceC6538g;
import p196u5.C6930f;
/* renamed from: x5.v */
/* loaded from: classes2.dex */
public class C7386v implements InterfaceC7387w {

    /* renamed from: g */
    public static final Pattern f36970g = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: h */
    public static final String f36971h = Pattern.quote("/");

    /* renamed from: a */
    public final C7388x f36972a;

    /* renamed from: b */
    public final Context f36973b;

    /* renamed from: c */
    public final String f36974c;

    /* renamed from: d */
    public final InterfaceC6538g f36975d;

    /* renamed from: e */
    public final C7379r f36976e;

    /* renamed from: f */
    public String f36977f;

    /* renamed from: c */
    public static String m1613c() {
        return "SYN_" + UUID.randomUUID().toString();
    }

    /* renamed from: e */
    public static String m1611e(String str) {
        if (str == null) {
            return null;
        }
        return f36970g.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    /* renamed from: k */
    public static boolean m1605k(String str) {
        return str != null && str.startsWith("SYN_");
    }

    @Override // p222x5.InterfaceC7387w
    /* renamed from: a */
    public synchronized String mo1602a() {
        String str = this.f36977f;
        if (str != null) {
            return str;
        }
        C6930f.m3016f().m3013i("Determining Crashlytics installation ID...");
        SharedPreferences m1778r = C7341g.m1778r(this.f36973b);
        String string = m1778r.getString("firebase.installation.id", null);
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3013i("Cached Firebase Installation ID: " + string);
        if (this.f36976e.m1631d()) {
            String m1612d = m1612d();
            C6930f m3016f2 = C6930f.m3016f();
            m3016f2.m3013i("Fetched Firebase Installation ID: " + m1612d);
            if (m1612d == null) {
                if (string == null) {
                    m1612d = m1613c();
                } else {
                    m1612d = string;
                }
            }
            if (m1612d.equals(string)) {
                this.f36977f = m1604l(m1778r);
            } else {
                this.f36977f = m1614b(m1612d, m1778r);
            }
        } else if (m1605k(string)) {
            this.f36977f = m1604l(m1778r);
        } else {
            this.f36977f = m1614b(m1613c(), m1778r);
        }
        if (this.f36977f == null) {
            C6930f.m3016f().m3011k("Unable to determine Crashlytics Install Id, creating a new one.");
            this.f36977f = m1614b(m1613c(), m1778r);
        }
        C6930f m3016f3 = C6930f.m3016f();
        m3016f3.m3013i("Crashlytics installation ID: " + this.f36977f);
        return this.f36977f;
    }

    /* renamed from: b */
    public final synchronized String m1614b(String str, SharedPreferences sharedPreferences) {
        String m1611e;
        m1611e = m1611e(UUID.randomUUID().toString());
        C6930f m3016f = C6930f.m3016f();
        m3016f.m3013i("Created new Crashlytics installation ID: " + m1611e + " for FID: " + str);
        sharedPreferences.edit().putString("crashlytics.installation.id", m1611e).putString("firebase.installation.id", str).apply();
        return m1611e;
    }

    /* renamed from: f */
    public String m1610f() {
        return this.f36974c;
    }

    /* renamed from: g */
    public String m1609g() {
        return this.f36972a.m1601a(this.f36973b);
    }

    /* renamed from: i */
    public String m1607i() {
        return m1603m(Build.VERSION.INCREMENTAL);
    }

    /* renamed from: j */
    public String m1606j() {
        return m1603m(Build.VERSION.RELEASE);
    }

    /* renamed from: l */
    public final String m1604l(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("crashlytics.installation.id", null);
    }

    /* renamed from: m */
    public final String m1603m(String str) {
        return str.replaceAll(f36971h, "");
    }

    /* renamed from: d */
    public final String m1612d() {
        try {
            return (String) C7364k0.m1695d(this.f36975d.getId());
        } catch (Exception e) {
            C6930f.m3016f().m3010l("Failed to retrieve Firebase Installations ID.", e);
            return null;
        }
    }

    /* renamed from: h */
    public String m1608h() {
        return String.format(Locale.US, "%s/%s", m1603m(Build.MANUFACTURER), m1603m(Build.MODEL));
    }

    public C7386v(Context context, String str, InterfaceC6538g interfaceC6538g, C7379r c7379r) {
        if (context != null) {
            if (str != null) {
                this.f36973b = context;
                this.f36974c = str;
                this.f36975d = interfaceC6538g;
                this.f36976e = c7379r;
                this.f36972a = new C7388x();
                return;
            }
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        throw new IllegalArgumentException("appContext must not be null");
    }
}
