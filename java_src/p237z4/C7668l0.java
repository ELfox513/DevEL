package p237z4;

import p237z4.AbstractC7673m0;
/* renamed from: z4.l0 */
/* loaded from: classes2.dex */
public final class C7668l0 implements InterfaceC7698q1 {

    /* renamed from: a */
    public static final C7668l0 f37783a = new C7668l0();

    /* renamed from: c */
    public static C7668l0 m672c() {
        return f37783a;
    }

    @Override // p237z4.InterfaceC7698q1
    /* renamed from: a */
    public final boolean mo617a(Class<?> cls) {
        return AbstractC7673m0.class.isAssignableFrom(cls);
    }

    @Override // p237z4.InterfaceC7698q1
    /* renamed from: b */
    public final InterfaceC7693p1 mo616b(Class<?> cls) {
        String str;
        String str2;
        if (!AbstractC7673m0.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            if (name.length() != 0) {
                str2 = "Unsupported message type: ".concat(name);
            } else {
                str2 = new String("Unsupported message type: ");
            }
            throw new IllegalArgumentException(str2);
        }
        try {
            return (InterfaceC7693p1) AbstractC7673m0.m655s(cls.asSubclass(AbstractC7673m0.class)).mo662l(AbstractC7673m0.C7677d.f37814c, null, null);
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
