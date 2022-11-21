package p222x5;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.concurrent.Executor;
import p097j5.AbstractC4346i;
import p097j5.C4348j;
import p124m5.C4638c;
import p196u5.C6930f;
/* renamed from: x5.r */
/* loaded from: classes2.dex */
public class C7379r {

    /* renamed from: a */
    public final SharedPreferences f36945a;

    /* renamed from: b */
    public final C4638c f36946b;

    /* renamed from: c */
    public final Object f36947c;

    /* renamed from: d */
    public C4348j<Void> f36948d;

    /* renamed from: e */
    public boolean f36949e;

    /* renamed from: f */
    public boolean f36950f;

    /* renamed from: g */
    public Boolean f36951g;

    /* renamed from: h */
    public final C4348j<Void> f36952h;

    /* renamed from: d */
    public synchronized boolean m1631d() {
        boolean m15890q;
        Boolean bool = this.f36951g;
        if (bool != null) {
            m15890q = bool.booleanValue();
        } else {
            m15890q = this.f36946b.m15890q();
        }
        m1630e(m15890q);
        return m15890q;
    }

    /* renamed from: f */
    public static Boolean m1629f(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_crashlytics_collection_enabled")) {
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            C6930f.m3016f().m3017e("Could not read data collection permission from manifest", e);
            return null;
        }
    }

    /* renamed from: b */
    public final Boolean m1633b() {
        if (this.f36945a.contains("firebase_crashlytics_collection_enabled")) {
            this.f36950f = false;
            return Boolean.valueOf(this.f36945a.getBoolean("firebase_crashlytics_collection_enabled", true));
        }
        return null;
    }

    /* renamed from: c */
    public void m1632c(boolean z) {
        if (z) {
            this.f36952h.m16771e(null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    /* renamed from: e */
    public final void m1630e(boolean z) {
        String str;
        String str2;
        if (z) {
            str = "ENABLED";
        } else {
            str = "DISABLED";
        }
        if (this.f36951g == null) {
            str2 = "global Firebase setting";
        } else if (this.f36950f) {
            str2 = "firebase_crashlytics_collection_enabled manifest flag";
        } else {
            str2 = "API";
        }
        C6930f.m3016f().m3020b(String.format("Crashlytics automatic data collection %s by %s.", str, str2));
    }

    /* renamed from: g */
    public AbstractC4346i<Void> m1628g() {
        AbstractC4346i<Void> m16775a;
        synchronized (this.f36947c) {
            m16775a = this.f36948d.m16775a();
        }
        return m16775a;
    }

    /* renamed from: h */
    public AbstractC4346i<Void> m1627h(Executor executor) {
        return C7364k0.m1689j(executor, this.f36952h.m16775a(), m1628g());
    }

    public C7379r(C4638c c4638c) {
        Object obj = new Object();
        this.f36947c = obj;
        this.f36948d = new C4348j<>();
        this.f36949e = false;
        this.f36950f = false;
        this.f36952h = new C4348j<>();
        Context m15899h = c4638c.m15899h();
        this.f36946b = c4638c;
        this.f36945a = C7341g.m1778r(m15899h);
        Boolean m1633b = m1633b();
        this.f36951g = m1633b == null ? m1634a(m15899h) : m1633b;
        synchronized (obj) {
            if (m1631d()) {
                this.f36948d.m16771e(null);
                this.f36949e = true;
            }
        }
    }

    /* renamed from: a */
    public final Boolean m1634a(Context context) {
        Boolean m1629f = m1629f(context);
        if (m1629f == null) {
            this.f36950f = false;
            return null;
        }
        this.f36950f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(m1629f));
    }
}
