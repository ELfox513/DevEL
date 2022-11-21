package p229y4;

import android.app.Application;
import android.content.SharedPreferences;
import android.util.Log;
import com.prineside.tdi2.Config;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* renamed from: y4.n */
/* loaded from: classes2.dex */
public final class C7463n {

    /* renamed from: a */
    public final Application f37229a;

    /* renamed from: b */
    public final SharedPreferences f37230b;

    /* renamed from: c */
    public final Set<String> f37231c;

    /* renamed from: a */
    public final int m1415a() {
        return this.f37230b.getInt("consent_status", 0);
    }

    /* renamed from: c */
    public final Set<String> m1413c() {
        return this.f37231c;
    }

    /* renamed from: d */
    public final void m1412d() {
        this.f37230b.edit().putStringSet("written_values", this.f37231c).apply();
    }

    /* renamed from: e */
    public final void m1411e(int i) {
        this.f37230b.edit().putInt("consent_status", i).apply();
    }

    /* renamed from: f */
    public final void m1410f(Set<String> set) {
        this.f37230b.edit().putStringSet("stored_info", set).apply();
    }

    /* renamed from: b */
    public final Map<String, String> m1414b() {
        String str;
        String str2;
        String str3;
        String str4;
        Application application = this.f37229a;
        Set<String> stringSet = this.f37230b.getStringSet("stored_info", Collections.emptySet());
        HashMap hashMap = new HashMap();
        for (String str5 : stringSet) {
            C7415a1 m1453a = C7427d1.m1453a(application, str5);
            if (m1453a == null) {
                String valueOf = String.valueOf(str5);
                if (valueOf.length() != 0) {
                    str = "Fetching request info: failed for key: ".concat(valueOf);
                } else {
                    str = new String("Fetching request info: failed for key: ");
                }
                Log.d("UserMessagingPlatform", str);
            } else {
                Object obj = application.getSharedPreferences(m1453a.f37117a, 0).getAll().get(m1453a.f37118b);
                if (obj == null) {
                    String valueOf2 = String.valueOf(str5);
                    if (valueOf2.length() != 0) {
                        str2 = "Stored info not exists: ".concat(valueOf2);
                    } else {
                        str2 = new String("Stored info not exists: ");
                    }
                    Log.d("UserMessagingPlatform", str2);
                } else {
                    if (obj instanceof Boolean) {
                        if (true != ((Boolean) obj).booleanValue()) {
                            str3 = "0";
                        } else {
                            str3 = Config.SITE_API_VERSION;
                        }
                    } else if (obj instanceof Number) {
                        str3 = obj.toString();
                    } else if (obj instanceof String) {
                        str3 = (String) obj;
                    } else {
                        String valueOf3 = String.valueOf(str5);
                        if (valueOf3.length() != 0) {
                            str4 = "Failed to fetch stored info: ".concat(valueOf3);
                        } else {
                            str4 = new String("Failed to fetch stored info: ");
                        }
                        Log.d("UserMessagingPlatform", str4);
                    }
                    hashMap.put(str5, str3);
                }
            }
        }
        return hashMap;
    }

    public C7463n(Application application) {
        this.f37229a = application;
        SharedPreferences sharedPreferences = application.getSharedPreferences("__GOOGLE_FUNDING_CHOICE_SDK_INTERNAL__", 0);
        this.f37230b = sharedPreferences;
        this.f37231c = new HashSet(sharedPreferences.getStringSet("written_values", Collections.emptySet()));
    }
}
