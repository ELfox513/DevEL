package p144o7;
/* renamed from: o7.s */
/* loaded from: classes2.dex */
public final class C5209s {

    /* renamed from: a */
    public static final AbstractC5200q<?> f19538a = new C5203r();

    /* renamed from: b */
    public static final AbstractC5200q<?> f19539b = m14082c();

    /* renamed from: b */
    public static AbstractC5200q<?> m14083b() {
        return f19538a;
    }

    /* renamed from: a */
    public static AbstractC5200q<?> m14084a() {
        AbstractC5200q<?> abstractC5200q = f19539b;
        if (abstractC5200q != null) {
            return abstractC5200q;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: c */
    public static AbstractC5200q<?> m14082c() {
        try {
            return (AbstractC5200q) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
