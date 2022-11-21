package p168r4;

import java.io.EOFException;
/* renamed from: r4.r04 */
/* loaded from: classes2.dex */
public final class r04 {

    /* renamed from: a */
    public final C6423xb f30400a = new C6423xb(10);

    /* renamed from: a */
    public final C5901j8 m7628a(b04 b04Var, InterfaceC5902j9 interfaceC5902j9) {
        C5901j8 c5901j8 = null;
        int i = 0;
        while (true) {
            try {
                ((vz3) b04Var).mo5960i(this.f30400a.m5402q(), 0, 10, false);
                this.f30400a.m5403p(0);
                if (this.f30400a.m5393z() != 4801587) {
                    break;
                }
                this.f30400a.m5400s(3);
                int m5418a = this.f30400a.m5418a();
                int i2 = m5418a + 10;
                if (c5901j8 == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.f30400a.m5402q(), 0, bArr, 0, 10);
                    ((vz3) b04Var).mo5960i(bArr, 10, m5418a, false);
                    c5901j8 = C5976l9.m9778a(bArr, i2, interfaceC5902j9, new C5975l8());
                } else {
                    ((vz3) b04Var).m5955o(m5418a, false);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        b04Var.mo5959k();
        ((vz3) b04Var).m5955o(i, false);
        return c5901j8;
    }
}
