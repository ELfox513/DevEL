package p237z4;
/* renamed from: z4.a0 */
/* loaded from: classes2.dex */
public final class C7609a0 {

    /* renamed from: a */
    public static final Class<?> f37628a = m889a();

    /* renamed from: a */
    public static Class<?> m889a() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static C7614b0 m888b() {
        if (f37628a != null) {
            try {
                return m887c("getEmptyRegistry");
            } catch (Exception unused) {
            }
        }
        return C7614b0.f37634c;
    }

    /* renamed from: c */
    public static final C7614b0 m887c(String str) {
        return (C7614b0) f37628a.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
    }
}
