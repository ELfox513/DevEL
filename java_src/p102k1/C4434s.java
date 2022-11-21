package p102k1;

import java.util.Arrays;
import p102k1.C4409f;
/* renamed from: k1.s */
/* loaded from: classes.dex */
public final class C4434s {

    /* renamed from: A */
    public int f18419A;

    /* renamed from: B */
    public int f18420B;

    /* renamed from: C */
    public int f18421C;

    /* renamed from: a */
    public final C4435a f18422a;

    /* renamed from: b */
    public final C4435a f18423b;

    /* renamed from: c */
    public final C4435a f18424c;

    /* renamed from: d */
    public final C4435a f18425d;

    /* renamed from: e */
    public final C4435a f18426e;

    /* renamed from: f */
    public final C4435a f18427f;

    /* renamed from: g */
    public final C4435a f18428g;

    /* renamed from: h */
    public final C4435a f18429h;

    /* renamed from: i */
    public final C4435a f18430i;

    /* renamed from: j */
    public final C4435a f18431j;

    /* renamed from: k */
    public final C4435a f18432k;

    /* renamed from: l */
    public final C4435a f18433l;

    /* renamed from: m */
    public final C4435a f18434m;

    /* renamed from: n */
    public final C4435a f18435n;

    /* renamed from: o */
    public final C4435a f18436o;

    /* renamed from: p */
    public final C4435a f18437p;

    /* renamed from: q */
    public final C4435a f18438q;

    /* renamed from: r */
    public final C4435a f18439r;

    /* renamed from: s */
    public final C4435a f18440s;

    /* renamed from: t */
    public final C4435a f18441t;

    /* renamed from: u */
    public final C4435a[] f18442u;

    /* renamed from: v */
    public int f18443v;

    /* renamed from: w */
    public int f18444w;

    /* renamed from: x */
    public byte[] f18445x;

    /* renamed from: y */
    public int f18446y;

    /* renamed from: z */
    public int f18447z;

    /* renamed from: c */
    public void m16494c(C4409f c4409f) {
        m16493d(c4409f.m16624q(0));
        m16492e(c4409f.m16624q(this.f18431j.f18450d));
        m16496a();
    }

    /* renamed from: k1.s$a */
    /* loaded from: classes.dex */
    public static class C4435a implements Comparable<C4435a> {

        /* renamed from: a */
        public final short f18448a;

        /* renamed from: b */
        public int f18449b = 0;

        /* renamed from: d */
        public int f18450d = -1;

        /* renamed from: k */
        public int f18451k = 0;

        @Override // java.lang.Comparable
        /* renamed from: c */
        public int compareTo(C4435a c4435a) {
            int i = this.f18450d;
            int i2 = c4435a.f18450d;
            if (i != i2) {
                return i < i2 ? -1 : 1;
            }
            return 0;
        }

        /* renamed from: d */
        public boolean m16488d() {
            return this.f18449b > 0;
        }

        public String toString() {
            return String.format("Section[type=%#x,off=%#x,size=%#x]", Short.valueOf(this.f18448a), Integer.valueOf(this.f18450d), Integer.valueOf(this.f18449b));
        }

        public C4435a(int i) {
            this.f18448a = (short) i;
        }
    }

    public C4434s() {
        C4435a c4435a = new C4435a(0);
        this.f18422a = c4435a;
        C4435a c4435a2 = new C4435a(1);
        this.f18423b = c4435a2;
        C4435a c4435a3 = new C4435a(2);
        this.f18424c = c4435a3;
        C4435a c4435a4 = new C4435a(3);
        this.f18425d = c4435a4;
        C4435a c4435a5 = new C4435a(4);
        this.f18426e = c4435a5;
        C4435a c4435a6 = new C4435a(5);
        this.f18427f = c4435a6;
        C4435a c4435a7 = new C4435a(6);
        this.f18428g = c4435a7;
        C4435a c4435a8 = new C4435a(7);
        this.f18429h = c4435a8;
        C4435a c4435a9 = new C4435a(8);
        this.f18430i = c4435a9;
        C4435a c4435a10 = new C4435a(4096);
        this.f18431j = c4435a10;
        C4435a c4435a11 = new C4435a(4097);
        this.f18432k = c4435a11;
        C4435a c4435a12 = new C4435a(4098);
        this.f18433l = c4435a12;
        C4435a c4435a13 = new C4435a(4099);
        this.f18434m = c4435a13;
        C4435a c4435a14 = new C4435a(8192);
        this.f18435n = c4435a14;
        C4435a c4435a15 = new C4435a(8193);
        this.f18436o = c4435a15;
        C4435a c4435a16 = new C4435a(8194);
        this.f18437p = c4435a16;
        C4435a c4435a17 = new C4435a(8195);
        this.f18438q = c4435a17;
        C4435a c4435a18 = new C4435a(8196);
        this.f18439r = c4435a18;
        C4435a c4435a19 = new C4435a(8197);
        this.f18440s = c4435a19;
        C4435a c4435a20 = new C4435a(8198);
        this.f18441t = c4435a20;
        this.f18442u = new C4435a[]{c4435a, c4435a2, c4435a3, c4435a4, c4435a5, c4435a6, c4435a7, c4435a10, c4435a8, c4435a9, c4435a11, c4435a12, c4435a13, c4435a14, c4435a15, c4435a16, c4435a17, c4435a18, c4435a19, c4435a20};
        this.f18445x = new byte[20];
    }

    /* renamed from: a */
    public void m16496a() {
        int i = this.f18421C + this.f18420B;
        for (int length = this.f18442u.length - 1; length >= 0; length--) {
            C4435a c4435a = this.f18442u[length];
            int i2 = c4435a.f18450d;
            if (i2 != -1) {
                if (i2 <= i) {
                    c4435a.f18451k = i - i2;
                    i = i2;
                } else {
                    throw new C4420g("Map is unsorted at " + c4435a);
                }
            }
        }
    }

    /* renamed from: b */
    public final C4435a m16495b(short s) {
        C4435a[] c4435aArr;
        for (C4435a c4435a : this.f18442u) {
            if (c4435a.f18448a == s) {
                return c4435a;
            }
        }
        throw new IllegalArgumentException("No such map item: " + ((int) s));
    }

    /* renamed from: d */
    public final void m16493d(C4409f.C4416g c4416g) {
        byte[] m16573v = c4416g.m16573v(8);
        if (C4421h.m16564b(m16573v)) {
            this.f18443v = C4421h.m16563c(m16573v);
            this.f18444w = c4416g.m16606F();
            this.f18445x = c4416g.m16573v(20);
            this.f18446y = c4416g.m16606F();
            int m16606F = c4416g.m16606F();
            if (m16606F == 112) {
                int m16606F2 = c4416g.m16606F();
                if (m16606F2 == 305419896) {
                    this.f18447z = c4416g.m16606F();
                    this.f18419A = c4416g.m16606F();
                    this.f18431j.f18450d = c4416g.m16606F();
                    if (this.f18431j.f18450d != 0) {
                        this.f18423b.f18449b = c4416g.m16606F();
                        this.f18423b.f18450d = c4416g.m16606F();
                        this.f18424c.f18449b = c4416g.m16606F();
                        this.f18424c.f18450d = c4416g.m16606F();
                        this.f18425d.f18449b = c4416g.m16606F();
                        this.f18425d.f18450d = c4416g.m16606F();
                        this.f18426e.f18449b = c4416g.m16606F();
                        this.f18426e.f18450d = c4416g.m16606F();
                        this.f18427f.f18449b = c4416g.m16606F();
                        this.f18427f.f18450d = c4416g.m16606F();
                        this.f18428g.f18449b = c4416g.m16606F();
                        this.f18428g.f18450d = c4416g.m16606F();
                        this.f18420B = c4416g.m16606F();
                        this.f18421C = c4416g.m16606F();
                        return;
                    }
                    throw new C4420g("Cannot merge dex files that do not contain a map");
                }
                throw new C4420g("Unexpected endian tag: 0x" + Integer.toHexString(m16606F2));
            }
            throw new C4420g("Unexpected header: 0x" + Integer.toHexString(m16606F));
        }
        throw new C4420g(String.format("Unexpected magic: [0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x]", Byte.valueOf(m16573v[0]), Byte.valueOf(m16573v[1]), Byte.valueOf(m16573v[2]), Byte.valueOf(m16573v[3]), Byte.valueOf(m16573v[4]), Byte.valueOf(m16573v[5]), Byte.valueOf(m16573v[6]), Byte.valueOf(m16573v[7])));
    }

    /* renamed from: g */
    public void m16490g(C4409f.C4416g c4416g) {
        C4435a[] c4435aArr;
        int i = 0;
        for (C4435a c4435a : this.f18442u) {
            if (c4435a.m16488d()) {
                i++;
            }
        }
        c4416g.writeInt(i);
        for (C4435a c4435a2 : this.f18442u) {
            if (c4435a2.m16488d()) {
                c4416g.m16589W(c4435a2.f18448a);
                c4416g.m16589W((short) 0);
                c4416g.writeInt(c4435a2.f18449b);
                c4416g.writeInt(c4435a2.f18450d);
            }
        }
    }

    /* renamed from: e */
    public final void m16492e(C4409f.C4416g c4416g) {
        int i;
        int m16606F = c4416g.m16606F();
        C4435a c4435a = null;
        int i2 = 0;
        while (i2 < m16606F) {
            short m16601K = c4416g.m16601K();
            c4416g.m16601K();
            C4435a m16495b = m16495b(m16601K);
            int m16606F2 = c4416g.m16606F();
            int m16606F3 = c4416g.m16606F();
            int i3 = m16495b.f18449b;
            if ((i3 != 0 && i3 != m16606F2) || ((i = m16495b.f18450d) != -1 && i != m16606F3)) {
                throw new C4420g("Unexpected map value for 0x" + Integer.toHexString(m16601K));
            }
            m16495b.f18449b = m16606F2;
            m16495b.f18450d = m16606F3;
            if (c4435a != null && c4435a.f18450d > m16606F3) {
                throw new C4420g("Map is unsorted at " + c4435a + ", " + m16495b);
            }
            i2++;
            c4435a = m16495b;
        }
        Arrays.sort(this.f18442u);
    }

    /* renamed from: f */
    public void m16491f(C4409f.C4416g c4416g, int i) {
        c4416g.write(C4421h.m16565a(i).getBytes("UTF-8"));
        c4416g.writeInt(this.f18444w);
        c4416g.write(this.f18445x);
        c4416g.writeInt(this.f18446y);
        c4416g.writeInt(112);
        c4416g.writeInt(305419896);
        c4416g.writeInt(this.f18447z);
        c4416g.writeInt(this.f18419A);
        c4416g.writeInt(this.f18431j.f18450d);
        c4416g.writeInt(this.f18423b.f18449b);
        c4416g.writeInt(this.f18423b.f18450d);
        c4416g.writeInt(this.f18424c.f18449b);
        c4416g.writeInt(this.f18424c.f18450d);
        c4416g.writeInt(this.f18425d.f18449b);
        c4416g.writeInt(this.f18425d.f18450d);
        c4416g.writeInt(this.f18426e.f18449b);
        c4416g.writeInt(this.f18426e.f18450d);
        c4416g.writeInt(this.f18427f.f18449b);
        c4416g.writeInt(this.f18427f.f18450d);
        c4416g.writeInt(this.f18428g.f18449b);
        c4416g.writeInt(this.f18428g.f18450d);
        c4416g.writeInt(this.f18420B);
        c4416g.writeInt(this.f18421C);
    }
}
