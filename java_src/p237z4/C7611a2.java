package p237z4;
/* renamed from: z4.a2 */
/* loaded from: classes2.dex */
public final class C7611a2 {

    /* renamed from: a */
    public static final InterfaceC7734y1 f37629a = m884c();

    /* renamed from: b */
    public static final InterfaceC7734y1 f37630b = new C7738z1();

    /* renamed from: a */
    public static InterfaceC7734y1 m886a() {
        return f37629a;
    }

    /* renamed from: b */
    public static InterfaceC7734y1 m885b() {
        return f37630b;
    }

    /* renamed from: c */
    public static InterfaceC7734y1 m884c() {
        try {
            return (InterfaceC7734y1) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
