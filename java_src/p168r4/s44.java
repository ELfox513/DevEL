package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import java.util.Arrays;
import java.util.List;
/* renamed from: r4.s44 */
/* loaded from: classes2.dex */
public final class s44 extends w44 {

    /* renamed from: o */
    public static final byte[] f31259o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: n */
    public boolean f31260n;

    @Override // p168r4.w44
    /* renamed from: a */
    public final void mo4838a(boolean z) {
        super.mo4838a(z);
        if (z) {
            this.f31260n = false;
        }
    }

    @Override // p168r4.w44
    /* renamed from: c */
    public final boolean mo4836c(C6423xb c6423xb, long j, u44 u44Var) {
        boolean z = true;
        if (!this.f31260n) {
            byte[] copyOf = Arrays.copyOf(c6423xb.m5402q(), c6423xb.m5406m());
            byte b = copyOf[9];
            List<byte[]> m6256a = v04.m6256a(copyOf);
            C5639c5 c5639c5 = new C5639c5();
            c5639c5.m12564n("audio/opus");
            c5639c5.m12610B(b & DefaultClassResolver.NAME);
            c5639c5.m12609C(48000);
            c5639c5.m12562p(m6256a);
            u44Var.f32171a = c5639c5.m12603I();
            this.f31260n = true;
            return true;
        }
        u44Var.f32171a.getClass();
        if (c6423xb.m5423D() != 1332770163) {
            z = false;
        }
        c6423xb.m5403p(0);
        return z;
    }

    /* renamed from: j */
    public static boolean m7207j(C6423xb c6423xb) {
        if (c6423xb.m5407l() < 8) {
            return false;
        }
        byte[] bArr = new byte[8];
        c6423xb.m5398u(bArr, 0, 8);
        return Arrays.equals(bArr, f31259o);
    }

    @Override // p168r4.w44
    /* renamed from: b */
    public final long mo4837b(C6423xb c6423xb) {
        int i;
        byte[] m5402q = c6423xb.m5402q();
        int i2 = m5402q[0] & DefaultClassResolver.NAME;
        int i3 = i2 & 3;
        int i4 = 2;
        if (i3 != 0) {
            if (i3 != 1 && i3 != 2) {
                i4 = m5402q[1] & 63;
            }
        } else {
            i4 = 1;
        }
        int i5 = i2 >> 3;
        int i6 = i5 & 3;
        if (i5 >= 16) {
            i = 2500 << i6;
        } else if (i5 >= 12) {
            i = 10000 << (i6 & 1);
        } else if (i6 == 3) {
            i = 60000;
        } else {
            i = 10000 << i6;
        }
        return m5873h(i4 * i);
    }
}
