package p239z6;
/* renamed from: z6.i */
/* loaded from: classes2.dex */
public final class C7882i extends AbstractC7893t<String> {

    /* renamed from: a */
    public static C7882i f38283a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.SdkDisabledVersions";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_disabled_android_versions";
    }

    /* renamed from: d */
    public String m39d() {
        return "";
    }

    /* renamed from: e */
    public static synchronized C7882i m38e() {
        C7882i c7882i;
        synchronized (C7882i.class) {
            if (f38283a == null) {
                f38283a = new C7882i();
            }
            c7882i = f38283a;
        }
        return c7882i;
    }
}
