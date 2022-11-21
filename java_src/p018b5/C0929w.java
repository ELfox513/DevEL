package p018b5;

import java.util.List;
/* renamed from: b5.w */
/* loaded from: classes2.dex */
public final class C0929w extends AbstractC0946x {
    @Override // p018b5.AbstractC0946x
    /* renamed from: a */
    public final InterfaceC0827q mo24903a(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        EnumC0777n0 enumC0777n0 = EnumC0777n0.ADD;
        switch (C0935w5.m25049e(str).ordinal()) {
            case 4:
                C0935w5.m25046h(EnumC0777n0.BITWISE_AND.name(), 2, list);
                return new C0691i(Double.valueOf(C0935w5.m25052b(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue()) & C0935w5.m25052b(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue())));
            case 5:
                C0935w5.m25046h(EnumC0777n0.BITWISE_LEFT_SHIFT.name(), 2, list);
                return new C0691i(Double.valueOf(C0935w5.m25052b(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue()) << ((int) (C0935w5.m25050d(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue()) & 31))));
            case 6:
                C0935w5.m25046h(EnumC0777n0.BITWISE_NOT.name(), 1, list);
                return new C0691i(Double.valueOf(C0935w5.m25052b(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue()) ^ (-1)));
            case 7:
                C0935w5.m25046h(EnumC0777n0.BITWISE_OR.name(), 2, list);
                return new C0691i(Double.valueOf(C0935w5.m25052b(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue()) | C0935w5.m25052b(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue())));
            case 8:
                C0935w5.m25046h(EnumC0777n0.BITWISE_RIGHT_SHIFT.name(), 2, list);
                return new C0691i(Double.valueOf(C0935w5.m25052b(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue()) >> ((int) (C0935w5.m25050d(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue()) & 31))));
            case 9:
                C0935w5.m25046h(EnumC0777n0.BITWISE_UNSIGNED_RIGHT_SHIFT.name(), 2, list);
                return new C0691i(Double.valueOf(C0935w5.m25050d(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue()) >>> ((int) (C0935w5.m25050d(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue()) & 31))));
            case 10:
                C0935w5.m25046h(EnumC0777n0.BITWISE_XOR.name(), 2, list);
                return new C0691i(Double.valueOf(C0935w5.m25052b(c0917v4.m25072b(list.get(0)).mo25085f().doubleValue()) ^ C0935w5.m25052b(c0917v4.m25072b(list.get(1)).mo25085f().doubleValue())));
            default:
                return super.m25015b(str);
        }
    }

    public C0929w() {
        this.f2385a.add(EnumC0777n0.BITWISE_AND);
        this.f2385a.add(EnumC0777n0.BITWISE_LEFT_SHIFT);
        this.f2385a.add(EnumC0777n0.BITWISE_NOT);
        this.f2385a.add(EnumC0777n0.BITWISE_OR);
        this.f2385a.add(EnumC0777n0.BITWISE_RIGHT_SHIFT);
        this.f2385a.add(EnumC0777n0.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.f2385a.add(EnumC0777n0.BITWISE_XOR);
    }
}
