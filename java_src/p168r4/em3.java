package p168r4;
/* renamed from: r4.em3 */
/* loaded from: classes2.dex */
public final class em3 {

    /* renamed from: a */
    public static final cm3<?> f23086a = new dm3();

    /* renamed from: b */
    public static final cm3<?> f23087b;

    /* renamed from: a */
    public static cm3<?> m11708a() {
        return f23086a;
    }

    /* renamed from: b */
    public static cm3<?> m11707b() {
        cm3<?> cm3Var = f23087b;
        if (cm3Var != null) {
            return cm3Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static {
        cm3<?> cm3Var;
        try {
            cm3Var = (cm3) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            cm3Var = null;
        }
        f23087b = cm3Var;
    }
}
