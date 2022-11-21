package p229y4;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
/* renamed from: y4.b1 */
/* loaded from: classes2.dex */
public final class C7419b1 {

    /* renamed from: a */
    public final Context f37125a;

    /* renamed from: b */
    public final Map<String, SharedPreferences.Editor> f37126b = new HashMap();

    public C7419b1(Context context) {
        this.f37125a = context;
    }

    /* renamed from: b */
    public final void m1461b() {
        for (SharedPreferences.Editor editor : this.f37126b.values()) {
            editor.apply();
        }
    }

    /* renamed from: c */
    public final boolean m1460c(String str, Object obj) {
        C7415a1 m1453a = C7427d1.m1453a(this.f37125a, str);
        if (m1453a == null) {
            return false;
        }
        SharedPreferences.Editor m1459d = m1459d(m1453a.f37117a);
        if (obj instanceof Integer) {
            m1459d.putInt(m1453a.f37118b, ((Integer) obj).intValue());
            return true;
        } else if (obj instanceof Long) {
            m1459d.putLong(m1453a.f37118b, ((Long) obj).longValue());
            return true;
        } else if (obj instanceof Double) {
            m1459d.putFloat(m1453a.f37118b, ((Double) obj).floatValue());
            return true;
        } else if (obj instanceof Float) {
            m1459d.putFloat(m1453a.f37118b, ((Float) obj).floatValue());
            return true;
        } else if (obj instanceof Boolean) {
            m1459d.putBoolean(m1453a.f37118b, ((Boolean) obj).booleanValue());
            return true;
        } else if (!(obj instanceof String)) {
            return false;
        } else {
            m1459d.putString(m1453a.f37118b, (String) obj);
            return true;
        }
    }

    /* renamed from: d */
    public final SharedPreferences.Editor m1459d(String str) {
        if (!this.f37126b.containsKey(str)) {
            this.f37126b.put(str, this.f37125a.getSharedPreferences(str, 0).edit());
        }
        return this.f37126b.get(str);
    }
}
