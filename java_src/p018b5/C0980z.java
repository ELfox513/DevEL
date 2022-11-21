package p018b5;

import java.util.List;
/* renamed from: b5.z */
/* loaded from: classes2.dex */
public final class C0980z extends AbstractC0946x {
    /* renamed from: d */
    public static boolean m24901d(InterfaceC0827q interfaceC0827q, InterfaceC0827q interfaceC0827q2) {
        if (interfaceC0827q instanceof InterfaceC0759m) {
            interfaceC0827q = new C0895u(interfaceC0827q.mo25083j());
        }
        if (interfaceC0827q2 instanceof InterfaceC0759m) {
            interfaceC0827q2 = new C0895u(interfaceC0827q2.mo25083j());
        }
        if ((interfaceC0827q instanceof C0895u) && (interfaceC0827q2 instanceof C0895u)) {
            if (interfaceC0827q.mo25083j().compareTo(interfaceC0827q2.mo25083j()) < 0) {
                return true;
            }
            return false;
        }
        double doubleValue = interfaceC0827q.mo25085f().doubleValue();
        double doubleValue2 = interfaceC0827q2.mo25085f().doubleValue();
        if (!Double.isNaN(doubleValue) && !Double.isNaN(doubleValue2) && Double.compare(doubleValue, doubleValue2) < 0) {
            return true;
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m24900e(InterfaceC0827q interfaceC0827q, InterfaceC0827q interfaceC0827q2) {
        if (interfaceC0827q instanceof InterfaceC0759m) {
            interfaceC0827q = new C0895u(interfaceC0827q.mo25083j());
        }
        if (interfaceC0827q2 instanceof InterfaceC0759m) {
            interfaceC0827q2 = new C0895u(interfaceC0827q2.mo25083j());
        }
        if (((!(interfaceC0827q instanceof C0895u) || !(interfaceC0827q2 instanceof C0895u)) && (Double.isNaN(interfaceC0827q.mo25085f().doubleValue()) || Double.isNaN(interfaceC0827q2.mo25085f().doubleValue()))) || m24901d(interfaceC0827q2, interfaceC0827q)) {
            return false;
        }
        return true;
    }

    public C0980z() {
        this.f2385a.add(EnumC0777n0.EQUALS);
        this.f2385a.add(EnumC0777n0.GREATER_THAN);
        this.f2385a.add(EnumC0777n0.GREATER_THAN_EQUALS);
        this.f2385a.add(EnumC0777n0.IDENTITY_EQUALS);
        this.f2385a.add(EnumC0777n0.IDENTITY_NOT_EQUALS);
        this.f2385a.add(EnumC0777n0.LESS_THAN);
        this.f2385a.add(EnumC0777n0.LESS_THAN_EQUALS);
        this.f2385a.add(EnumC0777n0.NOT_EQUALS);
    }

    /* renamed from: c */
    public static boolean m24902c(InterfaceC0827q interfaceC0827q, InterfaceC0827q interfaceC0827q2) {
        if (interfaceC0827q.getClass().equals(interfaceC0827q2.getClass())) {
            if ((interfaceC0827q instanceof C0912v) || (interfaceC0827q instanceof C0793o)) {
                return true;
            }
            if (interfaceC0827q instanceof C0691i) {
                if (Double.isNaN(interfaceC0827q.mo25085f().doubleValue()) || Double.isNaN(interfaceC0827q2.mo25085f().doubleValue())) {
                    return false;
                }
                return interfaceC0827q.mo25085f().equals(interfaceC0827q2.mo25085f());
            } else if (interfaceC0827q instanceof C0895u) {
                return interfaceC0827q.mo25083j().equals(interfaceC0827q2.mo25083j());
            } else {
                if (interfaceC0827q instanceof C0657g) {
                    return interfaceC0827q.mo25084g().equals(interfaceC0827q2.mo25084g());
                }
                if (interfaceC0827q != interfaceC0827q2) {
                    return false;
                }
                return true;
            }
        } else if (((interfaceC0827q instanceof C0912v) || (interfaceC0827q instanceof C0793o)) && ((interfaceC0827q2 instanceof C0912v) || (interfaceC0827q2 instanceof C0793o))) {
            return true;
        } else {
            boolean z = interfaceC0827q instanceof C0691i;
            if (z && (interfaceC0827q2 instanceof C0895u)) {
                return m24902c(interfaceC0827q, new C0691i(interfaceC0827q2.mo25085f()));
            }
            boolean z2 = interfaceC0827q instanceof C0895u;
            if (z2 && (interfaceC0827q2 instanceof C0691i)) {
                return m24902c(new C0691i(interfaceC0827q.mo25085f()), interfaceC0827q2);
            }
            if (interfaceC0827q instanceof C0657g) {
                return m24902c(new C0691i(interfaceC0827q.mo25085f()), interfaceC0827q2);
            }
            if (interfaceC0827q2 instanceof C0657g) {
                return m24902c(interfaceC0827q, new C0691i(interfaceC0827q2.mo25085f()));
            }
            if ((!z2 && !z) || !(interfaceC0827q2 instanceof InterfaceC0759m)) {
                if (!(interfaceC0827q instanceof InterfaceC0759m) || (!(interfaceC0827q2 instanceof C0895u) && !(interfaceC0827q2 instanceof C0691i))) {
                    return false;
                }
                return m24902c(new C0895u(interfaceC0827q.mo25083j()), interfaceC0827q2);
            }
            return m24902c(interfaceC0827q, new C0895u(interfaceC0827q2.mo25083j()));
        }
    }

    @Override // p018b5.AbstractC0946x
    /* renamed from: a */
    public final InterfaceC0827q mo24903a(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        boolean m24902c;
        boolean m24902c2;
        C0935w5.m25046h(C0935w5.m25049e(str).name(), 2, list);
        InterfaceC0827q m25072b = c0917v4.m25072b(list.get(0));
        InterfaceC0827q m25072b2 = c0917v4.m25072b(list.get(1));
        int ordinal = C0935w5.m25049e(str).ordinal();
        if (ordinal != 23) {
            if (ordinal != 48) {
                if (ordinal != 42) {
                    if (ordinal != 43) {
                        switch (ordinal) {
                            case 37:
                                m24902c = m24901d(m25072b2, m25072b);
                                break;
                            case 38:
                                m24902c = m24900e(m25072b2, m25072b);
                                break;
                            case 39:
                                m24902c = C0935w5.m25042l(m25072b, m25072b2);
                                break;
                            case 40:
                                m24902c2 = C0935w5.m25042l(m25072b, m25072b2);
                                break;
                            default:
                                return super.m25015b(str);
                        }
                    } else {
                        m24902c = m24900e(m25072b, m25072b2);
                    }
                } else {
                    m24902c = m24901d(m25072b, m25072b2);
                }
            } else {
                m24902c2 = m24902c(m25072b, m25072b2);
            }
            m24902c = !m24902c2;
        } else {
            m24902c = m24902c(m25072b, m25072b2);
        }
        if (m24902c) {
            return InterfaceC0827q.f2159i;
        }
        return InterfaceC0827q.f2160j;
    }
}
