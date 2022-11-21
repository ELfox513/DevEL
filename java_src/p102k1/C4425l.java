package p102k1;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import p111l1.InterfaceC4555b;
/* renamed from: k1.l */
/* loaded from: classes.dex */
public final class C4425l {

    /* renamed from: a */
    public final InterfaceC4555b f18386a;

    /* renamed from: b */
    public int f18387b;

    /* renamed from: c */
    public int f18388c;

    /* renamed from: d */
    public int f18389d;

    public C4425l(InterfaceC4555b interfaceC4555b, int i) {
        this.f18386a = interfaceC4555b;
        this.f18387b = i;
    }

    /* renamed from: b */
    public int m16551b() {
        return this.f18388c;
    }

    /* renamed from: e */
    public int m16548e() {
        return C4427n.m16523b(this.f18386a);
    }

    /* renamed from: h */
    public byte m16545h() {
        m16552a(0);
        this.f18387b = -1;
        return (byte) C4424k.m16559a(this.f18386a, this.f18389d);
    }

    /* renamed from: i */
    public char m16544i() {
        m16552a(3);
        this.f18387b = -1;
        return (char) C4424k.m16557c(this.f18386a, this.f18389d, false);
    }

    /* renamed from: n */
    public int m16539n() {
        m16552a(4);
        this.f18387b = -1;
        return C4424k.m16559a(this.f18386a, this.f18389d);
    }

    /* renamed from: o */
    public long m16538o() {
        m16552a(6);
        this.f18387b = -1;
        return C4424k.m16558b(this.f18386a, this.f18389d);
    }

    /* renamed from: t */
    public short m16533t() {
        m16552a(2);
        this.f18387b = -1;
        return (short) C4424k.m16559a(this.f18386a, this.f18389d);
    }

    /* renamed from: c */
    public int m16550c() {
        if (this.f18387b == -1) {
            int readByte = this.f18386a.readByte() & DefaultClassResolver.NAME;
            this.f18387b = readByte & 31;
            this.f18389d = (readByte & 224) >> 5;
        }
        return this.f18387b;
    }

    /* renamed from: d */
    public int m16549d() {
        m16552a(29);
        this.f18387b = -1;
        this.f18388c = C4427n.m16523b(this.f18386a);
        return C4427n.m16523b(this.f18386a);
    }

    /* renamed from: f */
    public int m16547f() {
        m16552a(28);
        this.f18387b = -1;
        return C4427n.m16523b(this.f18386a);
    }

    /* renamed from: g */
    public boolean m16546g() {
        m16552a(31);
        this.f18387b = -1;
        if (this.f18389d != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: j */
    public double m16543j() {
        m16552a(17);
        this.f18387b = -1;
        return Double.longBitsToDouble(C4424k.m16556d(this.f18386a, this.f18389d, true));
    }

    /* renamed from: k */
    public int m16542k() {
        m16552a(27);
        this.f18387b = -1;
        return C4424k.m16557c(this.f18386a, this.f18389d, false);
    }

    /* renamed from: l */
    public int m16541l() {
        m16552a(25);
        this.f18387b = -1;
        return C4424k.m16557c(this.f18386a, this.f18389d, false);
    }

    /* renamed from: m */
    public float m16540m() {
        m16552a(16);
        this.f18387b = -1;
        return Float.intBitsToFloat(C4424k.m16557c(this.f18386a, this.f18389d, true));
    }

    /* renamed from: p */
    public int m16537p() {
        m16552a(26);
        this.f18387b = -1;
        return C4424k.m16557c(this.f18386a, this.f18389d, false);
    }

    /* renamed from: q */
    public int m16536q() {
        m16552a(22);
        this.f18387b = -1;
        return C4424k.m16557c(this.f18386a, this.f18389d, false);
    }

    /* renamed from: r */
    public int m16535r() {
        m16552a(21);
        this.f18387b = -1;
        return C4424k.m16557c(this.f18386a, this.f18389d, false);
    }

    /* renamed from: s */
    public void m16534s() {
        m16552a(30);
        this.f18387b = -1;
    }

    /* renamed from: u */
    public int m16532u() {
        m16552a(23);
        this.f18387b = -1;
        return C4424k.m16557c(this.f18386a, this.f18389d, false);
    }

    /* renamed from: v */
    public int m16531v() {
        m16552a(24);
        this.f18387b = -1;
        return C4424k.m16557c(this.f18386a, this.f18389d, false);
    }

    /* renamed from: a */
    public final void m16552a(int i) {
        if (m16550c() == i) {
            return;
        }
        throw new IllegalStateException(String.format("Expected %x but was %x", Integer.valueOf(i), Integer.valueOf(m16550c())));
    }

    /* renamed from: w */
    public void m16530w() {
        int m16550c = m16550c();
        if (m16550c != 0) {
            if (m16550c != 6) {
                if (m16550c != 2) {
                    if (m16550c != 3) {
                        if (m16550c != 4) {
                            if (m16550c != 16) {
                                if (m16550c != 17) {
                                    int i = 0;
                                    switch (m16550c) {
                                        case 21:
                                            m16535r();
                                            return;
                                        case 22:
                                            m16536q();
                                            return;
                                        case 23:
                                            m16532u();
                                            return;
                                        case 24:
                                            m16531v();
                                            return;
                                        case 25:
                                            m16541l();
                                            return;
                                        case 26:
                                            m16537p();
                                            return;
                                        case 27:
                                            m16542k();
                                            return;
                                        case 28:
                                            int m16547f = m16547f();
                                            while (i < m16547f) {
                                                m16530w();
                                                i++;
                                            }
                                            return;
                                        case 29:
                                            int m16549d = m16549d();
                                            while (i < m16549d) {
                                                m16548e();
                                                m16530w();
                                                i++;
                                            }
                                            return;
                                        case 30:
                                            m16534s();
                                            return;
                                        case 31:
                                            m16546g();
                                            return;
                                        default:
                                            throw new C4420g("Unexpected type: " + Integer.toHexString(this.f18387b));
                                    }
                                }
                                m16543j();
                                return;
                            }
                            m16540m();
                            return;
                        }
                        m16539n();
                        return;
                    }
                    m16544i();
                    return;
                }
                m16533t();
                return;
            }
            m16538o();
            return;
        }
        m16545h();
    }

    public C4425l(C4423j c4423j, int i) {
        this(c4423j.m16562c(), i);
    }
}
