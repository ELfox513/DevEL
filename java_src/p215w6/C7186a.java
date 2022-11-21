package p215w6;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import p143o6.InterfaceC5098c;
import p172s.C6550a;
/* renamed from: w6.a */
/* loaded from: classes2.dex */
public class C7186a {

    /* renamed from: a */
    public final Context f36467a;

    /* renamed from: b */
    public final SharedPreferences f36468b;

    /* renamed from: c */
    public final InterfaceC5098c f36469c;

    /* renamed from: d */
    public boolean f36470d;

    /* renamed from: b */
    public synchronized boolean m2217b() {
        return this.f36470d;
    }

    /* renamed from: a */
    public static Context m2218a(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return context;
        }
        return C6550a.m3938b(context);
    }

    /* renamed from: c */
    public final boolean m2216c() {
        if (this.f36468b.contains("firebase_data_collection_default_enabled")) {
            return this.f36468b.getBoolean("firebase_data_collection_default_enabled", true);
        }
        return m2215d();
    }

    /* renamed from: d */
    public final boolean m2215d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f36467a.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.f36467a.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    public C7186a(Context context, String str, InterfaceC5098c interfaceC5098c) {
        Context m2218a = m2218a(context);
        this.f36467a = m2218a;
        this.f36468b = m2218a.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f36469c = interfaceC5098c;
        this.f36470d = m2216c();
    }
}
