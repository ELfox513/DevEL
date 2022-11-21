package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Arrays;
/* renamed from: r4.m44 */
/* loaded from: classes2.dex */
public final class m44 extends w44 {

    /* renamed from: n */
    public n04 f27492n;

    /* renamed from: o */
    public l44 f27493o;

    /* renamed from: j */
    public static boolean m9488j(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // p168r4.w44
    /* renamed from: a */
    public final void mo4838a(boolean z) {
        super.mo4838a(z);
        if (z) {
            this.f27492n = null;
            this.f27493o = null;
        }
    }

    @Override // p168r4.w44
    /* renamed from: b */
    public final long mo4837b(C6423xb c6423xb) {
        if (m9488j(c6423xb.m5402q())) {
            int i = (c6423xb.m5402q()[2] & DefaultClassResolver.NAME) >> 4;
            if (i != 6) {
                if (i == 7) {
                    i = 7;
                }
                int m10748c = i04.m10748c(c6423xb, i);
                c6423xb.m5403p(0);
                return m10748c;
            }
            c6423xb.m5400s(4);
            c6423xb.m5411h();
            int m10748c2 = i04.m10748c(c6423xb, i);
            c6423xb.m5403p(0);
            return m10748c2;
        }
        return -1L;
    }

    @Override // p168r4.w44
    /* renamed from: c */
    public final boolean mo4836c(C6423xb c6423xb, long j, u44 u44Var) {
        byte[] m5402q = c6423xb.m5402q();
        n04 n04Var = this.f27492n;
        if (n04Var == null) {
            n04 n04Var2 = new n04(m5402q, 17);
            this.f27492n = n04Var2;
            u44Var.f32171a = n04Var2.m9220c(Arrays.copyOfRange(m5402q, 9, c6423xb.m5406m()), null);
            return true;
        } else if ((m5402q[0] & Byte.MAX_VALUE) == 3) {
            m04 m10118b = k04.m10118b(c6423xb);
            n04 m9218e = n04Var.m9218e(m10118b);
            this.f27492n = m9218e;
            this.f27493o = new l44(m9218e, m10118b);
            return true;
        } else if (!m9488j(m5402q)) {
            return true;
        } else {
            l44 l44Var = this.f27493o;
            if (l44Var != null) {
                l44Var.m9794c(j);
                u44Var.f32172b = this.f27493o;
            }
            u44Var.f32171a.getClass();
            return false;
        }
    }
}
