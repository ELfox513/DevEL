package p147p1;

import java.io.IOException;
import p015b2.C0432d;
import p015b2.C0438g;
import p156q1.C5399i;
import p156q1.InterfaceC5400j;
import p201v1.C6969a;
import p201v1.C6971c;
import p201v1.C6972d;
import p201v1.C6973e;
import p201v1.EnumC6970b;
import p218x1.AbstractC7204a;
import p218x1.C7205a0;
import p218x1.C7208c;
import p218x1.C7209c0;
import p218x1.C7210d;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p218x1.C7215f;
import p218x1.C7217g;
import p218x1.C7223k;
import p218x1.C7224l;
import p218x1.C7225m;
import p218x1.C7227o;
import p218x1.C7228p;
import p218x1.C7235w;
import p218x1.InterfaceC7206b;
import p226y1.C7402c;
/* renamed from: p1.a */
/* loaded from: classes.dex */
public final class C5295a {

    /* renamed from: a */
    public final C5305f f19857a;

    /* renamed from: b */
    public final InterfaceC7206b f19858b;

    /* renamed from: c */
    public final C0432d f19859c;

    /* renamed from: d */
    public final InterfaceC5400j f19860d;

    /* renamed from: e */
    public final C0432d.C0433a f19861e;

    /* renamed from: f */
    public int f19862f;

    /* renamed from: a */
    public final void m13623a(int i) {
        this.f19860d.m13344b(i);
    }

    /* renamed from: b */
    public final C6969a m13622b(EnumC6970b enumC6970b) {
        m13612l(4);
        int readUnsignedShort = this.f19861e.readUnsignedShort();
        int readUnsignedShort2 = this.f19861e.readUnsignedShort();
        C7214e0 c7214e0 = new C7214e0(C7402c.m1543D(((C7212d0) this.f19858b.get(readUnsignedShort)).m2112u()));
        if (this.f19860d != null) {
            m13613k(2, "type: " + c7214e0.toHuman());
            m13613k(2, "num_elements: " + readUnsignedShort2);
        }
        C6969a c6969a = new C6969a(c7214e0, enumC6970b);
        for (int i = 0; i < readUnsignedShort2; i++) {
            if (this.f19860d != null) {
                m13613k(0, "elements[" + i + "]:");
                m13623a(1);
            }
            c6969a.m2831x(m13617g());
            if (this.f19860d != null) {
                m13623a(-1);
            }
        }
        c6969a.setImmutable();
        return c6969a;
    }

    /* renamed from: g */
    public final C6973e m13617g() {
        m13612l(5);
        C7212d0 c7212d0 = (C7212d0) this.f19858b.get(this.f19861e.readUnsignedShort());
        if (this.f19860d != null) {
            m13613k(2, "element_name: " + c7212d0.toHuman());
            m13613k(0, "value: ");
            m13623a(1);
        }
        AbstractC7204a m13615i = m13615i();
        if (this.f19860d != null) {
            m13623a(-1);
        }
        return new C6973e(c7212d0, m13615i);
    }

    /* renamed from: d */
    public final C6971c m13620d(EnumC6970b enumC6970b) {
        int readUnsignedShort = this.f19861e.readUnsignedShort();
        if (this.f19860d != null) {
            m13613k(2, "num_annotations: " + C0438g.m26478g(readUnsignedShort));
        }
        C6971c c6971c = new C6971c();
        for (int i = 0; i < readUnsignedShort; i++) {
            if (this.f19860d != null) {
                m13613k(0, "annotations[" + i + "]:");
                m13623a(1);
            }
            c6971c.m2825x(m13622b(enumC6970b));
            InterfaceC5400j interfaceC5400j = this.f19860d;
            if (interfaceC5400j != null) {
                interfaceC5400j.m13344b(-1);
            }
        }
        c6971c.setImmutable();
        return c6971c;
    }

    /* renamed from: e */
    public final C6972d m13619e(EnumC6970b enumC6970b) {
        int readUnsignedByte = this.f19861e.readUnsignedByte();
        if (this.f19860d != null) {
            m13613k(1, "num_parameters: " + C0438g.m26479f(readUnsignedByte));
        }
        C6972d c6972d = new C6972d(readUnsignedByte);
        for (int i = 0; i < readUnsignedByte; i++) {
            if (this.f19860d != null) {
                m13613k(0, "parameter_annotations[" + i + "]:");
                m13623a(1);
            }
            c6972d.m2823A(i, m13620d(enumC6970b));
            InterfaceC5400j interfaceC5400j = this.f19860d;
            if (interfaceC5400j != null) {
                interfaceC5400j.m13344b(-1);
            }
        }
        c6972d.setImmutable();
        return c6972d;
    }

    /* renamed from: f */
    public final AbstractC7204a m13618f() {
        String human;
        AbstractC7204a abstractC7204a = this.f19858b.get(this.f19861e.readUnsignedShort());
        if (this.f19860d != null) {
            if (abstractC7204a instanceof C7212d0) {
                human = ((C7212d0) abstractC7204a).m2116C();
            } else {
                human = abstractC7204a.toHuman();
            }
            m13613k(2, "constant_value: " + human);
        }
        return abstractC7204a;
    }

    /* renamed from: i */
    public final AbstractC7204a m13615i() {
        int readUnsignedByte = this.f19861e.readUnsignedByte();
        if (this.f19860d != null) {
            C7212d0 c7212d0 = new C7212d0(Character.toString((char) readUnsignedByte));
            m13613k(1, "tag: " + c7212d0.m2116C());
        }
        if (readUnsignedByte != 64) {
            if (readUnsignedByte != 70) {
                if (readUnsignedByte != 83) {
                    if (readUnsignedByte != 99) {
                        if (readUnsignedByte != 101) {
                            if (readUnsignedByte != 115) {
                                if (readUnsignedByte != 73) {
                                    if (readUnsignedByte != 74) {
                                        if (readUnsignedByte != 90) {
                                            if (readUnsignedByte != 91) {
                                                switch (readUnsignedByte) {
                                                    case 66:
                                                        return C7217g.m2088C(((C7228p) m13618f()).m2075B());
                                                    case 67:
                                                        C7228p c7228p = (C7228p) m13618f();
                                                        c7228p.m2075B();
                                                        return C7223k.m2080C(c7228p.m2075B());
                                                    case 68:
                                                        return (C7224l) m13618f();
                                                    default:
                                                        throw new C5399i("unknown annotation tag: " + C0438g.m26479f(readUnsignedByte));
                                                }
                                            }
                                            m13612l(2);
                                            int readUnsignedShort = this.f19861e.readUnsignedShort();
                                            C7210d.C7211a c7211a = new C7210d.C7211a(readUnsignedShort);
                                            if (this.f19860d != null) {
                                                m13613k(2, "num_values: " + readUnsignedShort);
                                                m13623a(1);
                                            }
                                            for (int i = 0; i < readUnsignedShort; i++) {
                                                if (this.f19860d != null) {
                                                    m13623a(-1);
                                                    m13613k(0, "element_value[" + i + "]:");
                                                    m13623a(1);
                                                }
                                                c7211a.m2119z(i, m13615i());
                                            }
                                            if (this.f19860d != null) {
                                                m13623a(-1);
                                            }
                                            c7211a.setImmutable();
                                            return new C7210d(c7211a);
                                        }
                                        return C7215f.m2094C(((C7228p) m13618f()).m2075B());
                                    }
                                    return (C7235w) m13618f();
                                }
                                return (C7228p) m13618f();
                            }
                            return m13618f();
                        }
                        m13612l(4);
                        int readUnsignedShort2 = this.f19861e.readUnsignedShort();
                        int readUnsignedShort3 = this.f19861e.readUnsignedShort();
                        C7212d0 c7212d02 = (C7212d0) this.f19858b.get(readUnsignedShort2);
                        C7212d0 c7212d03 = (C7212d0) this.f19858b.get(readUnsignedShort3);
                        if (this.f19860d != null) {
                            m13613k(2, "type_name: " + c7212d02.toHuman());
                            m13613k(2, "const_name: " + c7212d03.toHuman());
                        }
                        return new C7225m(new C7205a0(c7212d03, c7212d02));
                    }
                    C7402c m1541F = C7402c.m1541F(((C7212d0) this.f19858b.get(this.f19861e.readUnsignedShort())).m2112u());
                    if (this.f19860d != null) {
                        m13613k(2, "class_info: " + m1541F.toHuman());
                    }
                    return new C7214e0(m1541F);
                }
                return C7209c0.m2123B(((C7228p) m13618f()).m2075B());
            }
            return (C7227o) m13618f();
        }
        return new C7208c(m13622b(EnumC6970b.EMBEDDED));
    }

    /* renamed from: k */
    public final void m13613k(int i, String str) {
        this.f19860d.m13345a(this.f19859c, this.f19862f, i, str);
        this.f19862f += i;
    }

    /* renamed from: l */
    public final void m13612l(int i) {
        if (this.f19861e.available() >= i) {
            return;
        }
        throw new C5399i("truncated annotation attribute");
    }

    public C5295a(C5305f c5305f, int i, int i2, InterfaceC5400j interfaceC5400j) {
        if (c5305f != null) {
            this.f19857a = c5305f;
            this.f19858b = c5305f.m13580f();
            this.f19860d = interfaceC5400j;
            C0432d m26505r = c5305f.m13581e().m26505r(i, i2 + i);
            this.f19859c = m26505r;
            this.f19861e = m26505r.m26508o();
            this.f19862f = 0;
            return;
        }
        throw new NullPointerException("cf == null");
    }

    /* renamed from: c */
    public C6971c m13621c(EnumC6970b enumC6970b) {
        try {
            C6971c m13620d = m13620d(enumC6970b);
            if (this.f19861e.available() == 0) {
                return m13620d;
            }
            throw new C5399i("extra data in attribute");
        } catch (IOException e) {
            throw new RuntimeException("shouldn't happen", e);
        }
    }

    /* renamed from: h */
    public C6972d m13616h(EnumC6970b enumC6970b) {
        try {
            C6972d m13619e = m13619e(enumC6970b);
            if (this.f19861e.available() == 0) {
                return m13619e;
            }
            throw new C5399i("extra data in attribute");
        } catch (IOException e) {
            throw new RuntimeException("shouldn't happen", e);
        }
    }

    /* renamed from: j */
    public AbstractC7204a m13614j() {
        try {
            AbstractC7204a m13615i = m13615i();
            if (this.f19861e.available() == 0) {
                return m13615i;
            }
            throw new C5399i("extra data in attribute");
        } catch (IOException e) {
            throw new RuntimeException("shouldn't happen", e);
        }
    }
}
