package p018b5;
/* renamed from: b5.t8 */
/* loaded from: classes2.dex */
public final class C0887t8 implements InterfaceC0600ca {

    /* renamed from: a */
    public static final C0887t8 f2317a = new C0887t8();

    /* renamed from: c */
    public static C0887t8 m25113c() {
        return f2317a;
    }

    @Override // p018b5.InterfaceC0600ca
    /* renamed from: b */
    public final boolean mo25093b(Class<?> cls) {
        return AbstractC0955x8.class.isAssignableFrom(cls);
    }

    @Override // p018b5.InterfaceC0600ca
    /* renamed from: a */
    public final InterfaceC0583ba mo25094a(Class<?> cls) {
        String str;
        String str2;
        if (!AbstractC0955x8.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            if (name.length() != 0) {
                str2 = "Unsupported message type: ".concat(name);
            } else {
                str2 = new String("Unsupported message type: ");
            }
            throw new IllegalArgumentException(str2);
        }
        try {
            return (InterfaceC0583ba) AbstractC0955x8.m24977n(cls.asSubclass(AbstractC0955x8.class)).mo24877r(3, null, null);
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
