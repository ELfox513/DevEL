package p168r4;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
/* renamed from: r4.vy2 */
/* loaded from: classes2.dex */
public final class vy2 implements kx2 {

    /* renamed from: a */
    public final Object f32978a;

    /* renamed from: b */
    public final wy2 f32979b;

    /* renamed from: c */
    public final iz2 f32980c;

    /* renamed from: d */
    public final hx2 f32981d;

    public vy2(Object obj, wy2 wy2Var, iz2 iz2Var, hx2 hx2Var) {
        this.f32978a = obj;
        this.f32979b = wy2Var;
        this.f32980c = iz2Var;
        this.f32981d = hx2Var;
    }

    @Override // p168r4.kx2
    /* renamed from: a */
    public final synchronized String mo5976a(Context context, String str, String str2, View view, Activity activity) {
        Map<String, Object> mo8539e;
        mo8539e = this.f32980c.mo8539e();
        mo8539e.put("f", "c");
        mo8539e.put("ctx", context);
        mo8539e.put("cs", str2);
        mo8539e.put("aid", null);
        mo8539e.put("view", view);
        mo8539e.put("act", activity);
        return m5968i(m5967j(null, mo8539e));
    }

    @Override // p168r4.kx2
    /* renamed from: b */
    public final synchronized void mo5975b(String str, MotionEvent motionEvent) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            HashMap hashMap = new HashMap();
            hashMap.put("t", new Throwable());
            hashMap.put("aid", null);
            hashMap.put("evt", motionEvent);
            this.f32978a.getClass().getDeclaredMethod("he", Map.class).invoke(this.f32978a, hashMap);
            this.f32981d.m10767b(3003, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new gz2(2005, e);
        }
    }

    @Override // p168r4.kx2
    /* renamed from: c */
    public final synchronized String mo5974c(Context context, String str) {
        Map<String, Object> mo8543a;
        mo8543a = this.f32980c.mo8543a();
        mo8543a.put("f", "q");
        mo8543a.put("ctx", context);
        mo8543a.put("aid", null);
        return m5968i(m5967j(null, mo8543a));
    }

    @Override // p168r4.kx2
    /* renamed from: d */
    public final synchronized String mo5973d(Context context, String str, View view, Activity activity) {
        Map<String, Object> mo8542b;
        mo8542b = this.f32980c.mo8542b();
        mo8542b.put("f", "v");
        mo8542b.put("ctx", context);
        mo8542b.put("aid", null);
        mo8542b.put("view", view);
        mo8542b.put("act", null);
        return m5968i(m5967j(null, mo8542b));
    }

    /* renamed from: e */
    public final wy2 m5972e() {
        return this.f32979b;
    }

    /* renamed from: f */
    public final synchronized boolean m5971f() {
        try {
        } catch (Exception e) {
            throw new gz2(2001, e);
        }
        return ((Boolean) this.f32978a.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.f32978a, new Object[0])).booleanValue();
    }

    /* renamed from: g */
    public final synchronized void m5970g() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.f32978a.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.f32978a, new Object[0]);
            this.f32981d.m10767b(3001, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e) {
            throw new gz2(2003, e);
        }
    }

    /* renamed from: h */
    public final synchronized int m5969h() {
        try {
        } catch (Exception e) {
            throw new gz2(2006, e);
        }
        return ((Integer) this.f32978a.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.f32978a, new Object[0])).intValue();
    }

    /* renamed from: j */
    public final synchronized byte[] m5967j(Map<String, String> map, Map<String, Object> map2) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e) {
            this.f32981d.m10766c(2007, System.currentTimeMillis() - currentTimeMillis, e);
            return null;
        }
        return (byte[]) this.f32978a.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f32978a, null, map2);
    }

    /* renamed from: i */
    public static String m5968i(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        cc4 m12168C = dc4.m12168C();
        m12168C.m12490z(5);
        m12168C.m12492v(ll3.m9632I(bArr));
        return Base64.encodeToString(m12168C.m9614o().mo6490t(), 11);
    }
}
