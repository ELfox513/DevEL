package p018b5;
/* renamed from: b5.u9 */
/* loaded from: classes2.dex */
public final class C0905u9 implements InterfaceC0600ca {

    /* renamed from: a */
    public final InterfaceC0600ca[] f2339a;

    public C0905u9(InterfaceC0600ca... interfaceC0600caArr) {
        this.f2339a = interfaceC0600caArr;
    }

    @Override // p018b5.InterfaceC0600ca
    /* renamed from: b */
    public final boolean mo25093b(Class<?> cls) {
        InterfaceC0600ca[] interfaceC0600caArr = this.f2339a;
        for (int i = 0; i < 2; i++) {
            if (interfaceC0600caArr[i].mo25093b(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // p018b5.InterfaceC0600ca
    /* renamed from: a */
    public final InterfaceC0583ba mo25094a(Class<?> cls) {
        String str;
        InterfaceC0600ca[] interfaceC0600caArr = this.f2339a;
        for (int i = 0; i < 2; i++) {
            InterfaceC0600ca interfaceC0600ca = interfaceC0600caArr[i];
            if (interfaceC0600ca.mo25093b(cls)) {
                return interfaceC0600ca.mo25094a(cls);
            }
        }
        String name = cls.getName();
        if (name.length() != 0) {
            str = "No factory is available for message type: ".concat(name);
        } else {
            str = new String("No factory is available for message type: ");
        }
        throw new UnsupportedOperationException(str);
    }
}
