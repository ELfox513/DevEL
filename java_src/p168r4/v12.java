package p168r4;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* renamed from: r4.v12 */
/* loaded from: classes2.dex */
public final class v12 {

    /* renamed from: c */
    public so2 f32541c = null;

    /* renamed from: d */
    public no2 f32542d = null;

    /* renamed from: b */
    public final Map<String, C5664cu> f32540b = Collections.synchronizedMap(new HashMap());

    /* renamed from: a */
    public final List<C5664cu> f32539a = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    public final void m6251a(so2 so2Var) {
        this.f32541c = so2Var;
    }

    /* renamed from: d */
    public final b71 m6248d() {
        return new b71(this.f32542d, "", this, this.f32541c);
    }

    /* renamed from: e */
    public final List<C5664cu> m6247e() {
        return this.f32539a;
    }

    /* renamed from: b */
    public final void m6250b(no2 no2Var) {
        String str = no2Var.f28436w;
        if (this.f32540b.containsKey(str)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = no2Var.f28435v.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, no2Var.f28435v.getString(next));
            } catch (JSONException unused) {
            }
        }
        C5664cu c5664cu = new C5664cu(no2Var.f28382E, 0L, null, bundle);
        this.f32539a.add(c5664cu);
        this.f32540b.put(str, c5664cu);
    }

    /* renamed from: c */
    public final void m6249c(no2 no2Var, long j, C5996lt c5996lt) {
        String str = no2Var.f28436w;
        if (!this.f32540b.containsKey(str)) {
            return;
        }
        if (this.f32542d == null) {
            this.f32542d = no2Var;
        }
        C5664cu c5664cu = this.f32540b.get(str);
        c5664cu.f21676b = j;
        c5664cu.f21677d = c5996lt;
    }
}
