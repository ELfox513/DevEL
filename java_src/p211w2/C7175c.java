package p211w2;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import p185t3.C6756m;
/* renamed from: w2.c */
/* loaded from: classes.dex */
public final class C7175c {

    /* renamed from: a */
    public SharedPreferences f36461a;

    public C7175c(Context context) {
        try {
            Context m3480c = C6756m.m3480c(context);
            this.f36461a = m3480c == null ? null : m3480c.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.f36461a = null;
        }
    }

    /* renamed from: a */
    public final boolean m2229a(String str, boolean z) {
        try {
            SharedPreferences sharedPreferences = this.f36461a;
            if (sharedPreferences == null) {
                return false;
            }
            return sharedPreferences.getBoolean(str, false);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }

    /* renamed from: b */
    public final float m2228b(String str, float f) {
        try {
            SharedPreferences sharedPreferences = this.f36461a;
            if (sharedPreferences == null) {
                return 0.0f;
            }
            return sharedPreferences.getFloat(str, 0.0f);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return 0.0f;
        }
    }

    /* renamed from: c */
    public final String m2227c(String str, String str2) {
        try {
            SharedPreferences sharedPreferences = this.f36461a;
            return sharedPreferences == null ? str2 : sharedPreferences.getString(str, str2);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return str2;
        }
    }
}
