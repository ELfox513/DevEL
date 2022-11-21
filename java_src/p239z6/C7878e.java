package p239z6;
/* renamed from: z6.e */
/* loaded from: classes2.dex */
public final class C7878e extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7878e f38279a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.NetworkEventCountBackground";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_rl_network_event_count_bg";
    }

    /* renamed from: d */
    public Long m47d() {
        return 70L;
    }

    /* renamed from: e */
    public static synchronized C7878e m46e() {
        C7878e c7878e;
        synchronized (C7878e.class) {
            if (f38279a == null) {
                f38279a = new C7878e();
            }
            c7878e = f38279a;
        }
        return c7878e;
    }
}
