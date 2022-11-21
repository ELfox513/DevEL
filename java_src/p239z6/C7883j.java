package p239z6;
/* renamed from: z6.j */
/* loaded from: classes2.dex */
public final class C7883j extends AbstractC7893t<Boolean> {

    /* renamed from: a */
    public static C7883j f38284a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "com.google.firebase.perf.SdkEnabled";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: c */
    public String mo15c() {
        return "fpr_enabled";
    }

    /* renamed from: d */
    public Boolean m37d() {
        return Boolean.TRUE;
    }

    /* renamed from: e */
    public static synchronized C7883j m36e() {
        C7883j c7883j;
        synchronized (C7883j.class) {
            if (f38284a == null) {
                f38284a = new C7883j();
            }
            c7883j = f38284a;
        }
        return c7883j;
    }
}
