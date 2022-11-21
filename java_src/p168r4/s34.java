package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.s34 */
/* loaded from: classes2.dex */
public final class s34 {

    /* renamed from: a */
    public final d14 f31243a;

    /* renamed from: d */
    public g44 f31246d;

    /* renamed from: e */
    public o34 f31247e;

    /* renamed from: f */
    public int f31248f;

    /* renamed from: g */
    public int f31249g;

    /* renamed from: h */
    public int f31250h;

    /* renamed from: i */
    public int f31251i;

    /* renamed from: l */
    public boolean f31254l;

    /* renamed from: b */
    public final f44 f31244b = new f44();

    /* renamed from: c */
    public final C6423xb f31245c = new C6423xb();

    /* renamed from: j */
    public final C6423xb f31252j = new C6423xb(1);

    /* renamed from: k */
    public final C6423xb f31253k = new C6423xb();

    /* renamed from: d */
    public final void m7215d() {
        f44 f44Var = this.f31244b;
        f44Var.f23284d = 0;
        f44Var.f23297q = 0L;
        f44Var.f23298r = false;
        f44Var.f23292l = false;
        f44Var.f23296p = false;
        f44Var.f23294n = null;
        this.f31248f = 0;
        this.f31250h = 0;
        this.f31249g = 0;
        this.f31251i = 0;
        this.f31254l = false;
    }

    /* renamed from: i */
    public final boolean m7210i() {
        this.f31248f++;
        if (this.f31254l) {
            int i = this.f31249g + 1;
            this.f31249g = i;
            int[] iArr = this.f31244b.f23287g;
            int i2 = this.f31250h;
            if (i == iArr[i2]) {
                this.f31250h = i2 + 1;
                this.f31249g = 0;
                return false;
            }
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public final void m7216c(g44 g44Var, o34 o34Var) {
        this.f31246d = g44Var;
        this.f31247e = o34Var;
        this.f31243a.mo4004f(g44Var.f23876a.f22081f);
        m7215d();
    }

    /* renamed from: e */
    public final long m7214e() {
        if (!this.f31254l) {
            return this.f31246d.f23881f[this.f31248f];
        }
        return this.f31244b.m11638b(this.f31248f);
    }

    /* renamed from: f */
    public final long m7213f() {
        if (!this.f31254l) {
            return this.f31246d.f23878c[this.f31248f];
        }
        return this.f31244b.f23286f[this.f31250h];
    }

    /* renamed from: g */
    public final int m7212g() {
        if (!this.f31254l) {
            return this.f31246d.f23879d[this.f31248f];
        }
        return this.f31244b.f23288h[this.f31248f];
    }

    /* renamed from: h */
    public final int m7211h() {
        int i;
        if (!this.f31254l) {
            i = this.f31246d.f23882g[this.f31248f];
        } else if (this.f31244b.f23291k[this.f31248f]) {
            i = 1;
        } else {
            i = 0;
        }
        if (m7208k() != null) {
            return i | 1073741824;
        }
        return i;
    }

    /* renamed from: k */
    public final e44 m7208k() {
        if (!this.f31254l) {
            return null;
        }
        f44 f44Var = this.f31244b;
        o34 o34Var = f44Var.f23281a;
        int i = C5979lc.f27164a;
        int i2 = o34Var.f28841a;
        e44 e44Var = f44Var.f23294n;
        if (e44Var == null) {
            e44Var = this.f31246d.f23876a.m12223a(i2);
        }
        if (e44Var == null || !e44Var.f22790a) {
            return null;
        }
        return e44Var;
    }

    public s34(d14 d14Var, g44 g44Var, o34 o34Var) {
        this.f31243a = d14Var;
        this.f31246d = g44Var;
        this.f31247e = o34Var;
        m7216c(g44Var, o34Var);
    }

    /* renamed from: j */
    public final int m7209j(int i, int i2) {
        C6423xb c6423xb;
        boolean z;
        int i3;
        e44 m7208k = m7208k();
        if (m7208k == null) {
            return 0;
        }
        int i4 = m7208k.f22793d;
        if (i4 != 0) {
            c6423xb = this.f31244b.f23295o;
        } else {
            byte[] bArr = (byte[]) C5979lc.m9728I(m7208k.f22794e);
            C6423xb c6423xb2 = this.f31253k;
            int length = bArr.length;
            c6423xb2.m5409j(bArr, length);
            c6423xb = this.f31253k;
            i4 = length;
        }
        boolean m11637c = this.f31244b.m11637c(this.f31248f);
        if (!m11637c && i2 == 0) {
            z = false;
        } else {
            z = true;
        }
        byte[] m5402q = this.f31252j.m5402q();
        if (true != z) {
            i3 = 0;
        } else {
            i3 = 128;
        }
        m5402q[0] = (byte) (i3 | i4);
        this.f31252j.m5403p(0);
        this.f31243a.mo4007c(this.f31252j, 1, 1);
        this.f31243a.mo4007c(c6423xb, i4, 1);
        if (!z) {
            return i4 + 1;
        }
        if (!m11637c) {
            this.f31245c.m5410i(8);
            byte[] m5402q2 = this.f31245c.m5402q();
            m5402q2[0] = 0;
            m5402q2[1] = 1;
            m5402q2[2] = 0;
            m5402q2[3] = (byte) i2;
            m5402q2[4] = (byte) ((i >> 24) & 255);
            m5402q2[5] = (byte) ((i >> 16) & 255);
            m5402q2[6] = (byte) ((i >> 8) & 255);
            m5402q2[7] = (byte) (i & 255);
            this.f31243a.mo4007c(this.f31245c, 8, 1);
            return i4 + 9;
        }
        C6423xb c6423xb3 = this.f31244b.f23295o;
        int m5396w = c6423xb3.m5396w();
        c6423xb3.m5400s(-2);
        int i5 = (m5396w * 6) + 2;
        if (i2 != 0) {
            this.f31245c.m5410i(i5);
            byte[] m5402q3 = this.f31245c.m5402q();
            c6423xb3.m5398u(m5402q3, 0, i5);
            int i6 = (((m5402q3[2] & DefaultClassResolver.NAME) << 8) | (m5402q3[3] & DefaultClassResolver.NAME)) + i2;
            m5402q3[2] = (byte) ((i6 >> 8) & 255);
            m5402q3[3] = (byte) (i6 & 255);
            c6423xb3 = this.f31245c;
        }
        this.f31243a.mo4007c(c6423xb3, i5, 1);
        return i4 + 1 + i5;
    }
}
