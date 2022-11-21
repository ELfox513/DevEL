package p018b5;
/* renamed from: b5.qd */
/* loaded from: classes2.dex */
public final class C0841qd implements InterfaceC0824pd {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f2226a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f2227b;

    /* renamed from: c */
    public static final AbstractC0851r6<Long> f2228c;

    @Override // p018b5.InterfaceC0824pd
    public final boolean zza() {
        return f2227b.m25430b().booleanValue();
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f2226a = c0800o6.m25554e("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        f2227b = c0800o6.m25554e("measurement.collection.redundant_engagement_removal_enabled", false);
        f2228c = c0800o6.m25556c("measurement.id.collection.redundant_engagement_removal_enabled", 0L);
    }
}
