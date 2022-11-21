package p144o7;
/* renamed from: o7.z0 */
/* loaded from: classes2.dex */
public final class C5257z0 {

    /* renamed from: a */
    public static final InterfaceC5247x0 f19726a = m13745c();

    /* renamed from: b */
    public static final InterfaceC5247x0 f19727b = new C5255y0();

    /* renamed from: a */
    public static InterfaceC5247x0 m13747a() {
        return f19726a;
    }

    /* renamed from: b */
    public static InterfaceC5247x0 m13746b() {
        return f19727b;
    }

    /* renamed from: c */
    public static InterfaceC5247x0 m13745c() {
        try {
            return (InterfaceC5247x0) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
