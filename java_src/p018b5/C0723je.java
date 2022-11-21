package p018b5;
/* renamed from: b5.je */
/* loaded from: classes2.dex */
public final class C0723je implements InterfaceC0706ie {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f1924a;

    /* renamed from: b */
    public static final AbstractC0851r6<Long> f1925b;

    @Override // p018b5.InterfaceC0706ie
    public final boolean zza() {
        return f1924a.m25430b().booleanValue();
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f1924a = c0800o6.m25554e("measurement.validation.internal_limits_internal_event_params", false);
        f1925b = c0800o6.m25556c("measurement.id.validation.internal_limits_internal_event_params", 0L);
    }
}
