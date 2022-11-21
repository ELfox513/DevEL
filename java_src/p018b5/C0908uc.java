package p018b5;
/* renamed from: b5.uc */
/* loaded from: classes2.dex */
public final class C0908uc implements InterfaceC0891tc {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f2340a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f2341b;

    @Override // p018b5.InterfaceC0891tc
    /* renamed from: a */
    public final boolean mo25091a() {
        return f2341b.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0891tc
    public final boolean zza() {
        return f2340a.m25430b().booleanValue();
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f2340a = c0800o6.m25554e("measurement.euid.client.dev", false);
        f2341b = c0800o6.m25554e("measurement.euid.service", false);
    }
}
