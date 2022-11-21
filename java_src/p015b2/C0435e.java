package p015b2;

import com.prineside.tdi2.tiles.CoreTile;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import p102k1.C4427n;
import p111l1.C4557d;
import p111l1.InterfaceC4556c;
/* renamed from: b2.e */
/* loaded from: classes.dex */
public final class C0435e implements InterfaceC0428a, InterfaceC4556c {

    /* renamed from: a */
    public final boolean f1514a;

    /* renamed from: b */
    public byte[] f1515b;

    /* renamed from: c */
    public int f1516c;

    /* renamed from: d */
    public boolean f1517d;

    /* renamed from: e */
    public ArrayList<C0436a> f1518e;

    /* renamed from: f */
    public int f1519f;

    /* renamed from: g */
    public int f1520g;

    /* renamed from: b2.e$a */
    /* loaded from: classes.dex */
    public static class C0436a {

        /* renamed from: a */
        public final int f1521a;

        /* renamed from: b */
        public int f1522b;

        /* renamed from: c */
        public final String f1523c;

        public C0436a(int i, int i2, String str) {
            this.f1521a = i;
            this.f1522b = i2;
            this.f1523c = str;
        }

        /* renamed from: a */
        public int m26489a() {
            return this.f1522b;
        }

        /* renamed from: b */
        public int m26488b() {
            return this.f1521a;
        }

        /* renamed from: c */
        public String m26487c() {
            return this.f1523c;
        }

        /* renamed from: d */
        public void m26486d(int i) {
            this.f1522b = i;
        }

        /* renamed from: e */
        public void m26485e(int i) {
            if (this.f1522b == Integer.MAX_VALUE) {
                this.f1522b = i;
            }
        }

        public C0436a(int i, String str) {
            this(i, Integer.MAX_VALUE, str);
        }
    }

    public C0435e(byte[] bArr) {
        this(bArr, false);
    }

    /* renamed from: q */
    public static void m26494q() {
        throw new IndexOutOfBoundsException("attempt to write past the end");
    }

    @Override // p015b2.InterfaceC0449q
    /* renamed from: a */
    public int mo26446a() {
        return this.f1516c;
    }

    @Override // p015b2.InterfaceC0428a
    /* renamed from: g */
    public boolean mo26501g() {
        return this.f1517d;
    }

    @Override // p015b2.InterfaceC0428a
    /* renamed from: j */
    public boolean mo26499j() {
        return this.f1518e != null;
    }

    /* renamed from: p */
    public byte[] m26495p() {
        return this.f1515b;
    }

    @Override // p015b2.InterfaceC0449q
    public void write(byte[] bArr) {
        m26492s(bArr, 0, bArr.length);
    }

    public C0435e() {
        this((int) CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
    }

    @Override // p015b2.InterfaceC0428a
    /* renamed from: b */
    public void mo26504b(String str) {
        if (this.f1518e == null) {
            return;
        }
        mo26500i();
        this.f1518e.add(new C0436a(this.f1516c, str));
    }

    @Override // p015b2.InterfaceC0428a
    /* renamed from: c */
    public int mo26503c() {
        int i = this.f1520g;
        return this.f1519f - (((i * 2) + 8) + (i / 2));
    }

    @Override // p015b2.InterfaceC0428a
    /* renamed from: d */
    public void mo26502d(int i, String str) {
        int m26489a;
        if (this.f1518e == null) {
            return;
        }
        mo26500i();
        int size = this.f1518e.size();
        if (size == 0) {
            m26489a = 0;
        } else {
            m26489a = this.f1518e.get(size - 1).m26489a();
        }
        int i2 = this.f1516c;
        if (m26489a <= i2) {
            m26489a = i2;
        }
        this.f1518e.add(new C0436a(m26489a, i + m26489a, str));
    }

    @Override // p015b2.InterfaceC0449q
    /* renamed from: e */
    public void mo26445e(int i) {
        if (i >= 0) {
            int i2 = this.f1516c + i;
            if (this.f1514a) {
                m26497n(i2);
            } else if (i2 > this.f1515b.length) {
                m26494q();
                return;
            }
            Arrays.fill(this.f1515b, this.f1516c, i2, (byte) 0);
            this.f1516c = i2;
            return;
        }
        throw new IllegalArgumentException("count < 0");
    }

    @Override // p015b2.InterfaceC0449q
    /* renamed from: f */
    public void mo26444f(int i) {
        if (this.f1516c == i) {
            return;
        }
        throw new C4557d("expected cursor " + i + "; actual value: " + this.f1516c);
    }

    @Override // p015b2.InterfaceC0449q
    /* renamed from: h */
    public int mo26443h(int i) {
        if (this.f1514a) {
            m26497n(this.f1516c + 5);
        }
        int i2 = this.f1516c;
        C4427n.m16520e(this, i);
        return this.f1516c - i2;
    }

    @Override // p015b2.InterfaceC0428a
    /* renamed from: i */
    public void mo26500i() {
        int size;
        ArrayList<C0436a> arrayList = this.f1518e;
        if (arrayList != null && (size = arrayList.size()) != 0) {
            this.f1518e.get(size - 1).m26485e(this.f1516c);
        }
    }

    @Override // p015b2.InterfaceC0449q
    /* renamed from: l */
    public void mo26441l(int i) {
        int i2 = i - 1;
        if (i >= 0 && (i & i2) == 0) {
            int i3 = (this.f1516c + i2) & (i2 ^ (-1));
            if (this.f1514a) {
                m26497n(i3);
            } else if (i3 > this.f1515b.length) {
                m26494q();
                return;
            }
            Arrays.fill(this.f1515b, this.f1516c, i3, (byte) 0);
            this.f1516c = i3;
            return;
        }
        throw new IllegalArgumentException("bogus alignment");
    }

    /* renamed from: m */
    public void m26498m(int i, boolean z) {
        if (this.f1518e == null && this.f1516c == 0) {
            if (i >= 40) {
                int i2 = (((i - 7) / 15) + 1) & (-2);
                if (i2 < 6) {
                    i2 = 6;
                } else if (i2 > 10) {
                    i2 = 10;
                }
                this.f1518e = new ArrayList<>((int) CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
                this.f1519f = i;
                this.f1520g = i2;
                this.f1517d = z;
                return;
            }
            throw new IllegalArgumentException("annotationWidth < 40");
        }
        throw new RuntimeException("cannot enable annotations");
    }

    /* renamed from: n */
    public final void m26497n(int i) {
        byte[] bArr = this.f1515b;
        if (bArr.length < i) {
            byte[] bArr2 = new byte[(i * 2) + CoreTile.FIXED_LEVEL_XP_REQUIREMENT];
            System.arraycopy(bArr, 0, bArr2, 0, this.f1516c);
            this.f1515b = bArr2;
        }
    }

    /* renamed from: r */
    public byte[] m26493r() {
        int i = this.f1516c;
        byte[] bArr = new byte[i];
        System.arraycopy(this.f1515b, 0, bArr, 0, i);
        return bArr;
    }

    /* renamed from: s */
    public void m26492s(byte[] bArr, int i, int i2) {
        int i3 = this.f1516c;
        int i4 = i3 + i2;
        int i5 = i + i2;
        if ((i | i2 | i4) >= 0 && i5 <= bArr.length) {
            if (this.f1514a) {
                m26497n(i4);
            } else if (i4 > this.f1515b.length) {
                m26494q();
                return;
            }
            System.arraycopy(bArr, i, this.f1515b, i3, i2);
            this.f1516c = i4;
            return;
        }
        throw new IndexOutOfBoundsException("bytes.length " + bArr.length + "; " + i + "..!" + i4);
    }

    /* renamed from: u */
    public int m26490u(int i) {
        if (this.f1514a) {
            m26497n(this.f1516c + 5);
        }
        int i2 = this.f1516c;
        C4427n.m16521d(this, i);
        return this.f1516c - i2;
    }

    @Override // p015b2.InterfaceC0449q, p111l1.InterfaceC4556c
    public void writeByte(int i) {
        int i2 = this.f1516c;
        int i3 = i2 + 1;
        if (this.f1514a) {
            m26497n(i3);
        } else if (i3 > this.f1515b.length) {
            m26494q();
            return;
        }
        this.f1515b[i2] = (byte) i;
        this.f1516c = i3;
    }

    @Override // p015b2.InterfaceC0449q
    public void writeInt(int i) {
        int i2 = this.f1516c;
        int i3 = i2 + 4;
        if (this.f1514a) {
            m26497n(i3);
        } else if (i3 > this.f1515b.length) {
            m26494q();
            return;
        }
        byte[] bArr = this.f1515b;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        bArr[i2 + 2] = (byte) (i >> 16);
        bArr[i2 + 3] = (byte) (i >> 24);
        this.f1516c = i3;
    }

    @Override // p015b2.InterfaceC0449q
    public void writeLong(long j) {
        int i = this.f1516c;
        int i2 = i + 8;
        if (this.f1514a) {
            m26497n(i2);
        } else if (i2 > this.f1515b.length) {
            m26494q();
            return;
        }
        int i3 = (int) j;
        byte[] bArr = this.f1515b;
        bArr[i] = (byte) i3;
        bArr[i + 1] = (byte) (i3 >> 8);
        bArr[i + 2] = (byte) (i3 >> 16);
        bArr[i + 3] = (byte) (i3 >> 24);
        int i4 = (int) (j >> 32);
        bArr[i + 4] = (byte) i4;
        bArr[i + 5] = (byte) (i4 >> 8);
        bArr[i + 6] = (byte) (i4 >> 16);
        bArr[i + 7] = (byte) (i4 >> 24);
        this.f1516c = i2;
    }

    @Override // p015b2.InterfaceC0449q
    public void writeShort(int i) {
        int i2 = this.f1516c;
        int i3 = i2 + 2;
        if (this.f1514a) {
            m26497n(i3);
        } else if (i3 > this.f1515b.length) {
            m26494q();
            return;
        }
        byte[] bArr = this.f1515b;
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >> 8);
        this.f1516c = i3;
    }

    public C0435e(int i) {
        this(new byte[i], true);
    }

    @Override // p015b2.InterfaceC0449q
    /* renamed from: k */
    public void mo26442k(C0432d c0432d) {
        int m26506q = c0432d.m26506q();
        int i = this.f1516c;
        int i2 = m26506q + i;
        if (this.f1514a) {
            m26497n(i2);
        } else if (i2 > this.f1515b.length) {
            m26494q();
            return;
        }
        c0432d.m26515h(this.f1515b, i);
        this.f1516c = i2;
    }

    /* renamed from: o */
    public void m26496o() {
        mo26500i();
        ArrayList<C0436a> arrayList = this.f1518e;
        if (arrayList != null) {
            for (int size = arrayList.size(); size > 0; size--) {
                int i = size - 1;
                C0436a c0436a = this.f1518e.get(i);
                if (c0436a.m26488b() > this.f1516c) {
                    this.f1518e.remove(i);
                } else {
                    int m26489a = c0436a.m26489a();
                    int i2 = this.f1516c;
                    if (m26489a > i2) {
                        c0436a.m26486d(i2);
                        return;
                    }
                    return;
                }
            }
        }
    }

    /* renamed from: t */
    public void m26491t(Writer writer) {
        int i;
        String m26487c;
        int i2;
        int i3;
        int mo26503c = mo26503c();
        C0451s c0451s = new C0451s(writer, (this.f1519f - mo26503c) - 1, mo26503c, "|");
        Writer m26436e = c0451s.m26436e();
        Writer m26435f = c0451s.m26435f();
        int size = this.f1518e.size();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            i = this.f1516c;
            if (i5 >= i || i4 >= size) {
                break;
            }
            C0436a c0436a = this.f1518e.get(i4);
            int m26488b = c0436a.m26488b();
            if (i5 < m26488b) {
                m26487c = "";
                i3 = m26488b;
                i2 = i5;
            } else {
                int m26489a = c0436a.m26489a();
                m26487c = c0436a.m26487c();
                i4++;
                i2 = m26488b;
                i3 = m26489a;
            }
            m26436e.write(C0438g.m26484a(this.f1515b, i2, i3 - i2, i2, this.f1520g, 6));
            m26435f.write(m26487c);
            c0451s.m26439b();
            i5 = i3;
        }
        if (i5 < i) {
            m26436e.write(C0438g.m26484a(this.f1515b, i5, i - i5, i5, this.f1520g, 6));
        }
        while (i4 < size) {
            m26435f.write(this.f1518e.get(i4).m26487c());
            i4++;
        }
        c0451s.m26439b();
    }

    public C0435e(byte[] bArr, boolean z) {
        if (bArr != null) {
            this.f1514a = z;
            this.f1515b = bArr;
            this.f1516c = 0;
            this.f1517d = false;
            this.f1518e = null;
            this.f1519f = 0;
            this.f1520g = 0;
            return;
        }
        throw new NullPointerException("data == null");
    }
}
