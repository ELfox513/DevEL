package p168r4;

import android.content.SharedPreferences;
/* renamed from: r4.oz */
/* loaded from: classes2.dex */
public final class C6114oz implements u10 {

    /* renamed from: a */
    public final /* synthetic */ SharedPreferences$OnSharedPreferenceChangeListenerC6151pz f29273a;

    public C6114oz(SharedPreferences$OnSharedPreferenceChangeListenerC6151pz sharedPreferences$OnSharedPreferenceChangeListenerC6151pz) {
        this.f29273a = sharedPreferences$OnSharedPreferenceChangeListenerC6151pz;
    }

    @Override // p168r4.u10
    /* renamed from: a */
    public final String mo6654a(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f29273a.f29856e;
        return sharedPreferences.getString(str, str2);
    }

    @Override // p168r4.u10
    /* renamed from: c */
    public final Double mo6652c(String str, double d) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f29273a.f29856e;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d));
    }

    @Override // p168r4.u10
    /* renamed from: d */
    public final Boolean mo6651d(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f29273a.f29856e;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }

    @Override // p168r4.u10
    /* renamed from: b */
    public final Long mo6653b(String str, long j) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        try {
            sharedPreferences2 = this.f29273a.f29856e;
            return Long.valueOf(sharedPreferences2.getLong(str, j));
        } catch (ClassCastException unused) {
            sharedPreferences = this.f29273a.f29856e;
            return Long.valueOf(sharedPreferences.getInt(str, (int) j));
        }
    }
}
