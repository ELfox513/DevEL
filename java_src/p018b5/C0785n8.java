package p018b5;
/* renamed from: b5.n8 */
/* loaded from: classes2.dex */
public final class C0785n8 {

    /* renamed from: a */
    public static final AbstractC0751l8<?> f2057a = new C0768m8();

    /* renamed from: b */
    public static final AbstractC0751l8<?> f2058b;

    /* renamed from: a */
    public static AbstractC0751l8<?> m25577a() {
        AbstractC0751l8<?> abstractC0751l8 = f2058b;
        if (abstractC0751l8 != null) {
            return abstractC0751l8;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: b */
    public static AbstractC0751l8<?> m25576b() {
        return f2057a;
    }

    static {
        AbstractC0751l8<?> abstractC0751l8;
        try {
            abstractC0751l8 = (AbstractC0751l8) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            abstractC0751l8 = null;
        }
        f2058b = abstractC0751l8;
    }
}
