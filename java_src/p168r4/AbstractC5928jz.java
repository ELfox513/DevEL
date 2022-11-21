package p168r4;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* renamed from: r4.jz */
/* loaded from: classes2.dex */
public abstract class AbstractC5928jz<T> {

    /* renamed from: a */
    public final int f26183a;

    /* renamed from: b */
    public final String f26184b;

    /* renamed from: c */
    public final T f26185c;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ AbstractC5928jz(int i, int i2, String str, T t) {
        this.f26183a = i;
        this.f26184b = i2;
        this.f26185c = str;
        C5592av.m12936b().m9832a(this);
    }

    /* renamed from: g */
    public static AbstractC5928jz<Boolean> m10139g(int i, String str, Boolean bool) {
        return new C5669cz(i, str, bool);
    }

    /* renamed from: h */
    public static AbstractC5928jz<Integer> m10138h(int i, String str, int i2) {
        return new C5706dz(1, str, Integer.valueOf(i2));
    }

    /* renamed from: i */
    public static AbstractC5928jz<Long> m10137i(int i, String str, long j) {
        return new C5744ez(1, str, Long.valueOf(j));
    }

    /* renamed from: j */
    public static AbstractC5928jz<Float> m10136j(int i, String str, float f) {
        return new C5818gz(1, str, Float.valueOf(f));
    }

    /* renamed from: k */
    public static AbstractC5928jz<String> m10135k(int i, String str, String str2) {
        return new C5855hz(1, str, str2);
    }

    /* renamed from: l */
    public static AbstractC5928jz<String> m10134l(int i, String str) {
        AbstractC5928jz<String> m10135k = m10135k(1, "gads:sdk_core_constants:experiment_id", null);
        C5592av.m12936b().m9831b(m10135k);
        return m10135k;
    }

    /* renamed from: a */
    public abstract T mo10145a(Bundle bundle);

    /* renamed from: b */
    public abstract void mo10144b(SharedPreferences.Editor editor, T t);

    /* renamed from: c */
    public abstract T mo10143c(JSONObject jSONObject);

    /* renamed from: d */
    public abstract T mo10142d(SharedPreferences sharedPreferences);

    /* renamed from: e */
    public final String m10141e() {
        return this.f26184b;
    }

    /* renamed from: f */
    public final T m10140f() {
        return this.f26185c;
    }

    /* renamed from: m */
    public final int m10133m() {
        return this.f26183a;
    }
}
