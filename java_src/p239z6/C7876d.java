package p239z6;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p223x6.C7391a;
/* renamed from: z6.d */
/* loaded from: classes2.dex */
public final class C7876d extends AbstractC7893t<String> {

    /* renamed from: a */
    public static C7876d f38277a;

    /* renamed from: b */
    public static final Map<Long, String> f38278b = Collections.unmodifiableMap(new C7877a());

    /* renamed from: f */
    public static String m49f(long j) {
        return f38278b.get(Long.valueOf(j));
    }

    /* renamed from: g */
    public static boolean m48g(long j) {
        return f38278b.containsKey(Long.valueOf(j));
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.LogSourceName";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_log_source";
    }

    /* renamed from: d */
    public String m51d() {
        return C7391a.f36986c;
    }

    /* renamed from: z6.d$a */
    /* loaded from: classes2.dex */
    public class C7877a extends HashMap<Long, String> {
        public C7877a() {
            put(461L, "FIREPERF_AUTOPUSH");
            put(462L, "FIREPERF");
            put(675L, "FIREPERF_INTERNAL_LOW");
            put(676L, "FIREPERF_INTERNAL_HIGH");
        }
    }

    /* renamed from: e */
    public static synchronized C7876d m50e() {
        C7876d c7876d;
        synchronized (C7876d.class) {
            if (f38277a == null) {
                f38277a = new C7876d();
            }
            c7876d = f38277a;
        }
        return c7876d;
    }
}
