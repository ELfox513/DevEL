package p239z6;
/* renamed from: z6.k */
/* loaded from: classes2.dex */
public final class C7884k extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7884k f38285a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: b */
    public String mo16b() {
        return "sessions_cpu_capture_frequency_bg_ms";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_session_gauge_cpu_capture_frequency_bg_ms";
    }

    /* renamed from: d */
    public Long m35d() {
        return 0L;
    }

    /* renamed from: e */
    public static synchronized C7884k m34e() {
        C7884k c7884k;
        synchronized (C7884k.class) {
            if (f38285a == null) {
                f38285a = new C7884k();
            }
            c7884k = f38285a;
        }
        return c7884k;
    }
}
