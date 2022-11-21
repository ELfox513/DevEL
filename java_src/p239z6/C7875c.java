package p239z6;
/* renamed from: z6.c */
/* loaded from: classes2.dex */
public final class C7875c extends AbstractC7893t<Boolean> {

    /* renamed from: a */
    public static C7875c f38276a;

    @Override // p239z6.AbstractC7893t
    /* renamed from: a */
    public String mo17a() {
        return "isEnabled";
    }

    @Override // p239z6.AbstractC7893t
    /* renamed from: b */
    public String mo16b() {
        return "firebase_performance_collection_enabled";
    }

    /* renamed from: d */
    public static synchronized C7875c m52d() {
        C7875c c7875c;
        synchronized (C7875c.class) {
            if (f38276a == null) {
                f38276a = new C7875c();
            }
            c7875c = f38276a;
        }
        return c7875c;
    }
}
