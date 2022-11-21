package p018b5;
/* renamed from: b5.pe */
/* loaded from: classes2.dex */
public final class C0825pe implements InterfaceC0808oe {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f2147a;

    /* renamed from: b */
    public static final AbstractC0851r6<Double> f2148b;

    /* renamed from: c */
    public static final AbstractC0851r6<Long> f2149c;

    /* renamed from: d */
    public static final AbstractC0851r6<Long> f2150d;

    /* renamed from: e */
    public static final AbstractC0851r6<String> f2151e;

    @Override // p018b5.InterfaceC0808oe
    /* renamed from: a */
    public final long mo25485a() {
        return f2149c.m25430b().longValue();
    }

    @Override // p018b5.InterfaceC0808oe
    /* renamed from: b */
    public final long mo25484b() {
        return f2150d.m25430b().longValue();
    }

    @Override // p018b5.InterfaceC0808oe
    /* renamed from: c */
    public final boolean mo25483c() {
        return f2147a.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0808oe
    /* renamed from: e */
    public final String mo25482e() {
        return f2151e.m25430b();
    }

    @Override // p018b5.InterfaceC0808oe
    public final double zza() {
        return f2148b.m25430b().doubleValue();
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f2147a = c0800o6.m25554e("measurement.test.boolean_flag", false);
        f2148b = c0800o6.m25557b("measurement.test.double_flag", -3.0d);
        f2149c = c0800o6.m25556c("measurement.test.int_flag", -2L);
        f2150d = c0800o6.m25556c("measurement.test.long_flag", -1L);
        f2151e = c0800o6.m25555d("measurement.test.string_flag", "---");
    }
}
