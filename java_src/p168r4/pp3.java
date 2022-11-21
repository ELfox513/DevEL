package p168r4;

import libcore.io.Memory;
import sun.misc.Unsafe;
/* renamed from: r4.pp3 */
/* loaded from: classes2.dex */
public final class pp3 extends qp3 {
    public pp3(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // p168r4.qp3
    /* renamed from: d */
    public final float mo7723d(Object obj, long j) {
        return Float.intBitsToFloat(m7714m(obj, j));
    }

    @Override // p168r4.qp3
    /* renamed from: e */
    public final void mo7722e(Object obj, long j, float f) {
        m7713n(obj, j, Float.floatToIntBits(f));
    }

    @Override // p168r4.qp3
    /* renamed from: f */
    public final double mo7721f(Object obj, long j) {
        return Double.longBitsToDouble(m7712o(obj, j));
    }

    @Override // p168r4.qp3
    /* renamed from: g */
    public final void mo7720g(Object obj, long j, double d) {
        m7711p(obj, j, Double.doubleToLongBits(d));
    }

    @Override // p168r4.qp3
    /* renamed from: h */
    public final byte mo7719h(long j) {
        return Memory.peekByte(j);
    }

    @Override // p168r4.qp3
    /* renamed from: i */
    public final void mo7718i(long j, byte[] bArr, long j2, long j3) {
        Memory.peekByteArray(j, bArr, (int) j2, (int) j3);
    }

    @Override // p168r4.qp3
    /* renamed from: a */
    public final void mo7726a(Object obj, long j, byte b) {
        if (rp3.f30665j) {
            rp3.m7383g(obj, j, b);
        } else {
            rp3.m7382h(obj, j, b);
        }
    }

    @Override // p168r4.qp3
    /* renamed from: b */
    public final boolean mo7725b(Object obj, long j) {
        if (rp3.f30665j) {
            return rp3.m7392F(obj, j);
        }
        return rp3.m7391G(obj, j);
    }

    @Override // p168r4.qp3
    /* renamed from: c */
    public final void mo7724c(Object obj, long j, boolean z) {
        if (rp3.f30665j) {
            rp3.m7383g(obj, j, r3 ? (byte) 1 : (byte) 0);
        } else {
            rp3.m7382h(obj, j, r3 ? (byte) 1 : (byte) 0);
        }
    }
}
