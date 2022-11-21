package p144o7;
/* renamed from: o7.k0 */
/* loaded from: classes2.dex */
public final class C5167k0 implements InterfaceC5158i1 {

    /* renamed from: b */
    public static final InterfaceC5205r0 f19471b = new C5168a();

    /* renamed from: a */
    public final InterfaceC5205r0 f19472a;

    /* renamed from: o7.k0$a */
    /* loaded from: classes2.dex */
    public static class C5168a implements InterfaceC5205r0 {
        @Override // p144o7.InterfaceC5205r0
        /* renamed from: a */
        public InterfaceC5201q0 mo13816a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // p144o7.InterfaceC5205r0
        public boolean isSupported(Class<?> cls) {
            return false;
        }
    }

    /* renamed from: o7.k0$b */
    /* loaded from: classes2.dex */
    public static class C5169b implements InterfaceC5205r0 {

        /* renamed from: a */
        public InterfaceC5205r0[] f19473a;

        @Override // p144o7.InterfaceC5205r0
        /* renamed from: a */
        public InterfaceC5201q0 mo13816a(Class<?> cls) {
            InterfaceC5205r0[] interfaceC5205r0Arr;
            for (InterfaceC5205r0 interfaceC5205r0 : this.f19473a) {
                if (interfaceC5205r0.isSupported(cls)) {
                    return interfaceC5205r0.mo13816a(cls);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
        }

        @Override // p144o7.InterfaceC5205r0
        public boolean isSupported(Class<?> cls) {
            for (InterfaceC5205r0 interfaceC5205r0 : this.f19473a) {
                if (interfaceC5205r0.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        public C5169b(InterfaceC5205r0... interfaceC5205r0Arr) {
            this.f19473a = interfaceC5205r0Arr;
        }
    }

    public C5167k0() {
        this(m14254b());
    }

    /* renamed from: d */
    public static boolean m14252d(InterfaceC5201q0 interfaceC5201q0) {
        return interfaceC5201q0.mo14140c() == EnumC5119c1.PROTO2;
    }

    public C5167k0(InterfaceC5205r0 interfaceC5205r0) {
        this.f19472a = (InterfaceC5205r0) C5102a0.m14658b(interfaceC5205r0, "messageInfoFactory");
    }

    /* renamed from: b */
    public static InterfaceC5205r0 m14254b() {
        return new C5169b(C5246x.m13815b(), m14253c());
    }

    /* renamed from: c */
    public static InterfaceC5205r0 m14253c() {
        try {
            return (InterfaceC5205r0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return f19471b;
        }
    }

    /* renamed from: e */
    public static <T> InterfaceC5150h1<T> m14251e(Class<T> cls, InterfaceC5201q0 interfaceC5201q0) {
        if (AbstractC5248y.class.isAssignableFrom(cls)) {
            if (m14252d(interfaceC5201q0)) {
                return C5241v0.m13928K(cls, interfaceC5201q0, C5257z0.m13746b(), AbstractC5154i0.m14486b(), C5162j1.m14404M(), C5209s.m14083b(), C5198p0.m14161b());
            }
            return C5241v0.m13928K(cls, interfaceC5201q0, C5257z0.m13746b(), AbstractC5154i0.m14486b(), C5162j1.m14404M(), null, C5198p0.m14161b());
        } else if (m14252d(interfaceC5201q0)) {
            return C5241v0.m13928K(cls, interfaceC5201q0, C5257z0.m13747a(), AbstractC5154i0.m14487a(), C5162j1.m14409H(), C5209s.m14084a(), C5198p0.m14162a());
        } else {
            return C5241v0.m13928K(cls, interfaceC5201q0, C5257z0.m13747a(), AbstractC5154i0.m14487a(), C5162j1.m14408I(), null, C5198p0.m14162a());
        }
    }

    @Override // p144o7.InterfaceC5158i1
    /* renamed from: a */
    public <T> InterfaceC5150h1<T> mo14255a(Class<T> cls) {
        C5162j1.m14407J(cls);
        InterfaceC5201q0 mo13816a = this.f19472a.mo13816a(cls);
        if (mo13816a.mo14142a()) {
            if (AbstractC5248y.class.isAssignableFrom(cls)) {
                return C5245w0.m13819i(C5162j1.m14404M(), C5209s.m14083b(), mo13816a.mo14141b());
            }
            return C5245w0.m13819i(C5162j1.m14409H(), C5209s.m14084a(), mo13816a.mo14141b());
        }
        return m14251e(cls, mo13816a);
    }
}
