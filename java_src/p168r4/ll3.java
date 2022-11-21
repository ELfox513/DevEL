package p168r4;

import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: r4.ll3 */
/* loaded from: classes2.dex */
public abstract class ll3 implements Iterable<Byte>, Serializable {

    /* renamed from: b */
    public static final ll3 f27255b = new hl3(zm3.f34682c);

    /* renamed from: d */
    public static final Comparator<ll3> f27256d;

    /* renamed from: k */
    public static final kl3 f27257k;

    /* renamed from: a */
    public int f27258a = 0;

    /* renamed from: I */
    public static ll3 m9632I(byte[] bArr) {
        return m9633H(bArr, 0, bArr.length);
    }

    /* renamed from: K */
    public static ll3 m9631K(byte[] bArr) {
        return new hl3(bArr);
    }

    /* renamed from: M */
    public static ll3 m9630M(String str) {
        return new hl3(str.getBytes(zm3.f34680a));
    }

    /* renamed from: e */
    public static jl3 m9624e() {
        return new jl3(128);
    }

    /* renamed from: q */
    public static ll3 m9620q(Iterator<ll3> it, int i) {
        if (i > 0) {
            if (i == 1) {
                return it.next();
            }
            int i2 = i >>> 1;
            ll3 m9620q = m9620q(it, i2);
            ll3 m9620q2 = m9620q(it, i - i2);
            if (Integer.MAX_VALUE - m9620q.mo7747o() >= m9620q2.mo7747o()) {
                return qo3.m7754T(m9620q, m9620q2);
            }
            int mo7747o = m9620q.mo7747o();
            int mo7747o2 = m9620q2.mo7747o();
            StringBuilder sb = new StringBuilder(53);
            sb.append("ByteString would be too long: ");
            sb.append(mo7747o);
            sb.append("+");
            sb.append(mo7747o2);
            throw new IllegalArgumentException(sb.toString());
        }
        throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i)));
    }

    /* renamed from: A */
    public abstract int mo7757A(int i, int i2, int i3);

    /* renamed from: B */
    public abstract rl3 mo7756B();

    @Override // java.lang.Iterable
    /* renamed from: E */
    public fl3 iterator() {
        return new bl3(this);
    }

    /* renamed from: G */
    public final boolean m9634G() {
        return mo7747o() == 0;
    }

    /* renamed from: d */
    public final String m9625d(Charset charset) {
        return mo7747o() == 0 ? "" : mo7741x(charset);
    }

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public final int m9623g() {
        return this.f27258a;
    }

    public final int hashCode() {
        int i = this.f27258a;
        if (i == 0) {
            int mo7747o = mo7747o();
            i = mo7757A(mo7747o, 0, mo7747o);
            if (i == 0) {
                i = 1;
            }
            this.f27258a = i;
        }
        return i;
    }

    /* renamed from: l */
    public abstract byte mo7749l(int i);

    /* renamed from: m */
    public abstract byte mo7748m(int i);

    /* renamed from: o */
    public abstract int mo7747o();

    /* renamed from: r */
    public abstract void mo7746r(byte[] bArr, int i, int i2, int i3);

    /* renamed from: s */
    public abstract int mo7745s();

    /* renamed from: t */
    public abstract boolean mo7744t();

    /* renamed from: u */
    public abstract ll3 mo7743u(int i, int i2);

    /* renamed from: v */
    public abstract ByteBuffer mo9619v();

    /* renamed from: w */
    public abstract void mo7742w(al3 al3Var);

    /* renamed from: x */
    public abstract String mo7741x(Charset charset);

    /* renamed from: y */
    public abstract boolean mo7740y();

    /* renamed from: z */
    public abstract int mo7739z(int i, int i2, int i3);

    static {
        int i = wk3.f33218a;
        f27257k = new kl3(null);
        f27256d = new cl3();
    }

    /* renamed from: H */
    public static ll3 m9633H(byte[] bArr, int i, int i2) {
        m9621k(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new hl3(bArr2);
    }

    /* renamed from: N */
    public static ll3 m9629N(InputStream inputStream) {
        ll3 m9633H;
        ArrayList arrayList = new ArrayList();
        int i = 256;
        while (true) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i) {
                int read = inputStream.read(bArr, i2, i - i2);
                if (read == -1) {
                    break;
                }
                i2 += read;
            }
            if (i2 == 0) {
                m9633H = null;
            } else {
                m9633H = m9633H(bArr, 0, i2);
            }
            if (m9633H == null) {
                return m9628O(arrayList);
            }
            arrayList.add(m9633H);
            i = Math.min(i + i, 8192);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: O */
    public static ll3 m9628O(Iterable<ll3> iterable) {
        int size;
        if (!(iterable instanceof Collection)) {
            Iterator it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        } else {
            size = iterable.size();
        }
        if (size == 0) {
            return f27255b;
        }
        return m9620q(iterable.iterator(), size);
    }

    /* renamed from: i */
    public static void m9622i(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
    }

    /* renamed from: k */
    public static int m9621k(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i >= 0) {
                if (i2 < i) {
                    StringBuilder sb = new StringBuilder(66);
                    sb.append("Beginning index larger than ending index: ");
                    sb.append(i);
                    sb.append(", ");
                    sb.append(i2);
                    throw new IndexOutOfBoundsException(sb.toString());
                }
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("End index: ");
                sb2.append(i2);
                sb2.append(" >= ");
                sb2.append(i3);
                throw new IndexOutOfBoundsException(sb2.toString());
            }
            StringBuilder sb3 = new StringBuilder(32);
            sb3.append("Beginning index: ");
            sb3.append(i);
            sb3.append(" < 0");
            throw new IndexOutOfBoundsException(sb3.toString());
        }
        return i4;
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(mo7747o());
        if (mo7747o() <= 50) {
            concat = fp3.m11398a(this);
        } else {
            concat = fp3.m11398a(mo7743u(0, 47)).concat("...");
        }
        objArr[2] = concat;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    @Deprecated
    /* renamed from: Q */
    public final void m9627Q(byte[] bArr, int i, int i2, int i3) {
        m9621k(0, i3, mo7747o());
        m9621k(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            mo7746r(bArr, 0, i2, i3);
        }
    }

    /* renamed from: R */
    public final byte[] m9626R() {
        int mo7747o = mo7747o();
        if (mo7747o == 0) {
            return zm3.f34682c;
        }
        byte[] bArr = new byte[mo7747o];
        mo7746r(bArr, 0, 0, mo7747o);
        return bArr;
    }
}
