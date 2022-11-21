package p183t1;

import java.io.EOFException;
import p015b2.C0438g;
import p102k1.C4420g;
import p174s1.C6574c;
import p174s1.C6576d;
import p174s1.EnumC6573b;
/* renamed from: t1.f */
/* loaded from: classes.dex */
public abstract class AbstractC6650f {

    /* renamed from: a */
    public final EnumC6654j f35242a;

    /* renamed from: b */
    public final int f35243b;

    /* renamed from: c */
    public final int f35244c;

    /* renamed from: d */
    public final EnumC6573b f35245d;

    /* renamed from: e */
    public final int f35246e;

    /* renamed from: f */
    public final long f35247f;

    /* renamed from: b */
    public static AbstractC6650f[] m3702b(short[] sArr) {
        AbstractC6650f[] abstractC6650fArr = new AbstractC6650f[sArr.length];
        C6696p c6696p = new C6696p(sArr);
        while (c6696p.m3631m()) {
            try {
                abstractC6650fArr[c6696p.mo3706k()] = m3703a(c6696p);
            } catch (EOFException e) {
                throw new C4420g(e);
            }
        }
        return abstractC6650fArr;
    }

    /* renamed from: C */
    public abstract AbstractC6650f mo3615C(int i);

    /* renamed from: D */
    public AbstractC6650f mo3635D(int i, int i2) {
        throw new IllegalStateException(getClass().toString());
    }

    /* renamed from: c */
    public final void m3701c(InterfaceC6649e interfaceC6649e) {
        this.f35242a.mo3640R(this, interfaceC6649e);
    }

    /* renamed from: d */
    public int mo3617d() {
        return 0;
    }

    /* renamed from: f */
    public int mo3616f() {
        return 0;
    }

    /* renamed from: h */
    public int mo3618h() {
        return 0;
    }

    /* renamed from: j */
    public int mo3637j() {
        return 0;
    }

    /* renamed from: k */
    public int mo3636k() {
        return 0;
    }

    /* renamed from: l */
    public final EnumC6654j m3697l() {
        return this.f35242a;
    }

    /* renamed from: m */
    public final int m3696m() {
        return this.f35244c;
    }

    /* renamed from: n */
    public final EnumC6573b m3695n() {
        return this.f35245d;
    }

    /* renamed from: o */
    public final short m3694o() {
        return (short) this.f35244c;
    }

    /* renamed from: p */
    public final long m3693p() {
        return this.f35247f;
    }

    /* renamed from: u */
    public final int m3688u() {
        return this.f35243b;
    }

    /* renamed from: v */
    public final short m3687v() {
        return (short) this.f35243b;
    }

    /* renamed from: w */
    public short mo3634w() {
        throw new IllegalStateException(getClass().toString());
    }

    /* renamed from: x */
    public abstract int mo3614x();

    /* renamed from: y */
    public final int m3686y() {
        return this.f35246e;
    }

    /* renamed from: z */
    public final int m3685z(int i) {
        return this.f35246e - i;
    }

    /* renamed from: q */
    public final int m3692q() {
        long j = this.f35247f;
        if (j == ((byte) j)) {
            return ((int) j) & 255;
        }
        throw new C4420g("Literal out of range: " + C0438g.m26474k(this.f35247f));
    }

    /* renamed from: r */
    public final int m3691r() {
        long j = this.f35247f;
        if (j == ((int) j)) {
            return (int) j;
        }
        throw new C4420g("Literal out of range: " + C0438g.m26474k(this.f35247f));
    }

    /* renamed from: s */
    public final int m3690s() {
        long j = this.f35247f;
        if (j >= -8 && j <= 7) {
            return ((int) j) & 15;
        }
        throw new C4420g("Literal out of range: " + C0438g.m26474k(this.f35247f));
    }

    /* renamed from: t */
    public final short m3689t() {
        long j = this.f35247f;
        if (j == ((short) j)) {
            return (short) j;
        }
        throw new C4420g("Literal out of range: " + C0438g.m26474k(this.f35247f));
    }

    public AbstractC6650f(EnumC6654j enumC6654j, int i, int i2, EnumC6573b enumC6573b, int i3, long j) {
        if (enumC6654j != null) {
            if (C6576d.m3883b(i)) {
                this.f35242a = enumC6654j;
                this.f35243b = i;
                this.f35244c = i2;
                this.f35245d = enumC6573b;
                this.f35246e = i3;
                this.f35247f = j;
                return;
            }
            throw new IllegalArgumentException("invalid opcode");
        }
        throw new NullPointerException("format == null");
    }

    /* renamed from: a */
    public static AbstractC6650f m3703a(InterfaceC6648d interfaceC6648d) {
        int read = interfaceC6648d.read();
        return C6574c.m3892b(C6576d.m3884a(read)).mo3641O(read, interfaceC6648d);
    }

    /* renamed from: A */
    public final int m3705A(int i) {
        int m3685z = m3685z(i);
        if (m3685z == ((byte) m3685z)) {
            return m3685z & 255;
        }
        throw new C4420g("Target out of range: " + C0438g.m26481d(m3685z));
    }

    /* renamed from: B */
    public final short m3704B(int i) {
        int m3685z = m3685z(i);
        short s = (short) m3685z;
        if (m3685z == s) {
            return s;
        }
        throw new C4420g("Target out of range: " + C0438g.m26481d(m3685z));
    }

    /* renamed from: e */
    public final short m3700e() {
        int mo3617d = mo3617d();
        if (((-65536) & mo3617d) == 0) {
            return (short) mo3617d;
        }
        throw new C4420g("Register A out of range: " + C0438g.m26474k(mo3617d));
    }

    /* renamed from: g */
    public final short m3699g() {
        int mo3616f = mo3616f();
        if (((-65536) & mo3616f) == 0) {
            return (short) mo3616f;
        }
        throw new C4420g("Register B out of range: " + C0438g.m26474k(mo3616f));
    }

    /* renamed from: i */
    public final short m3698i() {
        int mo3618h = mo3618h();
        if (((-65536) & mo3618h) == 0) {
            return (short) mo3618h;
        }
        throw new C4420g("Register C out of range: " + C0438g.m26474k(mo3618h));
    }
}
