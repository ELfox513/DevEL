package p018b5;
/* renamed from: b5.v9 */
/* loaded from: classes2.dex */
public final class C0922v9 implements InterfaceC0838qa {

    /* renamed from: b */
    public static final InterfaceC0600ca f2360b = new C0888t9();

    /* renamed from: a */
    public final InterfaceC0600ca f2361a;

    /* renamed from: a */
    public static boolean m25065a(InterfaceC0583ba interfaceC0583ba) {
        return interfaceC0583ba.mo25550b() == 1;
    }

    public C0922v9() {
        InterfaceC0600ca interfaceC0600ca;
        InterfaceC0600ca[] interfaceC0600caArr = new InterfaceC0600ca[2];
        interfaceC0600caArr[0] = C0887t8.m25113c();
        try {
            interfaceC0600ca = (InterfaceC0600ca) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            interfaceC0600ca = f2360b;
        }
        interfaceC0600caArr[1] = interfaceC0600ca;
        C0905u9 c0905u9 = new C0905u9(interfaceC0600caArr);
        C0650f9.m25945f(c0905u9, "messageInfoFactory");
        this.f2361a = c0905u9;
    }

    @Override // p018b5.InterfaceC0838qa
    /* renamed from: d */
    public final <T> InterfaceC0821pa<T> mo25064d(Class<T> cls) {
        C0855ra.m25385g(cls);
        InterfaceC0583ba mo25094a = this.f2361a.mo25094a(cls);
        if (mo25094a.mo25551a()) {
            if (AbstractC0955x8.class.isAssignableFrom(cls)) {
                return C0702ia.m25795j(C0855ra.m25391b(), C0785n8.m25576b(), mo25094a.zza());
            }
            return C0702ia.m25795j(C0855ra.m25390b0(), C0785n8.m25577a(), mo25094a.zza());
        } else if (AbstractC0955x8.class.isAssignableFrom(cls)) {
            if (m25065a(mo25094a)) {
                return C0685ha.m25854F(cls, mo25094a, C0736ka.m25695b(), AbstractC0854r9.m25420d(), C0855ra.m25391b(), C0785n8.m25576b(), C0565aa.m26172b());
            }
            return C0685ha.m25854F(cls, mo25094a, C0736ka.m25695b(), AbstractC0854r9.m25420d(), C0855ra.m25391b(), null, C0565aa.m26172b());
        } else if (m25065a(mo25094a)) {
            return C0685ha.m25854F(cls, mo25094a, C0736ka.m25696a(), AbstractC0854r9.m25421c(), C0855ra.m25390b0(), C0785n8.m25577a(), C0565aa.m26173a());
        } else {
            return C0685ha.m25854F(cls, mo25094a, C0736ka.m25696a(), AbstractC0854r9.m25421c(), C0855ra.m25393a(), null, C0565aa.m26173a());
        }
    }
}
