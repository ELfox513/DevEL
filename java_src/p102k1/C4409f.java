package p102k1;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UTFDataFormatException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.AbstractList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.zip.Adler32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import p102k1.C4402c;
import p102k1.C4406e;
import p102k1.C4428o;
import p111l1.C4558e;
import p111l1.InterfaceC4555b;
import p111l1.InterfaceC4556c;
/* renamed from: k1.f */
/* loaded from: classes.dex */
public final class C4409f {

    /* renamed from: j */
    public static final short[] f18361j = new short[0];

    /* renamed from: a */
    public ByteBuffer f18362a;

    /* renamed from: b */
    public final C4434s f18363b;

    /* renamed from: c */
    public int f18364c;

    /* renamed from: d */
    public final C4417h f18365d;

    /* renamed from: e */
    public final C4418i f18366e;

    /* renamed from: f */
    public final C4419j f18367f;

    /* renamed from: g */
    public final C4415f f18368g;

    /* renamed from: h */
    public final C4413d f18369h;

    /* renamed from: i */
    public final C4414e f18370i;

    /* renamed from: k1.f$b */
    /* loaded from: classes.dex */
    public final class C4411b implements Iterable<C4405d> {
        public C4411b() {
        }

        @Override // java.lang.Iterable
        public Iterator<C4405d> iterator() {
            if (!C4409f.this.f18363b.f18428g.m16488d()) {
                return Collections.emptySet().iterator();
            }
            return new C4412c();
        }
    }

    /* renamed from: k1.f$d */
    /* loaded from: classes.dex */
    public final class C4413d extends AbstractList<C4426m> implements RandomAccess {
        public C4413d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return C4409f.this.f18363b.f18426e.f18449b;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public C4426m get(int i) {
            C4409f.m16636e(i, C4409f.this.f18363b.f18426e.f18449b);
            C4409f c4409f = C4409f.this;
            return c4409f.m16624q(c4409f.f18363b.f18426e.f18450d + (i * 8)).m16608D();
        }
    }

    /* renamed from: k1.f$e */
    /* loaded from: classes.dex */
    public final class C4414e extends AbstractList<C4431p> implements RandomAccess {
        public C4414e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return C4409f.this.f18363b.f18427f.f18449b;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public C4431p get(int i) {
            C4409f.m16636e(i, C4409f.this.f18363b.f18427f.f18449b);
            C4409f c4409f = C4409f.this;
            return c4409f.m16624q(c4409f.f18363b.f18427f.f18450d + (i * 8)).m16604H();
        }
    }

    /* renamed from: k1.f$f */
    /* loaded from: classes.dex */
    public final class C4415f extends AbstractList<C4433r> implements RandomAccess {
        public C4415f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return C4409f.this.f18363b.f18425d.f18449b;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public C4433r get(int i) {
            C4409f.m16636e(i, C4409f.this.f18363b.f18425d.f18449b);
            C4409f c4409f = C4409f.this;
            return c4409f.m16624q(c4409f.f18363b.f18425d.f18450d + (i * 12)).m16602J();
        }
    }

    /* renamed from: k1.f$g */
    /* loaded from: classes.dex */
    public final class C4416g implements InterfaceC4555b, InterfaceC4556c {

        /* renamed from: a */
        public final String f18378a;

        /* renamed from: b */
        public final ByteBuffer f18379b;

        /* renamed from: c */
        public final int f18380c;

        /* renamed from: F */
        public int m16606F() {
            return this.f18379b.getInt();
        }

        /* renamed from: K */
        public short m16601K() {
            return this.f18379b.getShort();
        }

        /* renamed from: M */
        public int m16599M() {
            return C4427n.m16524a(this);
        }

        /* renamed from: Q */
        public int m16595Q() {
            return C4427n.m16523b(this);
        }

        /* renamed from: R */
        public int m16594R() {
            return C4427n.m16523b(this) - 1;
        }

        /* renamed from: S */
        public int m16593S() {
            return m16601K() & 65535;
        }

        /* renamed from: U */
        public int m16591U() {
            return this.f18379b.position() - this.f18380c;
        }

        /* renamed from: V */
        public void m16590V(short[] sArr) {
            for (short s : sArr) {
                m16589W(s);
            }
        }

        /* renamed from: W */
        public void m16589W(short s) {
            this.f18379b.putShort(s);
        }

        /* renamed from: b0 */
        public void m16584b0(int i) {
            m16585a0(i + 1);
        }

        /* renamed from: c0 */
        public void m16583c0(int i) {
            short s = (short) i;
            if (i == (65535 & s)) {
                m16589W(s);
                return;
            }
            throw new IllegalArgumentException("Expected an unsigned short: " + i);
        }

        /* renamed from: o */
        public void m16580o() {
            ByteBuffer byteBuffer = this.f18379b;
            byteBuffer.position((byteBuffer.position() + 3) & (-4));
        }

        /* renamed from: r */
        public final int m16577r(C4406e.C4407a[] c4407aArr, int i) {
            for (int i2 = 0; i2 < c4407aArr.length; i2++) {
                if (c4407aArr[i2].m16645c() == i) {
                    return i2;
                }
            }
            throw new IllegalArgumentException();
        }

        @Override // p111l1.InterfaceC4555b
        public byte readByte() {
            return this.f18379b.get();
        }

        /* renamed from: t */
        public int m16575t() {
            return this.f18379b.position();
        }

        public void write(byte[] bArr) {
            this.f18379b.put(bArr);
        }

        @Override // p111l1.InterfaceC4556c
        public void writeByte(int i) {
            this.f18379b.put((byte) i);
        }

        public void writeInt(int i) {
            this.f18379b.putInt(i);
        }

        public C4416g(String str, ByteBuffer byteBuffer) {
            this.f18378a = str;
            this.f18379b = byteBuffer;
            this.f18380c = byteBuffer.position();
        }

        /* renamed from: C */
        public C4423j m16609C() {
            int position = this.f18379b.position();
            new C4425l(this, 28).m16530w();
            return new C4423j(m16576s(position));
        }

        /* renamed from: E */
        public final C4402c.C4403a[] m16607E(int i) {
            C4402c.C4403a[] c4403aArr = new C4402c.C4403a[i];
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                i2 += m16595Q();
                c4403aArr[i3] = new C4402c.C4403a(i2, m16595Q());
            }
            return c4403aArr;
        }

        /* renamed from: I */
        public final C4402c.C4404b[] m16603I(int i) {
            C4402c.C4404b[] c4404bArr = new C4402c.C4404b[i];
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                i2 += m16595Q();
                c4404bArr[i3] = new C4402c.C4404b(i2, m16595Q(), m16595Q());
            }
            return c4404bArr;
        }

        /* renamed from: L */
        public short[] m16600L(int i) {
            if (i == 0) {
                return C4409f.f18361j;
            }
            short[] sArr = new short[i];
            for (int i2 = 0; i2 < i; i2++) {
                sArr[i2] = m16601K();
            }
            return sArr;
        }

        /* renamed from: O */
        public final C4406e.C4408b[] m16597O(int i, C4406e.C4407a[] c4407aArr) {
            C4406e.C4408b[] c4408bArr = new C4406e.C4408b[i];
            for (int i2 = 0; i2 < i; i2++) {
                c4408bArr[i2] = new C4406e.C4408b(m16606F(), m16593S(), m16577r(c4407aArr, m16593S()));
            }
            return c4408bArr;
        }

        /* renamed from: T */
        public void m16592T(int i) {
            if (i >= 0) {
                ByteBuffer byteBuffer = this.f18379b;
                byteBuffer.position(byteBuffer.position() + i);
                return;
            }
            throw new IllegalArgumentException();
        }

        /* renamed from: p */
        public void m16579p() {
            while ((this.f18379b.position() & 3) != 0) {
                this.f18379b.put((byte) 0);
            }
        }

        /* renamed from: q */
        public void m16578q() {
            if ((this.f18379b.position() & 3) == 0) {
                return;
            }
            throw new IllegalStateException("Not four byte aligned!");
        }

        /* renamed from: s */
        public final byte[] m16576s(int i) {
            byte[] bArr = new byte[this.f18379b.position() - i];
            this.f18379b.position(i);
            this.f18379b.get(bArr);
            return bArr;
        }

        /* renamed from: v */
        public byte[] m16573v(int i) {
            byte[] bArr = new byte[i];
            this.f18379b.get(bArr);
            return bArr;
        }

        /* renamed from: y */
        public final C4406e.C4407a[] m16570y() {
            int position = this.f18379b.position();
            int m16595Q = m16595Q();
            C4406e.C4407a[] c4407aArr = new C4406e.C4407a[m16595Q];
            for (int i = 0; i < m16595Q; i++) {
                c4407aArr[i] = m16571x(this.f18379b.position() - position);
            }
            return c4407aArr;
        }

        /* renamed from: A */
        public C4405d m16611A() {
            return new C4405d(C4409f.this, m16575t(), m16606F(), m16606F(), m16606F(), m16606F(), m16606F(), m16606F(), m16606F(), m16606F());
        }

        /* renamed from: B */
        public final C4406e m16610B() {
            C4406e.C4408b[] c4408bArr;
            C4406e.C4407a[] c4407aArr;
            int m16593S = m16593S();
            int m16593S2 = m16593S();
            int m16593S3 = m16593S();
            int m16593S4 = m16593S();
            int m16606F = m16606F();
            short[] m16600L = m16600L(m16606F());
            if (m16593S4 > 0) {
                if (m16600L.length % 2 == 1) {
                    m16601K();
                }
                C4416g m16624q = C4409f.this.m16624q(this.f18379b.position());
                m16592T(m16593S4 * 8);
                c4407aArr = m16570y();
                c4408bArr = m16624q.m16597O(m16593S4, c4407aArr);
            } else {
                c4408bArr = new C4406e.C4408b[0];
                c4407aArr = new C4406e.C4407a[0];
            }
            return new C4406e(m16593S, m16593S2, m16593S3, m16606F, m16600L, c4408bArr, c4407aArr);
        }

        /* renamed from: D */
        public C4426m m16608D() {
            return new C4426m(C4409f.this, m16593S(), m16593S(), m16606F());
        }

        /* renamed from: G */
        public C4428o m16605G() {
            return new C4428o(C4409f.this, C4428o.EnumC4430b.m16512d(m16593S()), m16593S(), m16593S(), m16593S());
        }

        /* renamed from: H */
        public C4431p m16604H() {
            return new C4431p(C4409f.this, m16593S(), m16593S(), m16606F());
        }

        /* renamed from: J */
        public C4433r m16602J() {
            return new C4433r(C4409f.this, m16606F(), m16606F(), m16606F());
        }

        /* renamed from: N */
        public String m16598N() {
            int m16606F = m16606F();
            int position = this.f18379b.position();
            int limit = this.f18379b.limit();
            this.f18379b.position(m16606F);
            ByteBuffer byteBuffer = this.f18379b;
            byteBuffer.limit(byteBuffer.capacity());
            try {
                try {
                    int m16595Q = m16595Q();
                    String m16504b = C4432q.m16504b(this, new char[m16595Q]);
                    if (m16504b.length() == m16595Q) {
                        return m16504b;
                    }
                    throw new C4420g("Declared length " + m16595Q + " doesn't match decoded length of " + m16504b.length());
                } catch (UTFDataFormatException e) {
                    throw new C4420g(e);
                }
            } finally {
                this.f18379b.position(position);
                this.f18379b.limit(limit);
            }
        }

        /* renamed from: P */
        public C4436t m16596P() {
            short[] m16600L = m16600L(m16606F());
            m16580o();
            return new C4436t(C4409f.this, m16600L);
        }

        /* renamed from: X */
        public void m16588X(int i) {
            try {
                C4427n.m16521d(this, i);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new C4420g("Section limit " + this.f18379b.limit() + " exceeded by " + this.f18378a);
            }
        }

        /* renamed from: Y */
        public void m16587Y(String str) {
            try {
                m16585a0(str.length());
                write(C4432q.m16502d(str));
                writeByte(0);
            } catch (UTFDataFormatException unused) {
                throw new AssertionError();
            }
        }

        /* renamed from: Z */
        public void m16586Z(C4436t c4436t) {
            short[] m16486d = c4436t.m16486d();
            writeInt(m16486d.length);
            for (short s : m16486d) {
                m16589W(s);
            }
            m16579p();
        }

        /* renamed from: a0 */
        public void m16585a0(int i) {
            try {
                C4427n.m16520e(this, i);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new C4420g("Section limit " + this.f18379b.limit() + " exceeded by " + this.f18378a);
            }
        }

        /* renamed from: u */
        public C4400a m16574u() {
            byte readByte = readByte();
            int position = this.f18379b.position();
            new C4425l(this, 29).m16530w();
            return new C4400a(C4409f.this, readByte, new C4423j(m16576s(position)));
        }

        /* renamed from: w */
        public C4401b m16572w() {
            return new C4401b(C4409f.this, m16606F());
        }

        /* renamed from: x */
        public final C4406e.C4407a m16571x(int i) {
            int i2;
            int m16599M = m16599M();
            int abs = Math.abs(m16599M);
            int[] iArr = new int[abs];
            int[] iArr2 = new int[abs];
            for (int i3 = 0; i3 < abs; i3++) {
                iArr[i3] = m16595Q();
                iArr2[i3] = m16595Q();
            }
            if (m16599M <= 0) {
                i2 = m16595Q();
            } else {
                i2 = -1;
            }
            return new C4406e.C4407a(iArr, iArr2, i2, i);
        }

        /* renamed from: z */
        public final C4402c m16569z() {
            return new C4402c(m16607E(m16595Q()), m16607E(m16595Q()), m16603I(m16595Q()), m16603I(m16595Q()));
        }
    }

    /* renamed from: k1.f$h */
    /* loaded from: classes.dex */
    public final class C4417h extends AbstractList<String> implements RandomAccess {
        public C4417h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return C4409f.this.f18363b.f18423b.f18449b;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public String get(int i) {
            C4409f.m16636e(i, C4409f.this.f18363b.f18423b.f18449b);
            C4409f c4409f = C4409f.this;
            return c4409f.m16624q(c4409f.f18363b.f18423b.f18450d + (i * 4)).m16598N();
        }
    }

    /* renamed from: k1.f$i */
    /* loaded from: classes.dex */
    public final class C4418i extends AbstractList<Integer> implements RandomAccess {
        public C4418i() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public Integer get(int i) {
            return Integer.valueOf(C4409f.this.m16632i(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return C4409f.this.f18363b.f18424c.f18449b;
        }
    }

    /* renamed from: k1.f$j */
    /* loaded from: classes.dex */
    public final class C4419j extends AbstractList<String> implements RandomAccess {
        public C4419j() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public String get(int i) {
            return C4409f.this.f18365d.get(C4409f.this.m16632i(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return C4409f.this.f18363b.f18424c.f18449b;
        }
    }

    public C4409f(byte[] bArr) {
        this(ByteBuffer.wrap(bArr));
    }

    /* renamed from: e */
    public static void m16636e(int i, int i2) {
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException("index:" + i + ", length=" + i2);
        }
    }

    /* renamed from: f */
    public Iterable<C4405d> m16635f() {
        return new C4411b();
    }

    /* renamed from: j */
    public List<C4426m> m16631j() {
        return this.f18369h;
    }

    /* renamed from: l */
    public int m16629l() {
        return this.f18362a.capacity();
    }

    /* renamed from: m */
    public int m16628m() {
        return this.f18364c;
    }

    /* renamed from: n */
    public C4434s m16627n() {
        return this.f18363b;
    }

    /* renamed from: p */
    public List<C4431p> m16625p() {
        return this.f18370i;
    }

    /* renamed from: r */
    public List<C4433r> m16623r() {
        return this.f18368g;
    }

    /* renamed from: v */
    public List<String> m16619v() {
        return this.f18365d;
    }

    /* renamed from: w */
    public List<String> m16618w() {
        return this.f18367f;
    }

    /* renamed from: k1.f$c */
    /* loaded from: classes.dex */
    public final class C4412c implements Iterator<C4405d> {

        /* renamed from: a */
        public final C4416g f18372a;

        /* renamed from: b */
        public int f18373b;

        public C4412c() {
            this.f18372a = C4409f.this.m16624q(C4409f.this.f18363b.f18428g.f18450d);
            this.f18373b = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f18373b < C4409f.this.f18363b.f18428g.f18449b;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public C4405d next() {
            if (hasNext()) {
                this.f18373b++;
                return this.f18372a.m16611A();
            }
            throw new NoSuchElementException();
        }
    }

    public C4409f(ByteBuffer byteBuffer) {
        C4434s c4434s = new C4434s();
        this.f18363b = c4434s;
        this.f18364c = 0;
        this.f18365d = new C4417h();
        this.f18366e = new C4418i();
        this.f18367f = new C4419j();
        this.f18368g = new C4415f();
        this.f18369h = new C4413d();
        this.f18370i = new C4414e();
        this.f18362a = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        c4434s.m16494c(this);
    }

    /* renamed from: d */
    public C4416g m16637d(int i, String str) {
        if ((i & 3) == 0) {
            int i2 = this.f18364c + i;
            ByteBuffer duplicate = this.f18362a.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            duplicate.position(this.f18364c);
            duplicate.limit(i2);
            C4416g c4416g = new C4416g(str, duplicate);
            this.f18364c = i2;
            return c4416g;
        }
        throw new IllegalStateException("Not four byte aligned!");
    }

    /* renamed from: g */
    public int m16634g() {
        Adler32 adler32 = new Adler32();
        byte[] bArr = new byte[8192];
        ByteBuffer duplicate = this.f18362a.duplicate();
        duplicate.limit(duplicate.capacity());
        duplicate.position(12);
        while (duplicate.hasRemaining()) {
            int min = Math.min(8192, duplicate.remaining());
            duplicate.get(bArr, 0, min);
            adler32.update(bArr, 0, min);
        }
        return (int) adler32.getValue();
    }

    /* renamed from: h */
    public byte[] m16633h() {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bArr = new byte[8192];
            ByteBuffer duplicate = this.f18362a.duplicate();
            duplicate.limit(duplicate.capacity());
            duplicate.position(32);
            while (duplicate.hasRemaining()) {
                int min = Math.min(8192, duplicate.remaining());
                duplicate.get(bArr, 0, min);
                messageDigest.update(bArr, 0, min);
            }
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    /* renamed from: i */
    public int m16632i(int i) {
        m16636e(i, this.f18363b.f18424c.f18449b);
        return this.f18362a.getInt(this.f18363b.f18424c.f18450d + (i * 4));
    }

    /* renamed from: k */
    public byte[] m16630k() {
        ByteBuffer duplicate = this.f18362a.duplicate();
        byte[] bArr = new byte[duplicate.capacity()];
        duplicate.position(0);
        duplicate.get(bArr);
        return bArr;
    }

    /* renamed from: o */
    public final void m16626o(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                ByteBuffer wrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
                this.f18362a = wrap;
                wrap.order(ByteOrder.LITTLE_ENDIAN);
                this.f18363b.m16494c(this);
                return;
            }
        }
    }

    /* renamed from: q */
    public C4416g m16624q(int i) {
        if (i >= 0 && i < this.f18362a.capacity()) {
            ByteBuffer duplicate = this.f18362a.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            duplicate.position(i);
            duplicate.limit(this.f18362a.capacity());
            return new C4416g("section", duplicate);
        }
        throw new IllegalArgumentException("position=" + i + " length=" + this.f18362a.capacity());
    }

    /* renamed from: u */
    public C4436t m16620u(int i) {
        if (i == 0) {
            return C4436t.f18452d;
        }
        return m16624q(i).m16596P();
    }

    /* renamed from: x */
    public void m16617x() {
        m16624q(12).write(m16633h());
        m16624q(8).writeInt(m16634g());
    }

    /* renamed from: y */
    public void m16616y(OutputStream outputStream) {
        byte[] bArr = new byte[8192];
        ByteBuffer duplicate = this.f18362a.duplicate();
        duplicate.clear();
        while (duplicate.hasRemaining()) {
            int min = Math.min(8192, duplicate.remaining());
            duplicate.get(bArr, 0, min);
            outputStream.write(bArr, 0, min);
        }
    }

    /* renamed from: s */
    public C4402c m16622s(C4405d c4405d) {
        int m16662c = c4405d.m16662c();
        if (m16662c != 0) {
            return m16624q(m16662c).m16569z();
        }
        throw new IllegalArgumentException("offset == 0");
    }

    /* renamed from: t */
    public C4406e m16621t(C4402c.C4404b c4404b) {
        int m16666b = c4404b.m16666b();
        if (m16666b != 0) {
            return m16624q(m16666b).m16610B();
        }
        throw new IllegalArgumentException("offset == 0");
    }

    public C4409f(int i) {
        this.f18363b = new C4434s();
        this.f18364c = 0;
        this.f18365d = new C4417h();
        this.f18366e = new C4418i();
        this.f18367f = new C4419j();
        this.f18368g = new C4415f();
        this.f18369h = new C4413d();
        this.f18370i = new C4414e();
        ByteBuffer wrap = ByteBuffer.wrap(new byte[i]);
        this.f18362a = wrap;
        wrap.order(ByteOrder.LITTLE_ENDIAN);
    }

    public C4409f(File file) {
        this.f18363b = new C4434s();
        this.f18364c = 0;
        this.f18365d = new C4417h();
        this.f18366e = new C4418i();
        this.f18367f = new C4419j();
        this.f18368g = new C4415f();
        this.f18369h = new C4413d();
        this.f18370i = new C4414e();
        if (C4558e.m16009a(file.getName())) {
            ZipFile zipFile = new ZipFile(file);
            ZipEntry entry = zipFile.getEntry("classes.dex");
            if (entry != null) {
                InputStream inputStream = zipFile.getInputStream(entry);
                try {
                    m16626o(inputStream);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    zipFile.close();
                    return;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th3) {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th3);
                            }
                        }
                        throw th2;
                    }
                }
            }
            throw new C4420g("Expected classes.dex in " + file);
        } else if (file.getName().endsWith(".dex")) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                m16626o(fileInputStream);
                fileInputStream.close();
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th6) {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th6);
                    }
                    throw th5;
                }
            }
        } else {
            throw new C4420g("unknown output extension: " + file);
        }
    }
}
