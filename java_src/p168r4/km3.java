package p168r4;
/* renamed from: r4.km3 */
/* loaded from: classes2.dex */
public final class km3 implements yn3 {

    /* renamed from: a */
    public static final km3 f26483a = new km3();

    /* renamed from: c */
    public static km3 m10003c() {
        return f26483a;
    }

    @Override // p168r4.yn3
    /* renamed from: a */
    public final boolean mo4625a(Class<?> cls) {
        return pm3.class.isAssignableFrom(cls);
    }

    @Override // p168r4.yn3
    /* renamed from: b */
    public final xn3 mo4624b(Class<?> cls) {
        String str;
        String str2;
        if (!pm3.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            if (name.length() != 0) {
                str2 = "Unsupported message type: ".concat(name);
            } else {
                str2 = new String("Unsupported message type: ");
            }
            throw new IllegalArgumentException(str2);
        }
        try {
            return (xn3) pm3.m8249y(cls.asSubclass(pm3.class)).mo4087B(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            if (name2.length() != 0) {
                str = "Unable to get message info for ".concat(name2);
            } else {
                str = new String("Unable to get message info for ");
            }
            throw new RuntimeException(str, e);
        }
    }
}
