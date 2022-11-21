package p237z4;
/* renamed from: z4.e0 */
/* loaded from: classes2.dex */
public final class C7633e0 {

    /* renamed from: a */
    public static final AbstractC7619c0<?> f37673a = new C7624d0();

    /* renamed from: b */
    public static final AbstractC7619c0<?> f37674b = m814a();

    /* renamed from: b */
    public static AbstractC7619c0<?> m813b() {
        return f37673a;
    }

    /* renamed from: a */
    public static AbstractC7619c0<?> m814a() {
        try {
            return (AbstractC7619c0) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: c */
    public static AbstractC7619c0<?> m812c() {
        AbstractC7619c0<?> abstractC7619c0 = f37674b;
        if (abstractC7619c0 != null) {
            return abstractC7619c0;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
