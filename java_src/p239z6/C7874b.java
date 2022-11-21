package p239z6;
/* renamed from: z6.b */
/* loaded from: classes2.dex */
public final class C7874b extends AbstractC7893t<Boolean> {

    /* renamed from: a */
    public static C7874b f38275a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: b */
    public String mo16b() {
        return "firebase_performance_collection_deactivated";
    }

    /* renamed from: d */
    public Boolean m54d() {
        return Boolean.FALSE;
    }

    /* renamed from: e */
    public static synchronized C7874b m53e() {
        C7874b c7874b;
        synchronized (C7874b.class) {
            if (f38275a == null) {
                f38275a = new C7874b();
            }
            c7874b = f38275a;
        }
        return c7874b;
    }
}
