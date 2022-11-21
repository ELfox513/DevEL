package p239z6;
/* renamed from: z6.n */
/* loaded from: classes2.dex */
public final class C7887n extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7887n f38288a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: b */
    public String mo16b() {
        return "sessions_memory_capture_frequency_bg_ms";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_session_gauge_memory_capture_frequency_bg_ms";
    }

    /* renamed from: d */
    public Long m29d() {
        return 0L;
    }

    /* renamed from: e */
    public static synchronized C7887n m28e() {
        C7887n c7887n;
        synchronized (C7887n.class) {
            if (f38288a == null) {
                f38288a = new C7887n();
            }
            c7887n = f38288a;
        }
        return c7887n;
    }
}
