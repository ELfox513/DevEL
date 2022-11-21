package p239z6;
/* renamed from: z6.h */
/* loaded from: classes2.dex */
public final class C7881h extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7881h f38282a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.TimeLimitSec";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_rl_time_limit_sec";
    }

    /* renamed from: d */
    public Long m41d() {
        return 600L;
    }

    /* renamed from: e */
    public static synchronized C7881h m40e() {
        C7881h c7881h;
        synchronized (C7881h.class) {
            if (f38282a == null) {
                f38282a = new C7881h();
            }
            c7881h = f38282a;
        }
        return c7881h;
    }
}
