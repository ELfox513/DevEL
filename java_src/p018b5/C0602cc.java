package p018b5;
/* renamed from: b5.cc */
/* loaded from: classes2.dex */
public final class C0602cc implements InterfaceC0585bc {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f1769a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f1770b;

    /* renamed from: c */
    public static final AbstractC0851r6<Boolean> f1771c;

    @Override // p018b5.InterfaceC0585bc
    /* renamed from: a */
    public final boolean mo26099a() {
        return f1769a.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0585bc
    /* renamed from: b */
    public final boolean mo26098b() {
        return f1770b.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0585bc
    /* renamed from: e */
    public final boolean mo26097e() {
        return f1771c.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0585bc
    public final boolean zza() {
        return true;
    }

    static {
        C0800o6 m25558a = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement")).m25558a();
        f1769a = m25558a.m25554e("measurement.adid_zero.service", false);
        f1770b = m25558a.m25554e("measurement.adid_zero.adid_uid", false);
        f1771c = m25558a.m25554e("measurement.adid_zero.remove_lair_if_adidzero_false", true);
    }
}
