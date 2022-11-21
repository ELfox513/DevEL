package p015b2;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.Arrays;
/* renamed from: b2.d */
/* loaded from: classes.dex */
public final class C0432d {

    /* renamed from: a */
    public final byte[] f1507a;

    /* renamed from: b */
    public final int f1508b;

    /* renamed from: c */
    public final int f1509c;

    /* renamed from: b2.d$b */
    /* loaded from: classes.dex */
    public class C0434b extends InputStream {

        /* renamed from: a */
        public int f1511a = 0;

        /* renamed from: b */
        public int f1512b = 0;

        @Override // java.io.InputStream
        public int available() {
            return C0432d.this.f1509c - this.f1511a;
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.f1512b = this.f1511a;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f1511a >= C0432d.this.f1509c) {
                return -1;
            }
            int m26510m = C0432d.this.m26510m(this.f1511a);
            this.f1511a++;
            return m26510m;
        }

        @Override // java.io.InputStream
        public void reset() {
            this.f1511a = this.f1512b;
        }

        public C0434b() {
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            if (i + i2 > bArr.length) {
                i2 = bArr.length - i;
            }
            int i3 = C0432d.this.f1509c - this.f1511a;
            if (i2 > i3) {
                i2 = i3;
            }
            System.arraycopy(C0432d.this.f1507a, this.f1511a + C0432d.this.f1508b, bArr, i, i2);
            this.f1511a += i2;
            return i2;
        }
    }

    public C0432d(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("bytes == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("start < 0");
        }
        if (i2 >= i) {
            if (i2 <= bArr.length) {
                this.f1507a = bArr;
                this.f1508b = i;
                this.f1509c = i2 - i;
                return;
            }
            throw new IllegalArgumentException("end > bytes.length");
        }
        throw new IllegalArgumentException("end < start");
    }

    /* renamed from: g */
    public final int m26516g(int i) {
        return this.f1507a[this.f1508b + i];
    }

    /* renamed from: h */
    public void m26515h(byte[] bArr, int i) {
        int length = bArr.length - i;
        int i2 = this.f1509c;
        if (length >= i2) {
            System.arraycopy(this.f1507a, this.f1508b, bArr, i, i2);
            return;
        }
        throw new IndexOutOfBoundsException("(out.length - offset) < size()");
    }

    /* renamed from: m */
    public final int m26510m(int i) {
        return this.f1507a[this.f1508b + i] & DefaultClassResolver.NAME;
    }

    /* renamed from: o */
    public C0433a m26508o() {
        return new C0433a(m26507p());
    }

    /* renamed from: p */
    public C0434b m26507p() {
        return new C0434b();
    }

    /* renamed from: q */
    public int m26506q() {
        return this.f1509c;
    }

    /* renamed from: b2.d$a */
    /* loaded from: classes.dex */
    public static class C0433a extends DataInputStream {

        /* renamed from: a */
        public final C0434b f1510a;

        public C0433a(C0434b c0434b) {
            super(c0434b);
            this.f1510a = c0434b;
        }
    }

    /* renamed from: e */
    public final void m26518e(int i, int i2) {
        if (i >= 0 && i2 >= i && i2 <= this.f1509c) {
            return;
        }
        throw new IllegalArgumentException("bad range: " + i + ".." + i2 + "; actual size " + this.f1509c);
    }

    /* renamed from: f */
    public int m26517f(int i) {
        m26518e(i, i + 1);
        return m26516g(i);
    }

    /* renamed from: i */
    public int m26514i(int i) {
        m26518e(i, i + 4);
        return m26510m(i + 3) | (m26516g(i) << 24) | (m26510m(i + 1) << 16) | (m26510m(i + 2) << 8);
    }

    /* renamed from: j */
    public long m26513j(int i) {
        m26518e(i, i + 8);
        int m26516g = (m26516g(i) << 24) | (m26510m(i + 1) << 16) | (m26510m(i + 2) << 8) | m26510m(i + 3);
        return ((m26510m(i + 7) | (m26516g(i + 4) << 24) | (m26510m(i + 5) << 16) | (m26510m(i + 6) << 8)) & 4294967295L) | (m26516g << 32);
    }

    /* renamed from: k */
    public int m26512k(int i) {
        m26518e(i, i + 2);
        return m26510m(i + 1) | (m26516g(i) << 8);
    }

    /* renamed from: l */
    public int m26511l(int i) {
        m26518e(i, i + 1);
        return m26510m(i);
    }

    /* renamed from: n */
    public int m26509n(int i) {
        m26518e(i, i + 2);
        return m26510m(i + 1) | (m26510m(i) << 8);
    }

    /* renamed from: r */
    public C0432d m26505r(int i, int i2) {
        m26518e(i, i2);
        return new C0432d(Arrays.copyOfRange(this.f1507a, i, i2));
    }

    public C0432d(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }
}
