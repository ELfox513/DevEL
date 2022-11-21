package p239z6;
/* renamed from: z6.p */
/* loaded from: classes2.dex */
public final class C7889p extends AbstractC7893t<Float> {

    /* renamed from: a */
    public static C7889p f38290a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.SessionSamplingRate";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: b */
    public String mo16b() {
        return "sessions_sampling_percentage";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_vc_session_sampling_rate";
    }

    /* renamed from: d */
    public Float m25d() {
        return Float.valueOf(0.01f);
    }

    /* renamed from: e */
    public static synchronized C7889p m24e() {
        C7889p c7889p;
        synchronized (C7889p.class) {
            if (f38290a == null) {
                f38290a = new C7889p();
            }
            c7889p = f38290a;
        }
        return c7889p;
    }
}
