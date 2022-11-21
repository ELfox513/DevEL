package p018b5;

import java.util.List;
/* renamed from: b5.k0 */
/* loaded from: classes2.dex */
public final class C0726k0 extends AbstractC0946x {
    @Override // p018b5.AbstractC0946x
    /* renamed from: a */
    public final InterfaceC0827q mo24903a(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        String str2;
        EnumC0777n0 enumC0777n0 = EnumC0777n0.ADD;
        int ordinal = C0935w5.m25049e(str).ordinal();
        if (ordinal != 0) {
            if (ordinal != 21) {
                if (ordinal != 59) {
                    if (ordinal != 52 && ordinal != 53) {
                        if (ordinal != 55 && ordinal != 56) {
                            switch (ordinal) {
                                case 44:
                                    C0935w5.m25046h(EnumC0777n0.MODULUS.name(), 2, list);
                                    return new C0691i(Double.valueOf(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue() % c0917v4.m25072b(list.get(1)).mo25085f().doubleValue()));
                                case 45:
                                    C0935w5.m25046h(EnumC0777n0.MULTIPLY.name(), 2, list);
                                    return new C0691i(Double.valueOf(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue() * c0917v4.m25072b(list.get(1)).mo25085f().doubleValue()));
                                case 46:
                                    C0935w5.m25046h(EnumC0777n0.NEGATE.name(), 1, list);
                                    return new C0691i(Double.valueOf(-c0917v4.m25072b(list.get(0)).mo25085f().doubleValue()));
                                default:
                                    return super.m25015b(str);
                            }
                        }
                        C0935w5.m25046h(str, 1, list);
                        return c0917v4.m25072b(list.get(0));
                    }
                    C0935w5.m25046h(str, 2, list);
                    InterfaceC0827q m25072b = c0917v4.m25072b(list.get(0));
                    c0917v4.m25072b(list.get(1));
                    return m25072b;
                }
                C0935w5.m25046h(EnumC0777n0.SUBTRACT.name(), 2, list);
                return new C0691i(Double.valueOf(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue() + new C0691i(Double.valueOf(-c0917v4.m25072b(list.get(1)).mo25085f().doubleValue())).mo25085f().doubleValue()));
            }
            C0935w5.m25046h(EnumC0777n0.DIVIDE.name(), 2, list);
            return new C0691i(Double.valueOf(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue() / c0917v4.m25072b(list.get(1)).mo25085f().doubleValue()));
        }
        C0935w5.m25046h(EnumC0777n0.ADD.name(), 2, list);
        InterfaceC0827q m25072b2 = c0917v4.m25072b(list.get(0));
        InterfaceC0827q m25072b3 = c0917v4.m25072b(list.get(1));
        if (!(m25072b2 instanceof InterfaceC0759m) && !(m25072b2 instanceof C0895u) && !(m25072b3 instanceof InterfaceC0759m) && !(m25072b3 instanceof C0895u)) {
            return new C0691i(Double.valueOf(m25072b2.mo25085f().doubleValue() + m25072b3.mo25085f().doubleValue()));
        }
        String valueOf = String.valueOf(m25072b2.mo25083j());
        String valueOf2 = String.valueOf(m25072b3.mo25083j());
        if (valueOf2.length() != 0) {
            str2 = valueOf.concat(valueOf2);
        } else {
            str2 = new String(valueOf);
        }
        return new C0895u(str2);
    }

    public C0726k0() {
        this.f2385a.add(EnumC0777n0.ADD);
        this.f2385a.add(EnumC0777n0.DIVIDE);
        this.f2385a.add(EnumC0777n0.MODULUS);
        this.f2385a.add(EnumC0777n0.MULTIPLY);
        this.f2385a.add(EnumC0777n0.NEGATE);
        this.f2385a.add(EnumC0777n0.POST_DECREMENT);
        this.f2385a.add(EnumC0777n0.POST_INCREMENT);
        this.f2385a.add(EnumC0777n0.PRE_DECREMENT);
        this.f2385a.add(EnumC0777n0.PRE_INCREMENT);
        this.f2385a.add(EnumC0777n0.SUBTRACT);
    }
}
