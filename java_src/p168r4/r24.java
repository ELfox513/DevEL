package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.r24 */
/* loaded from: classes2.dex */
public final class r24 {

    /* renamed from: a */
    public final C6423xb f30429a = new C6423xb(8);

    /* renamed from: b */
    public int f30430b;

    /* renamed from: b */
    public final long m7620b(b04 b04Var) {
        vz3 vz3Var = (vz3) b04Var;
        int i = 0;
        vz3Var.mo5960i(this.f30429a.m5402q(), 0, 1, false);
        int i2 = this.f30429a.m5402q()[0] & DefaultClassResolver.NAME;
        if (i2 != 0) {
            int i3 = 128;
            int i4 = 0;
            while ((i2 & i3) == 0) {
                i3 >>= 1;
                i4++;
            }
            int i5 = i2 & (i3 ^ (-1));
            vz3Var.mo5960i(this.f30429a.m5402q(), 1, i4, false);
            while (i < i4) {
                i++;
                i5 = (this.f30429a.m5402q()[i] & DefaultClassResolver.NAME) + (i5 << 8);
            }
            this.f30430b += i4 + 1;
            return i5;
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: a */
    public final boolean m7621a(b04 b04Var) {
        long mo5953q = b04Var.mo5953q();
        long j = 1024;
        if (mo5953q != -1 && mo5953q <= 1024) {
            j = mo5953q;
        }
        int i = (int) j;
        vz3 vz3Var = (vz3) b04Var;
        vz3Var.mo5960i(this.f30429a.m5402q(), 0, 4, false);
        long m5425B = this.f30429a.m5425B();
        this.f30430b = 4;
        while (m5425B != 440786851) {
            int i2 = this.f30430b + 1;
            this.f30430b = i2;
            if (i2 == i) {
                return false;
            }
            vz3Var.mo5960i(this.f30429a.m5402q(), 0, 1, false);
            m5425B = ((m5425B << 8) & (-256)) | (this.f30429a.m5402q()[0] & DefaultClassResolver.NAME);
        }
        long m7620b = m7620b(b04Var);
        long j2 = this.f30430b;
        if (m7620b != Long.MIN_VALUE && (mo5953q == -1 || j2 + m7620b < mo5953q)) {
            while (true) {
                long j3 = this.f30430b;
                long j4 = j2 + m7620b;
                if (j3 < j4) {
                    if (m7620b(b04Var) == Long.MIN_VALUE) {
                        return false;
                    }
                    long m7620b2 = m7620b(b04Var);
                    if (m7620b2 < 0) {
                        return false;
                    }
                    if (m7620b2 != 0) {
                        int i3 = (int) m7620b2;
                        vz3Var.m5955o(i3, false);
                        this.f30430b += i3;
                    }
                } else if (j3 == j4) {
                    return true;
                }
            }
        }
        return false;
    }
}
