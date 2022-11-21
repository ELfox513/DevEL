package p144o7;
/* renamed from: o7.x */
/* loaded from: classes2.dex */
public class C5246x implements InterfaceC5205r0 {

    /* renamed from: a */
    public static final C5246x f19703a = new C5246x();

    /* renamed from: b */
    public static C5246x m13815b() {
        return f19703a;
    }

    @Override // p144o7.InterfaceC5205r0
    public boolean isSupported(Class<?> cls) {
        return AbstractC5248y.class.isAssignableFrom(cls);
    }

    @Override // p144o7.InterfaceC5205r0
    /* renamed from: a */
    public InterfaceC5201q0 mo13816a(Class<?> cls) {
        if (AbstractC5248y.class.isAssignableFrom(cls)) {
            try {
                return (InterfaceC5201q0) AbstractC5248y.m13810E(cls.asSubclass(AbstractC5248y.class)).m13792x();
            } catch (Exception e) {
                throw new RuntimeException("Unable to get message info for " + cls.getName(), e);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: " + cls.getName());
    }
}
