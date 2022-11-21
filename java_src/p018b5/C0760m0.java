package p018b5;

import java.util.List;
/* renamed from: b5.m0 */
/* loaded from: classes2.dex */
public final class C0760m0 extends AbstractC0946x {
    @Override // p018b5.AbstractC0946x
    /* renamed from: a */
    public final InterfaceC0827q mo24903a(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        String str2;
        EnumC0777n0 enumC0777n0 = EnumC0777n0.ADD;
        int ordinal = C0935w5.m25049e(str).ordinal();
        int i = 0;
        if (ordinal != 3) {
            if (ordinal != 14) {
                if (ordinal != 24) {
                    if (ordinal != 33) {
                        if (ordinal != 49) {
                            if (ordinal != 58) {
                                if (ordinal != 17) {
                                    if (ordinal != 18) {
                                        if (ordinal != 35 && ordinal != 36) {
                                            switch (ordinal) {
                                                case 62:
                                                    C0935w5.m25046h(EnumC0777n0.TYPEOF.name(), 1, list);
                                                    InterfaceC0827q m25072b = c0917v4.m25072b(list.get(0));
                                                    if (m25072b instanceof C0912v) {
                                                        str2 = "undefined";
                                                    } else if (m25072b instanceof C0657g) {
                                                        str2 = "boolean";
                                                    } else if (m25072b instanceof C0691i) {
                                                        str2 = "number";
                                                    } else if (m25072b instanceof C0895u) {
                                                        str2 = "string";
                                                    } else if (m25072b instanceof C0810p) {
                                                        str2 = "function";
                                                    } else if (!(m25072b instanceof C0844r) && !(m25072b instanceof C0674h)) {
                                                        str2 = "object";
                                                    } else {
                                                        throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", m25072b));
                                                    }
                                                    return new C0895u(str2);
                                                case 63:
                                                    C0935w5.m25046h(EnumC0777n0.UNDEFINED.name(), 0, list);
                                                    return InterfaceC0827q.f2154c;
                                                case 64:
                                                    C0935w5.m25045i(EnumC0777n0.VAR.name(), 1, list);
                                                    for (InterfaceC0827q interfaceC0827q : list) {
                                                        InterfaceC0827q m25072b2 = c0917v4.m25072b(interfaceC0827q);
                                                        if (m25072b2 instanceof C0895u) {
                                                            c0917v4.m25069e(m25072b2.mo25083j(), InterfaceC0827q.f2154c);
                                                        } else {
                                                            throw new IllegalArgumentException(String.format("Expected string for var name. got %s", m25072b2.getClass().getCanonicalName()));
                                                        }
                                                    }
                                                    return InterfaceC0827q.f2154c;
                                                default:
                                                    return super.m25015b(str);
                                            }
                                        }
                                        C0935w5.m25046h(EnumC0777n0.GET_PROPERTY.name(), 2, list);
                                        InterfaceC0827q m25072b3 = c0917v4.m25072b(list.get(0));
                                        InterfaceC0827q m25072b4 = c0917v4.m25072b(list.get(1));
                                        if ((m25072b3 instanceof C0640f) && C0935w5.m25043k(m25072b4)) {
                                            return ((C0640f) m25072b3).m26017m(m25072b4.mo25085f().intValue());
                                        }
                                        if (m25072b3 instanceof InterfaceC0759m) {
                                            return ((InterfaceC0759m) m25072b3).mo25608s(m25072b4.mo25083j());
                                        }
                                        if (m25072b3 instanceof C0895u) {
                                            if ("length".equals(m25072b4.mo25083j())) {
                                                return new C0691i(Double.valueOf(m25072b3.mo25083j().length()));
                                            }
                                            if (C0935w5.m25043k(m25072b4) && m25072b4.mo25085f().doubleValue() < m25072b3.mo25083j().length()) {
                                                return new C0895u(String.valueOf(m25072b3.mo25083j().charAt(m25072b4.mo25085f().intValue())));
                                            }
                                        }
                                        return InterfaceC0827q.f2154c;
                                    } else if (list.isEmpty()) {
                                        return new C0776n();
                                    } else {
                                        if (list.size() % 2 == 0) {
                                            C0776n c0776n = new C0776n();
                                            while (i < list.size() - 1) {
                                                InterfaceC0827q m25072b5 = c0917v4.m25072b(list.get(i));
                                                InterfaceC0827q m25072b6 = c0917v4.m25072b(list.get(i + 1));
                                                if (!(m25072b5 instanceof C0674h) && !(m25072b6 instanceof C0674h)) {
                                                    c0776n.mo25606u(m25072b5.mo25083j(), m25072b6);
                                                    i += 2;
                                                } else {
                                                    throw new IllegalStateException("Failed to evaluate map entry");
                                                }
                                            }
                                            return c0776n;
                                        }
                                        throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(list.size())));
                                    }
                                } else if (list.isEmpty()) {
                                    return new C0640f();
                                } else {
                                    C0640f c0640f = new C0640f();
                                    for (InterfaceC0827q interfaceC0827q2 : list) {
                                        InterfaceC0827q m25072b7 = c0917v4.m25072b(interfaceC0827q2);
                                        if (!(m25072b7 instanceof C0674h)) {
                                            c0640f.m26010y(i, m25072b7);
                                            i++;
                                        } else {
                                            throw new IllegalStateException("Failed to evaluate array element");
                                        }
                                    }
                                    return c0640f;
                                }
                            }
                            C0935w5.m25046h(EnumC0777n0.SET_PROPERTY.name(), 3, list);
                            InterfaceC0827q m25072b8 = c0917v4.m25072b(list.get(0));
                            InterfaceC0827q m25072b9 = c0917v4.m25072b(list.get(1));
                            InterfaceC0827q m25072b10 = c0917v4.m25072b(list.get(2));
                            if (m25072b8 != InterfaceC0827q.f2154c && m25072b8 != InterfaceC0827q.f2155e) {
                                if ((m25072b8 instanceof C0640f) && (m25072b9 instanceof C0691i)) {
                                    ((C0640f) m25072b8).m26010y(m25072b9.mo25085f().intValue(), m25072b10);
                                } else if (m25072b8 instanceof InterfaceC0759m) {
                                    ((InterfaceC0759m) m25072b8).mo25606u(m25072b9.mo25083j(), m25072b10);
                                }
                                return m25072b10;
                            }
                            throw new IllegalStateException(String.format("Can't set property %s of %s", m25072b9.mo25083j(), m25072b8.mo25083j()));
                        }
                        C0935w5.m25046h(EnumC0777n0.NULL.name(), 0, list);
                        return InterfaceC0827q.f2155e;
                    }
                    C0935w5.m25046h(EnumC0777n0.GET.name(), 1, list);
                    InterfaceC0827q m25072b11 = c0917v4.m25072b(list.get(0));
                    if (m25072b11 instanceof C0895u) {
                        return c0917v4.m25070d(m25072b11.mo25083j());
                    }
                    throw new IllegalArgumentException(String.format("Expected string for get var. got %s", m25072b11.getClass().getCanonicalName()));
                }
                C0935w5.m25045i(EnumC0777n0.EXPRESSION_LIST.name(), 1, list);
                InterfaceC0827q interfaceC0827q3 = InterfaceC0827q.f2154c;
                while (i < list.size()) {
                    interfaceC0827q3 = c0917v4.m25072b(list.get(i));
                    if (!(interfaceC0827q3 instanceof C0674h)) {
                        i++;
                    } else {
                        throw new IllegalStateException("ControlValue cannot be in an expression list");
                    }
                }
                return interfaceC0827q3;
            }
            C0935w5.m25045i(EnumC0777n0.CONST.name(), 2, list);
            if (list.size() % 2 == 0) {
                for (int i2 = 0; i2 < list.size() - 1; i2 += 2) {
                    InterfaceC0827q m25072b12 = c0917v4.m25072b(list.get(i2));
                    if (m25072b12 instanceof C0895u) {
                        c0917v4.m25068f(m25072b12.mo25083j(), c0917v4.m25072b(list.get(i2 + 1)));
                    } else {
                        throw new IllegalArgumentException(String.format("Expected string for const name. got %s", m25072b12.getClass().getCanonicalName()));
                    }
                }
                return InterfaceC0827q.f2154c;
            }
            throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(list.size())));
        }
        C0935w5.m25046h(EnumC0777n0.ASSIGN.name(), 2, list);
        InterfaceC0827q m25072b13 = c0917v4.m25072b(list.get(0));
        if (m25072b13 instanceof C0895u) {
            if (c0917v4.m25066h(m25072b13.mo25083j())) {
                InterfaceC0827q m25072b14 = c0917v4.m25072b(list.get(1));
                c0917v4.m25067g(m25072b13.mo25083j(), m25072b14);
                return m25072b14;
            }
            throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", m25072b13.mo25083j()));
        }
        throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", m25072b13.getClass().getCanonicalName()));
    }

    public C0760m0() {
        this.f2385a.add(EnumC0777n0.ASSIGN);
        this.f2385a.add(EnumC0777n0.CONST);
        this.f2385a.add(EnumC0777n0.CREATE_ARRAY);
        this.f2385a.add(EnumC0777n0.CREATE_OBJECT);
        this.f2385a.add(EnumC0777n0.EXPRESSION_LIST);
        this.f2385a.add(EnumC0777n0.GET);
        this.f2385a.add(EnumC0777n0.GET_INDEX);
        this.f2385a.add(EnumC0777n0.GET_PROPERTY);
        this.f2385a.add(EnumC0777n0.NULL);
        this.f2385a.add(EnumC0777n0.SET_PROPERTY);
        this.f2385a.add(EnumC0777n0.TYPEOF);
        this.f2385a.add(EnumC0777n0.UNDEFINED);
        this.f2385a.add(EnumC0777n0.VAR);
    }
}
