package p018b5;

import java.nio.charset.Charset;
/* renamed from: b5.t7 */
/* loaded from: classes2.dex */
public class C0886t7 extends AbstractC0869s7 {

    /* renamed from: p */
    public final byte[] f2316p;

    @Override // p018b5.AbstractC0937w7
    /* renamed from: d */
    public byte mo25039d(int i) {
        return this.f2316p[i];
    }

    @Override // p018b5.AbstractC0937w7
    /* renamed from: e */
    public byte mo25038e(int i) {
        return this.f2316p[i];
    }

    @Override // p018b5.AbstractC0937w7
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0937w7) || mo25037g() != ((AbstractC0937w7) obj).mo25037g()) {
            return false;
        }
        if (mo25037g() == 0) {
            return true;
        }
        if (obj instanceof C0886t7) {
            C0886t7 c0886t7 = (C0886t7) obj;
            int m25030r = m25030r();
            int m25030r2 = c0886t7.m25030r();
            if (m25030r != 0 && m25030r2 != 0 && m25030r != m25030r2) {
                return false;
            }
            int mo25037g = mo25037g();
            if (mo25037g <= c0886t7.mo25037g()) {
                if (mo25037g <= c0886t7.mo25037g()) {
                    byte[] bArr = this.f2316p;
                    byte[] bArr2 = c0886t7.f2316p;
                    c0886t7.mo25114v();
                    int i = 0;
                    int i2 = 0;
                    while (i < mo25037g) {
                        if (bArr[i] != bArr2[i2]) {
                            return false;
                        }
                        i++;
                        i2++;
                    }
                    return true;
                }
                int mo25037g2 = c0886t7.mo25037g();
                StringBuilder sb = new StringBuilder(59);
                sb.append("Ran off end of other: 0, ");
                sb.append(mo25037g);
                sb.append(", ");
                sb.append(mo25037g2);
                throw new IllegalArgumentException(sb.toString());
            }
            int mo25037g3 = mo25037g();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(mo25037g);
            sb2.append(mo25037g3);
            throw new IllegalArgumentException(sb2.toString());
        }
        return obj.equals(this);
    }

    @Override // p018b5.AbstractC0937w7
    /* renamed from: g */
    public int mo25037g() {
        return this.f2316p.length;
    }

    @Override // p018b5.AbstractC0937w7
    /* renamed from: i */
    public final int mo25036i(int i, int i2, int i3) {
        return C0650f9.m25947d(i, this.f2316p, 0, i3);
    }

    @Override // p018b5.AbstractC0937w7
    /* renamed from: l */
    public final String mo25034l(Charset charset) {
        return new String(this.f2316p, 0, mo25037g(), charset);
    }

    @Override // p018b5.AbstractC0937w7
    /* renamed from: m */
    public final void mo25033m(C0750l7 c0750l7) {
        ((C0598c8) c0750l7).m26101E(this.f2316p, 0, mo25037g());
    }

    @Override // p018b5.AbstractC0937w7
    /* renamed from: o */
    public final boolean mo25032o() {
        return C0941wb.m25019f(this.f2316p, 0, mo25037g());
    }

    /* renamed from: v */
    public int mo25114v() {
        return 0;
    }

    public C0886t7(byte[] bArr) {
        bArr.getClass();
        this.f2316p = bArr;
    }

    @Override // p018b5.AbstractC0937w7
    /* renamed from: k */
    public final AbstractC0937w7 mo25035k(int i, int i2) {
        int m25031q = AbstractC0937w7.m25031q(0, i2, mo25037g());
        if (m25031q == 0) {
            return AbstractC0937w7.f2373b;
        }
        return new C0835q7(this.f2316p, 0, m25031q);
    }
}
