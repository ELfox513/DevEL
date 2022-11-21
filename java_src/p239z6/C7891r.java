package p239z6;
/* renamed from: z6.r */
/* loaded from: classes2.dex */
public final class C7891r extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7891r f38292a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.TraceEventCountForeground";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_rl_trace_event_count_fg";
    }

    /* renamed from: d */
    public Long m21d() {
        return 300L;
    }

    /* renamed from: e */
    public static synchronized C7891r m20e() {
        C7891r c7891r;
        synchronized (C7891r.class) {
            if (f38292a == null) {
                f38292a = new C7891r();
            }
            c7891r = f38292a;
        }
        return c7891r;
    }
}
