package p168r4;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: r4.hl3 */
/* loaded from: classes2.dex */
public class hl3 extends gl3 {

    /* renamed from: p */
    public final byte[] f24677p;

    @Override // p168r4.ll3
    /* renamed from: A */
    public final int mo7757A(int i, int i2, int i3) {
        return zm3.m4173h(i, this.f24677p, mo10879U() + i2, i3);
    }

    @Override // p168r4.ll3
    /* renamed from: B */
    public final rl3 mo7756B() {
        return rl3.m7460d(this.f24677p, mo10879U(), mo7747o(), true);
    }

    /* renamed from: U */
    public int mo10879U() {
        return 0;
    }

    @Override // p168r4.ll3
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ll3) || mo7747o() != ((ll3) obj).mo7747o()) {
            return false;
        }
        if (mo7747o() == 0) {
            return true;
        }
        if (obj instanceof hl3) {
            hl3 hl3Var = (hl3) obj;
            int m9623g = m9623g();
            int m9623g2 = hl3Var.m9623g();
            if (m9623g != 0 && m9623g2 != 0 && m9623g != m9623g2) {
                return false;
            }
            return mo10880T(hl3Var, 0, mo7747o());
        }
        return obj.equals(this);
    }

    @Override // p168r4.ll3
    /* renamed from: l */
    public byte mo7749l(int i) {
        return this.f24677p[i];
    }

    @Override // p168r4.ll3
    /* renamed from: m */
    public byte mo7748m(int i) {
        return this.f24677p[i];
    }

    @Override // p168r4.ll3
    /* renamed from: o */
    public int mo7747o() {
        return this.f24677p.length;
    }

    @Override // p168r4.ll3
    /* renamed from: r */
    public void mo7746r(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f24677p, i, bArr, i2, i3);
    }

    @Override // p168r4.ll3
    /* renamed from: v */
    public final ByteBuffer mo9619v() {
        return ByteBuffer.wrap(this.f24677p, mo10879U(), mo7747o()).asReadOnlyBuffer();
    }

    @Override // p168r4.ll3
    /* renamed from: w */
    public final void mo7742w(al3 al3Var) {
        ((tl3) al3Var).m6792E(this.f24677p, mo10879U(), mo7747o());
    }

    @Override // p168r4.ll3
    /* renamed from: x */
    public final String mo7741x(Charset charset) {
        return new String(this.f24677p, mo10879U(), mo7747o(), charset);
    }

    @Override // p168r4.ll3
    /* renamed from: y */
    public final boolean mo7740y() {
        int mo10879U = mo10879U();
        return wp3.m5629b(this.f24677p, mo10879U, mo7747o() + mo10879U);
    }

    @Override // p168r4.ll3
    /* renamed from: z */
    public final int mo7739z(int i, int i2, int i3) {
        int mo10879U = mo10879U() + i2;
        return wp3.m5628c(i, this.f24677p, mo10879U, i3 + mo10879U);
    }

    public hl3(byte[] bArr) {
        bArr.getClass();
        this.f24677p = bArr;
    }

    @Override // p168r4.gl3
    /* renamed from: T */
    public final boolean mo10880T(ll3 ll3Var, int i, int i2) {
        if (i2 <= ll3Var.mo7747o()) {
            int i3 = i + i2;
            if (i3 <= ll3Var.mo7747o()) {
                if (ll3Var instanceof hl3) {
                    hl3 hl3Var = (hl3) ll3Var;
                    byte[] bArr = this.f24677p;
                    byte[] bArr2 = hl3Var.f24677p;
                    int mo10879U = mo10879U() + i2;
                    int mo10879U2 = mo10879U();
                    int mo10879U3 = hl3Var.mo10879U() + i;
                    while (mo10879U2 < mo10879U) {
                        if (bArr[mo10879U2] != bArr2[mo10879U3]) {
                            return false;
                        }
                        mo10879U2++;
                        mo10879U3++;
                    }
                    return true;
                }
                return ll3Var.mo7743u(i, i3).equals(mo7743u(0, i2));
            }
            int mo7747o = ll3Var.mo7747o();
            StringBuilder sb = new StringBuilder(59);
            sb.append("Ran off end of other: ");
            sb.append(i);
            sb.append(", ");
            sb.append(i2);
            sb.append(", ");
            sb.append(mo7747o);
            throw new IllegalArgumentException(sb.toString());
        }
        int mo7747o2 = mo7747o();
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Length too large: ");
        sb2.append(i2);
        sb2.append(mo7747o2);
        throw new IllegalArgumentException(sb2.toString());
    }

    @Override // p168r4.ll3
    /* renamed from: u */
    public final ll3 mo7743u(int i, int i2) {
        int m9621k = ll3.m9621k(i, i2, mo7747o());
        if (m9621k == 0) {
            return ll3.f27255b;
        }
        return new el3(this.f24677p, mo10879U() + i, m9621k);
    }
}
