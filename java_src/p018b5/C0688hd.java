package p018b5;
/* renamed from: b5.hd */
/* loaded from: classes2.dex */
public final class C0688hd implements InterfaceC0671gd {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f1867a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f1868b;

    @Override // p018b5.InterfaceC0671gd
    /* renamed from: a */
    public final boolean mo25822a() {
        return f1867a.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0671gd
    /* renamed from: b */
    public final boolean mo25821b() {
        return f1868b.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0671gd
    public final boolean zza() {
        return true;
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f1867a = c0800o6.m25554e("measurement.client.consent.suppress_1p_in_ga4f_install", true);
        f1868b = c0800o6.m25554e("measurement.client.consent.gmpappid_worker_thread_fix", true);
    }
}
