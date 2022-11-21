package p239z6;
/* renamed from: z6.f */
/* loaded from: classes2.dex */
public final class C7879f extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7879f f38280a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.NetworkEventCountForeground";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_rl_network_event_count_fg";
    }

    /* renamed from: d */
    public Long m45d() {
        return 700L;
    }

    /* renamed from: e */
    public static synchronized C7879f m44e() {
        C7879f c7879f;
        synchronized (C7879f.class) {
            if (f38280a == null) {
                f38280a = new C7879f();
            }
            c7879f = f38280a;
        }
        return c7879f;
    }
}
