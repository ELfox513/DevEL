package p129n1;

import p015b2.C0438g;
import p226y1.C7402c;
import p226y1.InterfaceC7403d;
/* renamed from: n1.r */
/* loaded from: classes.dex */
public final class C4716r {
    /* renamed from: b */
    public static C4717s m15624b(C4717s c4717s, C4717s c4717s2) {
        if (c4717s == c4717s2) {
            return c4717s;
        }
        int m15613J = c4717s.m15613J();
        C4717s c4717s3 = null;
        if (c4717s2.m15613J() == m15613J) {
            for (int i = 0; i < m15613J; i++) {
                InterfaceC7403d m15612K = c4717s.m15612K(i);
                InterfaceC7403d m15622d = m15622d(m15612K, c4717s2.m15612K(i));
                if (m15622d != m15612K) {
                    if (c4717s3 == null) {
                        c4717s3 = c4717s.mo15607z();
                    }
                    if (m15622d == null) {
                        c4717s3.m15611L(i);
                    } else {
                        c4717s3.mo15616F(i, m15622d);
                    }
                }
            }
            if (c4717s3 == null) {
                return c4717s;
            }
            c4717s3.setImmutable();
            return c4717s3;
        }
        throw new C4729w("mismatched maxLocals values");
    }

    /* renamed from: c */
    public static C4707k m15623c(C4707k c4707k, C4707k c4707k2) {
        if (c4707k == c4707k2) {
            return c4707k;
        }
        int size = c4707k.size();
        C4707k c4707k3 = null;
        if (c4707k2.size() == size) {
            for (int i = 0; i < size; i++) {
                InterfaceC7403d m15693E = c4707k.m15693E(i);
                InterfaceC7403d m15693E2 = c4707k2.m15693E(i);
                InterfaceC7403d m15622d = m15622d(m15693E, m15693E2);
                if (m15622d != m15693E) {
                    if (c4707k3 == null) {
                        c4707k3 = c4707k.m15696B();
                    }
                    if (m15622d != null) {
                        try {
                            c4707k3.m15684z(i, m15622d);
                        } catch (C4729w e) {
                            e.m16013a("...while merging stack[" + C0438g.m26478g(i) + "]");
                            throw e;
                        }
                    } else {
                        throw new C4729w("incompatible: " + m15693E + ", " + m15693E2);
                    }
                    e.m16013a("...while merging stack[" + C0438g.m26478g(i) + "]");
                    throw e;
                }
            }
            if (c4707k3 == null) {
                return c4707k;
            }
            c4707k3.setImmutable();
            return c4707k3;
        }
        throw new C4729w("mismatched stack depths");
    }

    /* renamed from: d */
    public static InterfaceC7403d m15622d(InterfaceC7403d interfaceC7403d, InterfaceC7403d interfaceC7403d2) {
        if (interfaceC7403d != null && !interfaceC7403d.equals(interfaceC7403d2)) {
            if (interfaceC7403d2 == null) {
                return null;
            }
            C7402c type = interfaceC7403d.getType();
            C7402c type2 = interfaceC7403d2.getType();
            if (type == type2) {
                return type;
            }
            if (type.m1534N() && type2.m1534N()) {
                C7402c c7402c = C7402c.f37061C;
                if (type == c7402c) {
                    return type2;
                }
                if (type2 == c7402c) {
                    return type;
                }
                if (type.m1540H() && type2.m1540H()) {
                    InterfaceC7403d m15622d = m15622d(type.m1525x(), type2.m1525x());
                    if (m15622d == null) {
                        return C7402c.f37069K;
                    }
                    return ((C7402c) m15622d).m1528j();
                }
                return C7402c.f37069K;
            } else if (!type.m1536L() || !type2.m1536L()) {
                return null;
            } else {
                return C7402c.f37097y;
            }
        }
        return interfaceC7403d;
    }

    /* renamed from: a */
    public static boolean m15625a(InterfaceC7403d interfaceC7403d, InterfaceC7403d interfaceC7403d2) {
        C7402c type = interfaceC7403d.getType();
        C7402c type2 = interfaceC7403d2.getType();
        if (type.equals(type2)) {
            return true;
        }
        int mo1523f = type.mo1523f();
        int mo1523f2 = type2.mo1523f();
        if (mo1523f == 10) {
            type = C7402c.f37069K;
            mo1523f = 9;
        }
        if (mo1523f2 == 10) {
            type2 = C7402c.f37069K;
            mo1523f2 = 9;
        }
        if (mo1523f == 9 && mo1523f2 == 9) {
            C7402c c7402c = C7402c.f37061C;
            if (type == c7402c) {
                return false;
            }
            if (type2 == c7402c || type == C7402c.f37069K) {
                return true;
            }
            if (type.m1540H()) {
                if (!type2.m1540H()) {
                    return false;
                }
                do {
                    type = type.m1525x();
                    type2 = type2.m1525x();
                    if (!type.m1540H()) {
                        break;
                    }
                } while (type2.m1540H());
                return m15625a(type, type2);
            } else if (!type2.m1540H() || type == C7402c.f37070L || type == C7402c.f37065G) {
                return true;
            } else {
                return false;
            }
        } else if (type.m1536L() && type2.m1536L()) {
            return true;
        } else {
            return false;
        }
    }
}
