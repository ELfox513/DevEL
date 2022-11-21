package p168r4;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* renamed from: r4.qp3 */
/* loaded from: classes2.dex */
public abstract class qp3 {

    /* renamed from: a */
    public final Unsafe f30285a;

    public qp3(Unsafe unsafe) {
        this.f30285a = unsafe;
    }

    /* renamed from: a */
    public abstract void mo7726a(Object obj, long j, byte b);

    /* renamed from: b */
    public abstract boolean mo7725b(Object obj, long j);

    /* renamed from: c */
    public abstract void mo7724c(Object obj, long j, boolean z);

    /* renamed from: d */
    public abstract float mo7723d(Object obj, long j);

    /* renamed from: e */
    public abstract void mo7722e(Object obj, long j, float f);

    /* renamed from: f */
    public abstract double mo7721f(Object obj, long j);

    /* renamed from: g */
    public abstract void mo7720g(Object obj, long j, double d);

    /* renamed from: h */
    public abstract byte mo7719h(long j);

    /* renamed from: i */
    public abstract void mo7718i(long j, byte[] bArr, long j2, long j3);

    /* renamed from: j */
    public final long m7717j(Field field) {
        return this.f30285a.objectFieldOffset(field);
    }

    /* renamed from: k */
    public final int m7716k(Class<?> cls) {
        return this.f30285a.arrayBaseOffset(cls);
    }

    /* renamed from: l */
    public final int m7715l(Class<?> cls) {
        return this.f30285a.arrayIndexScale(cls);
    }

    /* renamed from: m */
    public final int m7714m(Object obj, long j) {
        return this.f30285a.getInt(obj, j);
    }

    /* renamed from: n */
    public final void m7713n(Object obj, long j, int i) {
        this.f30285a.putInt(obj, j, i);
    }

    /* renamed from: o */
    public final long m7712o(Object obj, long j) {
        return this.f30285a.getLong(obj, j);
    }

    /* renamed from: p */
    public final void m7711p(Object obj, long j, long j2) {
        this.f30285a.putLong(obj, j, j2);
    }

    /* renamed from: q */
    public final Object m7710q(Object obj, long j) {
        return this.f30285a.getObject(obj, j);
    }

    /* renamed from: r */
    public final void m7709r(Object obj, long j, Object obj2) {
        this.f30285a.putObject(obj, j, obj2);
    }
}
