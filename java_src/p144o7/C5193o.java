package p144o7;
/* renamed from: o7.o */
/* loaded from: classes2.dex */
public final class C5193o {

    /* renamed from: a */
    public static final Class<?> f19516a = m14177c();

    /* renamed from: c */
    public static Class<?> m14177c() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: a */
    public static C5196p m14179a() {
        C5196p m14178b = m14178b("getEmptyRegistry");
        if (m14178b == null) {
            return C5196p.f19519d;
        }
        return m14178b;
    }

    /* renamed from: b */
    public static final C5196p m14178b(String str) {
        Class<?> cls = f19516a;
        if (cls == null) {
            return null;
        }
        try {
            return (C5196p) cls.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
