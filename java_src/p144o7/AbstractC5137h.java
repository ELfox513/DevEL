package p144o7;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import p218x1.C7221i;
/* renamed from: o7.h */
/* loaded from: classes2.dex */
public abstract class AbstractC5137h implements Iterable<Byte>, Serializable {

    /* renamed from: b */
    public static final AbstractC5137h f19422b = new C5147j(C5102a0.f19365c);

    /* renamed from: d */
    public static final InterfaceC5143f f19423d;

    /* renamed from: k */
    public static final Comparator<AbstractC5137h> f19424k;

    /* renamed from: a */
    public int f19425a = 0;

    /* renamed from: o7.h$a */
    /* loaded from: classes2.dex */
    public class C5138a extends AbstractC5140c {

        /* renamed from: a */
        public int f19426a = 0;

        /* renamed from: b */
        public final int f19427b;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f19426a < this.f19427b;
        }

        public C5138a() {
            this.f19427b = AbstractC5137h.this.size();
        }

        @Override // p144o7.AbstractC5137h.InterfaceC5144g
        /* renamed from: d */
        public byte mo14544d() {
            int i = this.f19426a;
            if (i < this.f19427b) {
                this.f19426a = i + 1;
                return AbstractC5137h.this.mo14535o(i);
            }
            throw new NoSuchElementException();
        }
    }

    /* renamed from: o7.h$c */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC5140c implements InterfaceC5144g {
        @Override // java.util.Iterator
        /* renamed from: a */
        public final Byte next() {
            return Byte.valueOf(mo14544d());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: o7.h$d */
    /* loaded from: classes2.dex */
    public static final class C5141d implements InterfaceC5143f {
        public C5141d() {
        }

        public /* synthetic */ C5141d(C5138a c5138a) {
            this();
        }

        @Override // p144o7.AbstractC5137h.InterfaceC5143f
        /* renamed from: a */
        public byte[] mo14530a(byte[] bArr, int i, int i2) {
            return Arrays.copyOfRange(bArr, i, i2 + i);
        }
    }

    /* renamed from: o7.h$e */
    /* loaded from: classes2.dex */
    public static final class C5142e extends C5147j {

        /* renamed from: q */
        public final int f19429q;

        /* renamed from: r */
        public final int f19430r;

        @Override // p144o7.AbstractC5137h.C5147j
        /* renamed from: M */
        public int mo14538M() {
            return this.f19429q;
        }

        @Override // p144o7.AbstractC5137h.C5147j, p144o7.AbstractC5137h
        /* renamed from: o */
        public byte mo14535o(int i) {
            return this.f19433p[this.f19429q + i];
        }

        @Override // p144o7.AbstractC5137h.C5147j, p144o7.AbstractC5137h
        public int size() {
            return this.f19430r;
        }

        @Override // p144o7.AbstractC5137h.C5147j, p144o7.AbstractC5137h
        /* renamed from: m */
        public void mo14536m(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.f19433p, mo14538M() + i, bArr, i2, i3);
        }

        public C5142e(byte[] bArr, int i, int i2) {
            super(bArr);
            AbstractC5137h.m14555i(i, i + i2, bArr.length);
            this.f19429q = i;
            this.f19430r = i2;
        }

        @Override // p144o7.AbstractC5137h.C5147j, p144o7.AbstractC5137h
        /* renamed from: e */
        public byte mo14537e(int i) {
            AbstractC5137h.m14556g(i, size());
            return this.f19433p[this.f19429q + i];
        }
    }

    /* renamed from: o7.h$f */
    /* loaded from: classes2.dex */
    public interface InterfaceC5143f {
        /* renamed from: a */
        byte[] mo14530a(byte[] bArr, int i, int i2);
    }

    /* renamed from: o7.h$g */
    /* loaded from: classes2.dex */
    public interface InterfaceC5144g extends Iterator<Byte> {
        /* renamed from: d */
        byte mo14544d();
    }

    /* renamed from: o7.h$h */
    /* loaded from: classes2.dex */
    public static final class C5145h {

        /* renamed from: a */
        public final AbstractC5163k f19431a;

        /* renamed from: b */
        public final byte[] f19432b;

        public /* synthetic */ C5145h(int i, C5138a c5138a) {
            this(i);
        }

        /* renamed from: b */
        public AbstractC5163k m14542b() {
            return this.f19431a;
        }

        public C5145h(int i) {
            byte[] bArr = new byte[i];
            this.f19432b = bArr;
            this.f19431a = AbstractC5163k.m14316d0(bArr);
        }

        /* renamed from: a */
        public AbstractC5137h m14543a() {
            this.f19431a.m14319c();
            return new C5147j(this.f19432b);
        }
    }

    /* renamed from: o7.h$i */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC5146i extends AbstractC5137h {
        @Override // p144o7.AbstractC5137h, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
            return super.iterator();
        }
    }

    /* renamed from: o7.h$j */
    /* loaded from: classes2.dex */
    public static class C5147j extends AbstractC5146i {

        /* renamed from: p */
        public final byte[] f19433p;

        @Override // p144o7.AbstractC5137h
        /* renamed from: A */
        public final String mo14541A(Charset charset) {
            return new String(this.f19433p, mo14538M(), size(), charset);
        }

        @Override // p144o7.AbstractC5137h
        /* renamed from: I */
        public final void mo14540I(AbstractC5134g abstractC5134g) {
            abstractC5134g.mo14266a(this.f19433p, mo14538M(), size());
        }

        /* renamed from: M */
        public int mo14538M() {
            return 0;
        }

        @Override // p144o7.AbstractC5137h
        /* renamed from: e */
        public byte mo14537e(int i) {
            return this.f19433p[i];
        }

        @Override // p144o7.AbstractC5137h
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AbstractC5137h) || size() != ((AbstractC5137h) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (obj instanceof C5147j) {
                C5147j c5147j = (C5147j) obj;
                int m14550v = m14550v();
                int m14550v2 = c5147j.m14550v();
                if (m14550v != 0 && m14550v2 != 0 && m14550v != m14550v2) {
                    return false;
                }
                return m14539K(c5147j, 0, size());
            }
            return obj.equals(this);
        }

        @Override // p144o7.AbstractC5137h
        /* renamed from: m */
        public void mo14536m(byte[] bArr, int i, int i2, int i3) {
            System.arraycopy(this.f19433p, i, bArr, i2, i3);
        }

        @Override // p144o7.AbstractC5137h
        /* renamed from: o */
        public byte mo14535o(int i) {
            return this.f19433p[i];
        }

        @Override // p144o7.AbstractC5137h
        public int size() {
            return this.f19433p.length;
        }

        @Override // p144o7.AbstractC5137h
        /* renamed from: u */
        public final int mo14532u(int i, int i2, int i3) {
            return C5102a0.m14651i(i, this.f19433p, mo14538M() + i2, i3);
        }

        @Override // p144o7.AbstractC5137h
        /* renamed from: t */
        public final AbstractC5151i mo14533t() {
            return AbstractC5151i.m14525h(this.f19433p, mo14538M(), size(), true);
        }

        public C5147j(byte[] bArr) {
            bArr.getClass();
            this.f19433p = bArr;
        }

        /* renamed from: K */
        public final boolean m14539K(AbstractC5137h abstractC5137h, int i, int i2) {
            if (i2 <= abstractC5137h.size()) {
                int i3 = i + i2;
                if (i3 <= abstractC5137h.size()) {
                    if (abstractC5137h instanceof C5147j) {
                        C5147j c5147j = (C5147j) abstractC5137h;
                        byte[] bArr = this.f19433p;
                        byte[] bArr2 = c5147j.f19433p;
                        int mo14538M = mo14538M() + i2;
                        int mo14538M2 = mo14538M();
                        int mo14538M3 = c5147j.mo14538M() + i;
                        while (mo14538M2 < mo14538M) {
                            if (bArr[mo14538M2] != bArr2[mo14538M3]) {
                                return false;
                            }
                            mo14538M2++;
                            mo14538M3++;
                        }
                        return true;
                    }
                    return abstractC5137h.mo14531w(i, i3).equals(mo14531w(0, i2));
                }
                throw new IllegalArgumentException("Ran off end of other: " + i + ", " + i2 + ", " + abstractC5137h.size());
            }
            throw new IllegalArgumentException("Length too large: " + i2 + size());
        }

        @Override // p144o7.AbstractC5137h
        /* renamed from: q */
        public final boolean mo14534q() {
            int mo14538M = mo14538M();
            return C5220t1.m14005n(this.f19433p, mo14538M, size() + mo14538M);
        }

        @Override // p144o7.AbstractC5137h
        /* renamed from: w */
        public final AbstractC5137h mo14531w(int i, int i2) {
            int m14555i = AbstractC5137h.m14555i(i, i2, size());
            if (m14555i == 0) {
                return AbstractC5137h.f19422b;
            }
            return new C5142e(this.f19433p, mo14538M() + i, m14555i);
        }
    }

    /* renamed from: o7.h$k */
    /* loaded from: classes2.dex */
    public static final class C5148k implements InterfaceC5143f {
        public C5148k() {
        }

        public /* synthetic */ C5148k(C5138a c5138a) {
            this();
        }

        @Override // p144o7.AbstractC5137h.InterfaceC5143f
        /* renamed from: a */
        public byte[] mo14530a(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return bArr2;
        }
    }

    /* renamed from: G */
    public static AbstractC5137h m14559G(byte[] bArr) {
        return new C5147j(bArr);
    }

    /* renamed from: H */
    public static AbstractC5137h m14558H(byte[] bArr, int i, int i2) {
        return new C5142e(bArr, i, i2);
    }

    /* renamed from: l */
    public static AbstractC5137h m14553l(String str) {
        return new C5147j(str.getBytes(C5102a0.f19363a));
    }

    /* renamed from: s */
    public static C5145h m14551s(int i) {
        return new C5145h(i, null);
    }

    /* renamed from: y */
    public static int m14548y(byte b) {
        return b & DefaultClassResolver.NAME;
    }

    /* renamed from: A */
    public abstract String mo14541A(Charset charset);

    /* renamed from: B */
    public final String m14561B() {
        return m14547z(C5102a0.f19363a);
    }

    /* renamed from: E */
    public final String m14560E() {
        if (size() <= 50) {
            return C5187m1.m14184a(this);
        }
        return C5187m1.m14184a(mo14531w(0, 47)) + "...";
    }

    /* renamed from: I */
    public abstract void mo14540I(AbstractC5134g abstractC5134g);

    /* renamed from: e */
    public abstract byte mo14537e(int i);

    public abstract boolean equals(Object obj);

    /* renamed from: m */
    public abstract void mo14536m(byte[] bArr, int i, int i2, int i3);

    /* renamed from: o */
    public abstract byte mo14535o(int i);

    /* renamed from: q */
    public abstract boolean mo14534q();

    @Override // java.lang.Iterable
    /* renamed from: r */
    public InterfaceC5144g iterator() {
        return new C5138a();
    }

    public abstract int size();

    /* renamed from: t */
    public abstract AbstractC5151i mo14533t();

    /* renamed from: u */
    public abstract int mo14532u(int i, int i2, int i3);

    /* renamed from: v */
    public final int m14550v() {
        return this.f19425a;
    }

    /* renamed from: w */
    public abstract AbstractC5137h mo14531w(int i, int i2);

    /* renamed from: z */
    public final String m14547z(Charset charset) {
        return size() == 0 ? "" : mo14541A(charset);
    }

    /* renamed from: o7.h$b */
    /* loaded from: classes2.dex */
    public static class C5139b implements Comparator<AbstractC5137h> {
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(AbstractC5137h abstractC5137h, AbstractC5137h abstractC5137h2) {
            InterfaceC5144g it = abstractC5137h.iterator();
            InterfaceC5144g it2 = abstractC5137h2.iterator();
            while (it.hasNext() && it2.hasNext()) {
                int m2085a = C7221i.m2085a(AbstractC5137h.m14548y(it.mo14544d()), AbstractC5137h.m14548y(it2.mo14544d()));
                if (m2085a != 0) {
                    return m2085a;
                }
            }
            return C7221i.m2085a(abstractC5137h.size(), abstractC5137h2.size());
        }
    }

    static {
        InterfaceC5143f c5141d;
        if (C5120d.m14626c()) {
            c5141d = new C5148k(null);
        } else {
            c5141d = new C5141d(null);
        }
        f19423d = c5141d;
        f19424k = new C5139b();
    }

    /* renamed from: g */
    public static void m14556g(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + i2);
        }
    }

    /* renamed from: i */
    public static int m14555i(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i >= 0) {
                if (i2 < i) {
                    throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i + ", " + i2);
                }
                throw new IndexOutOfBoundsException("End index: " + i2 + " >= " + i3);
            }
            throw new IndexOutOfBoundsException("Beginning index: " + i + " < 0");
        }
        return i4;
    }

    /* renamed from: k */
    public static AbstractC5137h m14554k(byte[] bArr, int i, int i2) {
        m14555i(i, i + i2, bArr.length);
        return new C5147j(f19423d.mo14530a(bArr, i, i2));
    }

    public final int hashCode() {
        int i = this.f19425a;
        if (i == 0) {
            int size = size();
            i = mo14532u(size, 0, size);
            if (i == 0) {
                i = 1;
            }
            this.f19425a = i;
        }
        return i;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), m14560E());
    }

    /* renamed from: x */
    public final byte[] m14549x() {
        int size = size();
        if (size == 0) {
            return C5102a0.f19365c;
        }
        byte[] bArr = new byte[size];
        mo14536m(bArr, 0, 0, size);
        return bArr;
    }
}
