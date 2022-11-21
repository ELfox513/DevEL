package p018b5;
/* renamed from: b5.kd */
/* loaded from: classes2.dex */
public final class C0739kd implements InterfaceC0722jd {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f1945a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f1946b;

    /* renamed from: c */
    public static final AbstractC0851r6<Boolean> f1947c;

    /* renamed from: d */
    public static final AbstractC0851r6<Boolean> f1948d;

    @Override // p018b5.InterfaceC0722jd
    /* renamed from: a */
    public final boolean mo25694a() {
        return f1946b.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0722jd
    /* renamed from: b */
    public final boolean mo25693b() {
        return f1947c.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0722jd
    /* renamed from: e */
    public final boolean mo25692e() {
        return f1948d.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0722jd
    public final boolean zza() {
        return true;
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f1945a = c0800o6.m25554e("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f1946b = c0800o6.m25554e("measurement.audience.refresh_event_count_filters_timestamp", false);
        f1947c = c0800o6.m25554e("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f1948d = c0800o6.m25554e("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }
}
