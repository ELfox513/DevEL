package p168r4;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: r4.ok0 */
/* loaded from: classes2.dex */
public final class ok0 {

    /* renamed from: a */
    public final Map<String, mk0> f29021a = new HashMap();

    /* renamed from: b */
    public final List<nk0> f29022b = new ArrayList();

    /* renamed from: c */
    public final Context f29023c;

    /* renamed from: d */
    public final kj0 f29024d;

    /* renamed from: b */
    public final synchronized void m8786b(nk0 nk0Var) {
        this.f29022b.add(nk0Var);
    }

    /* renamed from: c */
    public final synchronized void m8785c(String str) {
        SharedPreferences sharedPreferences;
        if (this.f29021a.containsKey(str)) {
            return;
        }
        if ("__default__".equals(str)) {
            sharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f29023c);
        } else {
            sharedPreferences = this.f29023c.getSharedPreferences(str, 0);
        }
        mk0 mk0Var = new mk0(this, str);
        this.f29021a.put(str, mk0Var);
        sharedPreferences.registerOnSharedPreferenceChangeListener(mk0Var);
    }

    public ok0(Context context, kj0 kj0Var) {
        this.f29023c = context;
        this.f29024d = kj0Var;
    }

    /* renamed from: d */
    public final /* synthetic */ void m8784d(Map map, SharedPreferences sharedPreferences, String str, String str2) {
        if (!map.containsKey(str) || !((Set) map.get(str)).contains(str2)) {
            return;
        }
        this.f29024d.m10022b();
    }
}
