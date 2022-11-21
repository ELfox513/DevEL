package p237z4;
/* renamed from: z4.o1 */
/* loaded from: classes2.dex */
public final class C7688o1 {

    /* renamed from: a */
    public static final InterfaceC7678m1 f37838a = m624c();

    /* renamed from: b */
    public static final InterfaceC7678m1 f37839b = new C7683n1();

    /* renamed from: a */
    public static InterfaceC7678m1 m626a() {
        return f37838a;
    }

    /* renamed from: b */
    public static InterfaceC7678m1 m625b() {
        return f37839b;
    }

    /* renamed from: c */
    public static InterfaceC7678m1 m624c() {
        try {
            return (InterfaceC7678m1) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
