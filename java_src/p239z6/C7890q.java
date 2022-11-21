package p239z6;
/* renamed from: z6.q */
/* loaded from: classes2.dex */
public final class C7890q extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7890q f38291a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.TraceEventCountBackground";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_rl_trace_event_count_bg";
    }

    /* renamed from: d */
    public Long m23d() {
        return 30L;
    }

    /* renamed from: e */
    public static synchronized C7890q m22e() {
        C7890q c7890q;
        synchronized (C7890q.class) {
            if (f38291a == null) {
                f38291a = new C7890q();
            }
            c7890q = f38291a;
        }
        return c7890q;
    }
}
