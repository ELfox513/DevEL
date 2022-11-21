package p168r4;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: r4.qo3 */
/* loaded from: classes2.dex */
public final class qo3 extends ll3 {

    /* renamed from: u */
    public static final int[] f30244u = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};

    /* renamed from: p */
    public final int f30245p;

    /* renamed from: q */
    public final ll3 f30246q;

    /* renamed from: r */
    public final ll3 f30247r;

    /* renamed from: s */
    public final int f30248s;

    /* renamed from: t */
    public final int f30249t;

    public qo3(ll3 ll3Var, ll3 ll3Var2) {
        this.f30246q = ll3Var;
        this.f30247r = ll3Var2;
        int mo7747o = ll3Var.mo7747o();
        this.f30248s = mo7747o;
        this.f30245p = mo7747o + ll3Var2.mo7747o();
        this.f30249t = Math.max(ll3Var.mo7745s(), ll3Var2.mo7745s()) + 1;
    }

    @Override // p168r4.ll3
    /* renamed from: E */
    public final fl3 mo7755E() {
        return new mo3(this);
    }

    @Override // p168r4.ll3
    public final boolean equals(Object obj) {
        boolean mo10880T;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ll3)) {
            return false;
        }
        ll3 ll3Var = (ll3) obj;
        if (this.f30245p != ll3Var.mo7747o()) {
            return false;
        }
        if (this.f30245p == 0) {
            return true;
        }
        int m9623g = m9623g();
        int m9623g2 = ll3Var.m9623g();
        if (m9623g != 0 && m9623g2 != 0 && m9623g != m9623g2) {
            return false;
        }
        po3 po3Var = new po3(this, null);
        gl3 next = po3Var.next();
        po3 po3Var2 = new po3(ll3Var, null);
        gl3 next2 = po3Var2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int mo7747o = next.mo7747o() - i;
            int mo7747o2 = next2.mo7747o() - i2;
            int min = Math.min(mo7747o, mo7747o2);
            if (i == 0) {
                mo10880T = next.mo10880T(next2, i2, min);
            } else {
                mo10880T = next2.mo10880T(next, i, min);
            }
            if (!mo10880T) {
                return false;
            }
            i3 += min;
            int i4 = this.f30245p;
            if (i3 >= i4) {
                if (i3 == i4) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (min == mo7747o) {
                next = po3Var.next();
                i = 0;
            } else {
                i += min;
            }
            if (min == mo7747o2) {
                next2 = po3Var2.next();
                i2 = 0;
            } else {
                i2 += min;
            }
        }
    }

    @Override // p168r4.ll3, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new mo3(this);
    }

    @Override // p168r4.ll3
    /* renamed from: o */
    public final int mo7747o() {
        return this.f30245p;
    }

    @Override // p168r4.ll3
    /* renamed from: s */
    public final int mo7745s() {
        return this.f30249t;
    }

    @Override // p168r4.ll3
    /* renamed from: t */
    public final boolean mo7744t() {
        return this.f30245p >= m7753U(this.f30249t);
    }

    @Override // p168r4.ll3
    /* renamed from: x */
    public final String mo7741x(Charset charset) {
        return new String(m9626R(), charset);
    }

    /* renamed from: U */
    public static int m7753U(int i) {
        int[] iArr = f30244u;
        int length = iArr.length;
        if (i >= 47) {
            return Integer.MAX_VALUE;
        }
        return iArr[i];
    }

    @Override // p168r4.ll3
    /* renamed from: A */
    public final int mo7757A(int i, int i2, int i3) {
        int i4 = this.f30248s;
        if (i2 + i3 <= i4) {
            return this.f30246q.mo7757A(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f30247r.mo7757A(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f30247r.mo7757A(this.f30246q.mo7757A(i, i2, i5), 0, i3 - i5);
    }

    @Override // p168r4.ll3
    /* renamed from: B */
    public final rl3 mo7756B() {
        ArrayList<ByteBuffer> arrayList = new ArrayList();
        po3 po3Var = new po3(this, null);
        while (po3Var.hasNext()) {
            arrayList.add(po3Var.next().mo9619v());
        }
        int i = rl3.f30625d;
        boolean z = false;
        int i2 = 0;
        for (ByteBuffer byteBuffer : arrayList) {
            i2 += byteBuffer.remaining();
            if (byteBuffer.hasArray()) {
                z |= true;
            } else if (byteBuffer.isDirect()) {
                z |= true;
            } else {
                z |= true;
            }
        }
        if (z) {
            return new nl3(arrayList, i2, true, null);
        }
        return new ql3(new cn3(arrayList), 4096, null);
    }

    @Override // p168r4.ll3
    /* renamed from: l */
    public final byte mo7749l(int i) {
        ll3.m9622i(i, this.f30245p);
        return mo7748m(i);
    }

    @Override // p168r4.ll3
    /* renamed from: m */
    public final byte mo7748m(int i) {
        int i2 = this.f30248s;
        if (i < i2) {
            return this.f30246q.mo7748m(i);
        }
        return this.f30247r.mo7748m(i - i2);
    }

    @Override // p168r4.ll3
    /* renamed from: r */
    public final void mo7746r(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.f30248s;
        if (i + i3 <= i4) {
            this.f30246q.mo7746r(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.f30247r.mo7746r(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.f30246q.mo7746r(bArr, i, i2, i5);
            this.f30247r.mo7746r(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    @Override // p168r4.ll3
    /* renamed from: u */
    public final ll3 mo7743u(int i, int i2) {
        int m9621k = ll3.m9621k(i, i2, this.f30245p);
        if (m9621k == 0) {
            return ll3.f27255b;
        }
        if (m9621k == this.f30245p) {
            return this;
        }
        int i3 = this.f30248s;
        if (i2 <= i3) {
            return this.f30246q.mo7743u(i, i2);
        }
        if (i >= i3) {
            return this.f30247r.mo7743u(i - i3, i2 - i3);
        }
        ll3 ll3Var = this.f30246q;
        return new qo3(ll3Var.mo7743u(i, ll3Var.mo7747o()), this.f30247r.mo7743u(0, i2 - this.f30248s));
    }

    @Override // p168r4.ll3
    /* renamed from: w */
    public final void mo7742w(al3 al3Var) {
        this.f30246q.mo7742w(al3Var);
        this.f30247r.mo7742w(al3Var);
    }

    @Override // p168r4.ll3
    /* renamed from: y */
    public final boolean mo7740y() {
        int mo7739z = this.f30246q.mo7739z(0, 0, this.f30248s);
        ll3 ll3Var = this.f30247r;
        if (ll3Var.mo7739z(mo7739z, 0, ll3Var.mo7747o()) != 0) {
            return false;
        }
        return true;
    }

    @Override // p168r4.ll3
    /* renamed from: z */
    public final int mo7739z(int i, int i2, int i3) {
        int i4 = this.f30248s;
        if (i2 + i3 <= i4) {
            return this.f30246q.mo7739z(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f30247r.mo7739z(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f30247r.mo7739z(this.f30246q.mo7739z(i, i2, i5), 0, i3 - i5);
    }

    /* renamed from: T */
    public static ll3 m7754T(ll3 ll3Var, ll3 ll3Var2) {
        if (ll3Var2.mo7747o() == 0) {
            return ll3Var;
        }
        if (ll3Var.mo7747o() == 0) {
            return ll3Var2;
        }
        int mo7747o = ll3Var.mo7747o() + ll3Var2.mo7747o();
        if (mo7747o < 128) {
            return m7752V(ll3Var, ll3Var2);
        }
        if (ll3Var instanceof qo3) {
            qo3 qo3Var = (qo3) ll3Var;
            if (qo3Var.f30247r.mo7747o() + ll3Var2.mo7747o() < 128) {
                return new qo3(qo3Var.f30246q, m7752V(qo3Var.f30247r, ll3Var2));
            } else if (qo3Var.f30246q.mo7745s() > qo3Var.f30247r.mo7745s() && qo3Var.f30249t > ll3Var2.mo7745s()) {
                return new qo3(qo3Var.f30246q, new qo3(qo3Var.f30247r, ll3Var2));
            }
        }
        if (mo7747o >= m7753U(Math.max(ll3Var.mo7745s(), ll3Var2.mo7745s()) + 1)) {
            return new qo3(ll3Var, ll3Var2);
        }
        return no3.m9020a(new no3(null), ll3Var, ll3Var2);
    }

    /* renamed from: V */
    public static ll3 m7752V(ll3 ll3Var, ll3 ll3Var2) {
        int mo7747o = ll3Var.mo7747o();
        int mo7747o2 = ll3Var2.mo7747o();
        byte[] bArr = new byte[mo7747o + mo7747o2];
        ll3Var.m9627Q(bArr, 0, 0, mo7747o);
        ll3Var2.m9627Q(bArr, 0, mo7747o, mo7747o2);
        return new hl3(bArr);
    }
}
