package p018b5;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.Iterator;
import java.util.Map;
import p145p.C5270a;
/* renamed from: b5.s6 */
/* loaded from: classes2.dex */
public final class C0868s6 implements InterfaceC0579b6 {

    /* renamed from: b */
    public static final Map<String, C0868s6> f2297b = new C5270a();

    /* renamed from: a */
    public final SharedPreferences f2298a;

    @Override // p018b5.InterfaceC0579b6
    /* renamed from: u */
    public final Object mo24990u(String str) {
        throw null;
    }

    /* renamed from: b */
    public static synchronized void m25261b() {
        synchronized (C0868s6.class) {
            Map<String, C0868s6> map = f2297b;
            Iterator<C0868s6> it = map.values().iterator();
            if (!it.hasNext()) {
                map.clear();
            } else {
                SharedPreferences sharedPreferences = it.next().f2298a;
                throw null;
            }
        }
    }

    /* renamed from: a */
    public static C0868s6 m25262a(Context context, String str) {
        C0868s6 c0868s6;
        if (!C0867s5.m25263a()) {
            synchronized (C0868s6.class) {
                c0868s6 = f2297b.get(null);
                if (c0868s6 == null) {
                    StrictMode.allowThreadDiskReads();
                    throw null;
                }
            }
            return c0868s6;
        }
        throw null;
    }
}
