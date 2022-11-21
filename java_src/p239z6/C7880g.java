package p239z6;
/* renamed from: z6.g */
/* loaded from: classes2.dex */
public final class C7880g extends AbstractC7893t<Float> {

    /* renamed from: a */
    public static C7880g f38281a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.NetworkRequestSamplingRate";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_vc_network_request_sampling_rate";
    }

    /* renamed from: d */
    public Float m43d() {
        return Float.valueOf(1.0f);
    }

    /* renamed from: e */
    public static synchronized C7880g m42e() {
        C7880g c7880g;
        synchronized (C7880g.class) {
            if (f38281a == null) {
                f38281a = new C7880g();
            }
            c7880g = f38281a;
        }
        return c7880g;
    }
}
