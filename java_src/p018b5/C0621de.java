package p018b5;
/* renamed from: b5.de */
/* loaded from: classes2.dex */
public final class C0621de implements InterfaceC0604ce {

    /* renamed from: a */
    public static final AbstractC0851r6<Long> f1786a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f1787b;

    /* renamed from: c */
    public static final AbstractC0851r6<Boolean> f1788c;

    /* renamed from: d */
    public static final AbstractC0851r6<Boolean> f1789d;

    /* renamed from: e */
    public static final AbstractC0851r6<Long> f1790e;

    @Override // p018b5.InterfaceC0604ce
    /* renamed from: a */
    public final boolean mo26037a() {
        return f1789d.m25430b().booleanValue();
    }

    @Override // p018b5.InterfaceC0604ce
    public final boolean zza() {
        return f1787b.m25430b().booleanValue();
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f1786a = c0800o6.m25556c("measurement.id.lifecycle.app_in_background_parameter", 0L);
        f1787b = c0800o6.m25554e("measurement.lifecycle.app_backgrounded_engagement", false);
        f1788c = c0800o6.m25554e("measurement.lifecycle.app_backgrounded_tracking", true);
        f1789d = c0800o6.m25554e("measurement.lifecycle.app_in_background_parameter", false);
        f1790e = c0800o6.m25556c("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }
}
