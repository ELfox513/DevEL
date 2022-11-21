package p018b5;
/* renamed from: b5.rc */
/* loaded from: classes2.dex */
public final class C0857rc implements InterfaceC0840qc {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f2281a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f2282b;

    /* renamed from: c */
    public static final AbstractC0851r6<Boolean> f2283c;

    /* renamed from: d */
    public static final AbstractC0851r6<Long> f2284d;

    @Override // p018b5.InterfaceC0840qc
    public final long zza() {
        return f2284d.m25430b().longValue();
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f2281a = c0800o6.m25554e("measurement.client.consent_state_v1", true);
        f2282b = c0800o6.m25554e("measurement.client.3p_consent_state_v1", true);
        f2283c = c0800o6.m25554e("measurement.service.consent_state_v1_W36", true);
        f2284d = c0800o6.m25556c("measurement.service.storage_consent_support_version", 203600L);
    }
}
