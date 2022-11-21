package p239z6;
/* renamed from: z6.m */
/* loaded from: classes2.dex */
public final class C7886m extends AbstractC7893t<Long> {

    /* renamed from: a */
    public static C7886m f38287a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.SessionsMaxDurationMinutes";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: b */
    public String mo16b() {
        return "sessions_max_length_minutes";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_session_max_duration_min";
    }

    /* renamed from: d */
    public Long m31d() {
        return 240L;
    }

    /* renamed from: e */
    public static synchronized C7886m m30e() {
        C7886m c7886m;
        synchronized (C7886m.class) {
            if (f38287a == null) {
                f38287a = new C7886m();
            }
            c7886m = f38287a;
        }
        return c7886m;
    }
}
