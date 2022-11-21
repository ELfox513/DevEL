package p144o7;
/* renamed from: o7.p0 */
/* loaded from: classes2.dex */
public final class C5198p0 {

    /* renamed from: a */
    public static final InterfaceC5191n0 f19523a = m14160c();

    /* renamed from: b */
    public static final InterfaceC5191n0 f19524b = new C5194o0();

    /* renamed from: a */
    public static InterfaceC5191n0 m14162a() {
        return f19523a;
    }

    /* renamed from: b */
    public static InterfaceC5191n0 m14161b() {
        return f19524b;
    }

    /* renamed from: c */
    public static InterfaceC5191n0 m14160c() {
        try {
            return (InterfaceC5191n0) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
