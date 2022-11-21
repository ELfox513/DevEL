package p239z6;
/* renamed from: z6.s */
/* loaded from: classes2.dex */
public final class C7892s extends AbstractC7893t<Float> {

    /* renamed from: a */
    public static C7892s f38293a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.TraceSamplingRate";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_vc_trace_sampling_rate";
    }

    /* renamed from: d */
    public Float m19d() {
        return Float.valueOf(1.0f);
    }

    /* renamed from: e */
    public static synchronized C7892s m18e() {
        C7892s c7892s;
        synchronized (C7892s.class) {
            if (f38293a == null) {
                f38293a = new C7892s();
            }
            c7892s = f38293a;
        }
        return c7892s;
    }
}
