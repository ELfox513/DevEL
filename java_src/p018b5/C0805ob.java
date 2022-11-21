package p018b5;

import sun.misc.Unsafe;
/* renamed from: b5.ob */
/* loaded from: classes2.dex */
public final class C0805ob extends AbstractC0839qb {
    public C0805ob(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // p018b5.AbstractC0839qb
    /* renamed from: a */
    public final double mo25470a(Object obj, long j) {
        return Double.longBitsToDouble(m25460k(obj, j));
    }

    @Override // p018b5.AbstractC0839qb
    /* renamed from: b */
    public final float mo25469b(Object obj, long j) {
        return Float.intBitsToFloat(m25461j(obj, j));
    }

    @Override // p018b5.AbstractC0839qb
    /* renamed from: e */
    public final void mo25466e(Object obj, long j, double d) {
        m25456o(obj, j, Double.doubleToLongBits(d));
    }

    @Override // p018b5.AbstractC0839qb
    /* renamed from: f */
    public final void mo25465f(Object obj, long j, float f) {
        m25457n(obj, j, Float.floatToIntBits(f));
    }

    @Override // p018b5.AbstractC0839qb
    /* renamed from: c */
    public final void mo25468c(Object obj, long j, boolean z) {
        if (C0856rb.f2280i) {
            C0856rb.m25357d(obj, j, r3 ? (byte) 1 : (byte) 0);
        } else {
            C0856rb.m25356e(obj, j, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // p018b5.AbstractC0839qb
    /* renamed from: d */
    public final void mo25467d(Object obj, long j, byte b) {
        if (C0856rb.f2280i) {
            C0856rb.m25357d(obj, j, b);
        } else {
            C0856rb.m25356e(obj, j, b);
        }
    }

    @Override // p018b5.AbstractC0839qb
    /* renamed from: g */
    public final boolean mo25464g(Object obj, long j) {
        if (C0856rb.f2280i) {
            return C0856rb.m25336y(obj, j);
        }
        return C0856rb.m25335z(obj, j);
    }
}
