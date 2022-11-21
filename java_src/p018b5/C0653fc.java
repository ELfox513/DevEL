package p018b5;
/* renamed from: b5.fc */
/* loaded from: classes2.dex */
public final class C0653fc implements InterfaceC0636ec {

    /* renamed from: a */
    public static final AbstractC0851r6<Boolean> f1822a;

    /* renamed from: b */
    public static final AbstractC0851r6<Boolean> f1823b;

    @Override // p018b5.InterfaceC0636ec
    public final boolean zza() {
        return f1822a.m25430b().booleanValue();
    }

    static {
        C0800o6 c0800o6 = new C0800o6(C0681h6.m25870a("com.google.android.gms.measurement"));
        f1822a = c0800o6.m25554e("measurement.androidId.delete_feature", true);
        f1823b = c0800o6.m25554e("measurement.log_androidId_enabled", false);
    }
}
