package p239z6;
/* renamed from: z6.o */
/* loaded from: classes2.dex */
public final class C7888o extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7888o f38289a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: b */
    public String mo16b() {
        return "sessions_memory_capture_frequency_fg_ms";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_session_gauge_memory_capture_frequency_fg_ms";
    }

    /* renamed from: d */
    public Long m27d() {
        return 100L;
    }

    /* renamed from: e */
    public static synchronized C7888o m26e() {
        C7888o c7888o;
        synchronized (C7888o.class) {
            if (f38289a == null) {
                f38289a = new C7888o();
            }
            c7888o = f38289a;
        }
        return c7888o;
    }
}
