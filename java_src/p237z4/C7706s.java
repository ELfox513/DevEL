package p237z4;

import java.nio.charset.Charset;
/* renamed from: z4.s */
/* loaded from: classes2.dex */
public class C7706s extends AbstractC7701r {

    /* renamed from: p */
    public final byte[] f37862p;

    @Override // p237z4.AbstractC7652i
    /* renamed from: e */
    public final int mo607e(int i, int i2, int i3) {
        return C7687o0.m634c(i, this.f37862p, mo599x(), i3);
    }

    @Override // p237z4.AbstractC7652i
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC7652i) || size() != ((AbstractC7652i) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof C7706s) {
            C7706s c7706s = (C7706s) obj;
            int m699r = m699r();
            int m699r2 = c7706s.m699r();
            if (m699r != 0 && m699r2 != 0 && m699r != m699r2) {
                return false;
            }
            return mo600w(c7706s, 0, size());
        }
        return obj.equals(this);
    }

    @Override // p237z4.AbstractC7652i
    /* renamed from: g */
    public final String mo606g(Charset charset) {
        return new String(this.f37862p, mo599x(), size(), charset);
    }

    @Override // p237z4.AbstractC7652i
    /* renamed from: k */
    public final void mo604k(AbstractC7647h abstractC7647h) {
        abstractC7647h.mo475a(this.f37862p, mo599x(), size());
    }

    @Override // p237z4.AbstractC7652i
    public int size() {
        return this.f37862p.length;
    }

    @Override // p237z4.AbstractC7652i
    /* renamed from: t */
    public byte mo602t(int i) {
        return this.f37862p[i];
    }

    @Override // p237z4.AbstractC7652i
    /* renamed from: u */
    public byte mo601u(int i) {
        return this.f37862p[i];
    }

    /* renamed from: x */
    public int mo599x() {
        return 0;
    }

    public C7706s(byte[] bArr) {
        bArr.getClass();
        this.f37862p = bArr;
    }

    @Override // p237z4.AbstractC7652i
    /* renamed from: i */
    public final AbstractC7652i mo605i(int i, int i2) {
        int m701m = AbstractC7652i.m701m(0, i2, size());
        if (m701m == 0) {
            return AbstractC7652i.f37698b;
        }
        return new C7681n(this.f37862p, mo599x(), m701m);
    }

    @Override // p237z4.AbstractC7652i
    /* renamed from: q */
    public final boolean mo603q() {
        int mo599x = mo599x();
        return C7641f3.m776h(this.f37862p, mo599x, size() + mo599x);
    }

    @Override // p237z4.AbstractC7701r
    /* renamed from: w */
    public final boolean mo600w(AbstractC7652i abstractC7652i, int i, int i2) {
        if (i2 <= abstractC7652i.size()) {
            if (i2 <= abstractC7652i.size()) {
                if (abstractC7652i instanceof C7706s) {
                    C7706s c7706s = (C7706s) abstractC7652i;
                    byte[] bArr = this.f37862p;
                    byte[] bArr2 = c7706s.f37862p;
                    int mo599x = mo599x() + i2;
                    int mo599x2 = mo599x();
                    int mo599x3 = c7706s.mo599x();
                    while (mo599x2 < mo599x) {
                        if (bArr[mo599x2] != bArr2[mo599x3]) {
                            return false;
                        }
                        mo599x2++;
                        mo599x3++;
                    }
                    return true;
                }
                return abstractC7652i.mo605i(0, i2).equals(mo605i(0, i2));
            }
            int size = abstractC7652i.size();
            StringBuilder sb = new StringBuilder(59);
            sb.append("Ran off end of other: 0, ");
            sb.append(i2);
            sb.append(", ");
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        int size2 = size();
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append("Length too large: ");
        sb2.append(i2);
        sb2.append(size2);
        throw new IllegalArgumentException(sb2.toString());
    }
}
