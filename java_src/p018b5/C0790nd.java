package p018b5;
/* renamed from: b5.nd */
/* loaded from: classes2.dex */
public final class C0790nd implements InterfaceC0773md {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f2063a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f2064b;

    /* renamed from: c */
    public static final AbstractC0851r6<Boolean> f2065c;

    @Override // p018b5.InterfaceC0773md
    /* renamed from: a */
    public final boolean mo25571a() {
        return f2063a.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0773md
    public final boolean zza() {
        return true;
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f2063a = c0800o6.m25554e("measurement.client.sessions.check_on_reset_and_enable2", true);
        f2064b = c0800o6.m25554e("measurement.client.sessions.check_on_startup", true);
        f2065c = c0800o6.m25554e("measurement.client.sessions.start_session_before_view_screen", true);
    }
}
