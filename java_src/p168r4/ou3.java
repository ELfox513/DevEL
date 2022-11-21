package p168r4;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: r4.ou3 */
/* loaded from: classes2.dex */
public final class ou3 {

    /* renamed from: a */
    public final C6423xb f29147a = new C6423xb(32);

    /* renamed from: b */
    public nu3 f29148b;

    /* renamed from: c */
    public nu3 f29149c;

    /* renamed from: d */
    public nu3 f29150d;

    /* renamed from: e */
    public long f29151e;

    /* renamed from: f */
    public final qw3 f29152f;

    /* renamed from: b */
    public final void m8681b() {
        this.f29149c = this.f29148b;
    }

    /* renamed from: c */
    public final void m8680c(C5861i4 c5861i4, ru3 ru3Var) {
        this.f29149c = m8672k(this.f29149c, c5861i4, ru3Var, this.f29147a);
    }

    /* renamed from: d */
    public final void m8679d(C5861i4 c5861i4, ru3 ru3Var) {
        m8672k(this.f29149c, c5861i4, ru3Var, this.f29147a);
    }

    /* renamed from: f */
    public final long m8677f() {
        return this.f29151e;
    }

    /* renamed from: k */
    public static nu3 m8672k(nu3 nu3Var, C5861i4 c5861i4, ru3 ru3Var, C6423xb c6423xb) {
        nu3 nu3Var2;
        int i;
        if (c5861i4.m10727j()) {
            long j = ru3Var.f30696b;
            c6423xb.m5410i(1);
            nu3 m8670m = m8670m(nu3Var, j, c6423xb.m5402q(), 1);
            long j2 = j + 1;
            byte b = c6423xb.m5402q()[0];
            int i2 = b & 128;
            int i3 = b & Byte.MAX_VALUE;
            C5709e1 c5709e1 = c5861i4.f24957b;
            byte[] bArr = c5709e1.f22716a;
            if (bArr == null) {
                c5709e1.f22716a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            nu3Var2 = m8670m(m8670m, j2, c5709e1.f22716a, i3);
            long j3 = j2 + i3;
            if (i2 != 0) {
                c6423xb.m5410i(2);
                nu3Var2 = m8670m(nu3Var2, j3, c6423xb.m5402q(), 2);
                j3 += 2;
                i = c6423xb.m5396w();
            } else {
                i = 1;
            }
            int[] iArr = c5709e1.f22718c;
            if (iArr == null || iArr.length < i) {
                iArr = new int[i];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = c5709e1.f22719d;
            if (iArr3 == null || iArr3.length < i) {
                iArr3 = new int[i];
            }
            int[] iArr4 = iArr3;
            if (i2 != 0) {
                int i4 = i * 6;
                c6423xb.m5410i(i4);
                nu3Var2 = m8670m(nu3Var2, j3, c6423xb.m5402q(), i4);
                j3 += i4;
                c6423xb.m5403p(0);
                for (int i5 = 0; i5 < i; i5++) {
                    iArr2[i5] = c6423xb.m5396w();
                    iArr4[i5] = c6423xb.m5417b();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = ru3Var.f30695a - ((int) (j3 - ru3Var.f30696b));
            }
            c14 c14Var = ru3Var.f30697c;
            int i6 = C5979lc.f27164a;
            c5709e1.m11884a(i, iArr2, iArr4, c14Var.f21309b, c5709e1.f22716a, c14Var.f21308a, c14Var.f21310c, c14Var.f21311d);
            long j4 = ru3Var.f30696b;
            int i7 = (int) (j3 - j4);
            ru3Var.f30696b = j4 + i7;
            ru3Var.f30695a -= i7;
        } else {
            nu3Var2 = nu3Var;
        }
        if (c5861i4.m7888e()) {
            c6423xb.m5410i(4);
            nu3 m8670m2 = m8670m(nu3Var2, ru3Var.f30696b, c6423xb.m5402q(), 4);
            int m5417b = c6423xb.m5417b();
            ru3Var.f30696b += 4;
            ru3Var.f30695a -= 4;
            c5861i4.m10728i(m5417b);
            nu3 m8671l = m8671l(m8670m2, ru3Var.f30696b, c5861i4.f24958c, m5417b);
            ru3Var.f30696b += m5417b;
            int i8 = ru3Var.f30695a - m5417b;
            ru3Var.f30695a = i8;
            ByteBuffer byteBuffer = c5861i4.f24961f;
            if (byteBuffer != null && byteBuffer.capacity() >= i8) {
                c5861i4.f24961f.clear();
            } else {
                c5861i4.f24961f = ByteBuffer.allocate(i8);
            }
            return m8671l(m8671l, ru3Var.f30696b, c5861i4.f24961f, ru3Var.f30695a);
        }
        c5861i4.m10728i(ru3Var.f30695a);
        return m8671l(nu3Var2, ru3Var.f30696b, c5861i4.f24958c, ru3Var.f30695a);
    }

    /* renamed from: n */
    public static nu3 m8669n(nu3 nu3Var, long j) {
        while (j >= nu3Var.f28492b) {
            nu3Var = nu3Var.f28495e;
        }
        return nu3Var;
    }

    /* renamed from: a */
    public final void m8682a() {
        nu3 nu3Var = this.f29148b;
        if (nu3Var.f28493c) {
            nu3 nu3Var2 = this.f29150d;
            int i = (nu3Var2.f28493c ? 1 : 0) + (((int) (nu3Var2.f28491a - nu3Var.f28491a)) / 65536);
            dw3[] dw3VarArr = new dw3[i];
            for (int i2 = 0; i2 < i; i2++) {
                dw3VarArr[i2] = nu3Var.f28494d;
                nu3Var = nu3Var.m8994b();
            }
            this.f29152f.m7650e(dw3VarArr);
        }
        nu3 nu3Var3 = new nu3(0L, 65536);
        this.f29148b = nu3Var3;
        this.f29149c = nu3Var3;
        this.f29150d = nu3Var3;
        this.f29151e = 0L;
        this.f29152f.m7649f();
    }

    /* renamed from: e */
    public final void m8678e(long j) {
        nu3 nu3Var;
        if (j != -1) {
            while (true) {
                nu3Var = this.f29148b;
                if (j < nu3Var.f28492b) {
                    break;
                }
                this.f29152f.m7651d(nu3Var.f28494d);
                this.f29148b = this.f29148b.m8994b();
            }
            if (this.f29149c.f28491a < nu3Var.f28491a) {
                this.f29149c = nu3Var;
            }
        }
    }

    /* renamed from: h */
    public final void m8675h(C6423xb c6423xb, int i) {
        while (i > 0) {
            int m8674i = m8674i(i);
            nu3 nu3Var = this.f29150d;
            c6423xb.m5398u(nu3Var.f28494d.f22665a, nu3Var.m8995a(this.f29151e), m8674i);
            i -= m8674i;
            m8673j(m8674i);
        }
    }

    /* renamed from: i */
    public final int m8674i(int i) {
        nu3 nu3Var = this.f29150d;
        if (!nu3Var.f28493c) {
            dw3 m7652c = this.f29152f.m7652c();
            nu3 nu3Var2 = new nu3(this.f29150d.f28492b, 65536);
            nu3Var.f28494d = m7652c;
            nu3Var.f28495e = nu3Var2;
            nu3Var.f28493c = true;
        }
        return Math.min(i, (int) (this.f29150d.f28492b - this.f29151e));
    }

    /* renamed from: j */
    public final void m8673j(int i) {
        long j = this.f29151e + i;
        this.f29151e = j;
        nu3 nu3Var = this.f29150d;
        if (j == nu3Var.f28492b) {
            this.f29150d = nu3Var.f28495e;
        }
    }

    public ou3(qw3 qw3Var, byte[] bArr) {
        this.f29152f = qw3Var;
        nu3 nu3Var = new nu3(0L, 65536);
        this.f29148b = nu3Var;
        this.f29149c = nu3Var;
        this.f29150d = nu3Var;
    }

    /* renamed from: l */
    public static nu3 m8671l(nu3 nu3Var, long j, ByteBuffer byteBuffer, int i) {
        nu3 m8669n = m8669n(nu3Var, j);
        while (i > 0) {
            int min = Math.min(i, (int) (m8669n.f28492b - j));
            byteBuffer.put(m8669n.f28494d.f22665a, m8669n.m8995a(j), min);
            i -= min;
            j += min;
            if (j == m8669n.f28492b) {
                m8669n = m8669n.f28495e;
            }
        }
        return m8669n;
    }

    /* renamed from: m */
    public static nu3 m8670m(nu3 nu3Var, long j, byte[] bArr, int i) {
        nu3 m8669n = m8669n(nu3Var, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (m8669n.f28492b - j));
            System.arraycopy(m8669n.f28494d.f22665a, m8669n.m8995a(j), bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == m8669n.f28492b) {
                m8669n = m8669n.f28495e;
            }
        }
        return m8669n;
    }

    /* renamed from: g */
    public final int m8676g(InterfaceC5936k6 interfaceC5936k6, int i, boolean z) {
        int m8674i = m8674i(i);
        nu3 nu3Var = this.f29150d;
        int mo4060b = interfaceC5936k6.mo4060b(nu3Var.f28494d.f22665a, nu3Var.m8995a(this.f29151e), m8674i);
        if (mo4060b == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        m8673j(mo4060b);
        return mo4060b;
    }
}
