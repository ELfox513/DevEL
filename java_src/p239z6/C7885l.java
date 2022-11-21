package p239z6;
/* renamed from: z6.l */
/* loaded from: classes2.dex */
public final class C7885l extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7885l f38286a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: b */
    public String mo16b() {
        return "sessions_cpu_capture_frequency_fg_ms";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_session_gauge_cpu_capture_frequency_fg_ms";
    }

    /* renamed from: d */
    public Long m33d() {
        return 100L;
    }

    /* renamed from: e */
    public static synchronized C7885l m32e() {
        C7885l c7885l;
        synchronized (C7885l.class) {
            if (f38286a == null) {
                f38286a = new C7885l();
            }
            c7885l = f38286a;
        }
        return c7885l;
    }
}
