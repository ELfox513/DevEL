package p018b5;
/* renamed from: b5.zd */
/* loaded from: classes2.dex */
public final class C0994zd implements InterfaceC0977yd {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f2471a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f2472b;

    /* renamed from: c */
    public static final AbstractC0851r6<Boolean> f2473c;

    /* renamed from: d */
    public static final AbstractC0851r6<Long> f2474d;

    @Override // p018b5.InterfaceC0977yd
    /* renamed from: a */
    public final boolean mo24857a() {
        return f2473c.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0977yd
    public final boolean zza() {
        return f2471a.m25430b().booleanValue();
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f2471a = c0800o6.m25554e("measurement.sdk.collection.enable_extend_user_property_size", true);
        f2472b = c0800o6.m25554e("measurement.sdk.collection.last_deep_link_referrer2", true);
        f2473c = c0800o6.m25554e("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        f2474d = c0800o6.m25556c("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }
}
