package p018b5;

import java.util.Iterator;
import java.util.List;
/* renamed from: b5.j0 */
/* loaded from: classes2.dex */
public final class C0709j0 extends AbstractC0946x {
    /* renamed from: c */
    public static InterfaceC0827q m25778c(InterfaceC0675h0 interfaceC0675h0, Iterator<InterfaceC0827q> it, InterfaceC0827q interfaceC0827q) {
        if (it != null) {
            while (it.hasNext()) {
                InterfaceC0827q m25071c = interfaceC0675h0.mo25818a(it.next()).m25071c((C0640f) interfaceC0827q);
                if (m25071c instanceof C0674h) {
                    C0674h c0674h = (C0674h) m25071c;
                    if ("break".equals(c0674h.m25879b())) {
                        return InterfaceC0827q.f2154c;
                    }
                    if ("return".equals(c0674h.m25879b())) {
                        return c0674h;
                    }
                }
            }
        }
        return InterfaceC0827q.f2154c;
    }

    /* renamed from: e */
    public static InterfaceC0827q m25776e(InterfaceC0675h0 interfaceC0675h0, InterfaceC0827q interfaceC0827q, InterfaceC0827q interfaceC0827q2) {
        if (interfaceC0827q instanceof Iterable) {
            return m25778c(interfaceC0675h0, ((Iterable) interfaceC0827q).iterator(), interfaceC0827q2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    @Override // p018b5.AbstractC0946x
    /* renamed from: a */
    public final InterfaceC0827q mo24903a(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        EnumC0777n0 enumC0777n0 = EnumC0777n0.ADD;
        int ordinal = C0935w5.m25049e(str).ordinal();
        if (ordinal != 65) {
            switch (ordinal) {
                case 26:
                    C0935w5.m25046h(EnumC0777n0.FOR_IN.name(), 3, list);
                    if (list.get(0) instanceof C0895u) {
                        String mo25083j = list.get(0).mo25083j();
                        return m25777d(new C0692i0(c0917v4, mo25083j), c0917v4.m25072b(list.get(1)), c0917v4.m25072b(list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_IN must be a string");
                case 27:
                    C0935w5.m25046h(EnumC0777n0.FOR_IN_CONST.name(), 3, list);
                    if (list.get(0) instanceof C0895u) {
                        String mo25083j2 = list.get(0).mo25083j();
                        return m25777d(new C0641f0(c0917v4, mo25083j2), c0917v4.m25072b(list.get(1)), c0917v4.m25072b(list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_IN_CONST must be a string");
                case 28:
                    C0935w5.m25046h(EnumC0777n0.FOR_IN_LET.name(), 3, list);
                    if (list.get(0) instanceof C0895u) {
                        String mo25083j3 = list.get(0).mo25083j();
                        return m25777d(new C0658g0(c0917v4, mo25083j3), c0917v4.m25072b(list.get(1)), c0917v4.m25072b(list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_IN_LET must be a string");
                case 29:
                    C0935w5.m25046h(EnumC0777n0.FOR_LET.name(), 4, list);
                    InterfaceC0827q m25072b = c0917v4.m25072b(list.get(0));
                    if (m25072b instanceof C0640f) {
                        C0640f c0640f = (C0640f) m25072b;
                        InterfaceC0827q interfaceC0827q = list.get(1);
                        InterfaceC0827q interfaceC0827q2 = list.get(2);
                        InterfaceC0827q m25072b2 = c0917v4.m25072b(list.get(3));
                        C0917v4 m25073a = c0917v4.m25073a();
                        for (int i = 0; i < c0640f.m26018i(); i++) {
                            String mo25083j4 = c0640f.m26017m(i).mo25083j();
                            m25073a.m25067g(mo25083j4, c0917v4.m25070d(mo25083j4));
                        }
                        while (c0917v4.m25072b(interfaceC0827q).mo25084g().booleanValue()) {
                            InterfaceC0827q m25071c = c0917v4.m25071c((C0640f) m25072b2);
                            if (m25071c instanceof C0674h) {
                                C0674h c0674h = (C0674h) m25071c;
                                if ("break".equals(c0674h.m25879b())) {
                                    return InterfaceC0827q.f2154c;
                                }
                                if ("return".equals(c0674h.m25879b())) {
                                    return c0674h;
                                }
                            }
                            C0917v4 m25073a2 = c0917v4.m25073a();
                            for (int i2 = 0; i2 < c0640f.m26018i(); i2++) {
                                String mo25083j5 = c0640f.m26017m(i2).mo25083j();
                                m25073a2.m25067g(mo25083j5, m25073a.m25070d(mo25083j5));
                            }
                            m25073a2.m25072b(interfaceC0827q2);
                            m25073a = m25073a2;
                        }
                        return InterfaceC0827q.f2154c;
                    }
                    throw new IllegalArgumentException("Initializer variables in FOR_LET must be an ArrayList");
                case 30:
                    C0935w5.m25046h(EnumC0777n0.FOR_OF.name(), 3, list);
                    if (list.get(0) instanceof C0895u) {
                        String mo25083j6 = list.get(0).mo25083j();
                        return m25776e(new C0692i0(c0917v4, mo25083j6), c0917v4.m25072b(list.get(1)), c0917v4.m25072b(list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_OF must be a string");
                case 31:
                    C0935w5.m25046h(EnumC0777n0.FOR_OF_CONST.name(), 3, list);
                    if (list.get(0) instanceof C0895u) {
                        String mo25083j7 = list.get(0).mo25083j();
                        return m25776e(new C0641f0(c0917v4, mo25083j7), c0917v4.m25072b(list.get(1)), c0917v4.m25072b(list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_OF_CONST must be a string");
                case 32:
                    C0935w5.m25046h(EnumC0777n0.FOR_OF_LET.name(), 3, list);
                    if (list.get(0) instanceof C0895u) {
                        String mo25083j8 = list.get(0).mo25083j();
                        return m25776e(new C0658g0(c0917v4, mo25083j8), c0917v4.m25072b(list.get(1)), c0917v4.m25072b(list.get(2)));
                    }
                    throw new IllegalArgumentException("Variable name in FOR_OF_LET must be a string");
                default:
                    return super.m25015b(str);
            }
        }
        C0935w5.m25046h(EnumC0777n0.WHILE.name(), 4, list);
        InterfaceC0827q interfaceC0827q3 = list.get(0);
        InterfaceC0827q interfaceC0827q4 = list.get(1);
        InterfaceC0827q m25072b3 = c0917v4.m25072b(list.get(3));
        if (c0917v4.m25072b(list.get(2)).mo25084g().booleanValue()) {
            InterfaceC0827q m25071c2 = c0917v4.m25071c((C0640f) m25072b3);
            if (m25071c2 instanceof C0674h) {
                C0674h c0674h2 = (C0674h) m25071c2;
                if ("break".equals(c0674h2.m25879b())) {
                    return InterfaceC0827q.f2154c;
                }
                if ("return".equals(c0674h2.m25879b())) {
                    return c0674h2;
                }
            }
        }
        while (c0917v4.m25072b(interfaceC0827q3).mo25084g().booleanValue()) {
            InterfaceC0827q m25071c3 = c0917v4.m25071c((C0640f) m25072b3);
            if (m25071c3 instanceof C0674h) {
                C0674h c0674h3 = (C0674h) m25071c3;
                if ("break".equals(c0674h3.m25879b())) {
                    return InterfaceC0827q.f2154c;
                }
                if ("return".equals(c0674h3.m25879b())) {
                    return c0674h3;
                }
            }
            c0917v4.m25072b(interfaceC0827q4);
        }
        return InterfaceC0827q.f2154c;
    }

    public C0709j0() {
        this.f2385a.add(EnumC0777n0.FOR_IN);
        this.f2385a.add(EnumC0777n0.FOR_IN_CONST);
        this.f2385a.add(EnumC0777n0.FOR_IN_LET);
        this.f2385a.add(EnumC0777n0.FOR_LET);
        this.f2385a.add(EnumC0777n0.FOR_OF);
        this.f2385a.add(EnumC0777n0.FOR_OF_CONST);
        this.f2385a.add(EnumC0777n0.FOR_OF_LET);
        this.f2385a.add(EnumC0777n0.WHILE);
    }

    /* renamed from: d */
    public static InterfaceC0827q m25777d(InterfaceC0675h0 interfaceC0675h0, InterfaceC0827q interfaceC0827q, InterfaceC0827q interfaceC0827q2) {
        return m25778c(interfaceC0675h0, interfaceC0827q.mo25082k(), interfaceC0827q2);
    }
}
