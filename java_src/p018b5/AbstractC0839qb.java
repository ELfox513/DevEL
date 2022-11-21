package p018b5;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* renamed from: b5.qb */
/* loaded from: classes2.dex */
public abstract class AbstractC0839qb {

    /* renamed from: a */
    public final Unsafe f2225a;

    public AbstractC0839qb(Unsafe unsafe) {
        this.f2225a = unsafe;
    }

    /* renamed from: a */
    public abstract double mo25470a(Object obj, long j);

    /* renamed from: b */
    public abstract float mo25469b(Object obj, long j);

    /* renamed from: c */
    public abstract void mo25468c(Object obj, long j, boolean z);

    /* renamed from: d */
    public abstract void mo25467d(Object obj, long j, byte b);

    /* renamed from: e */
    public abstract void mo25466e(Object obj, long j, double d);

    /* renamed from: f */
    public abstract void mo25465f(Object obj, long j, float f);

    /* renamed from: g */
    public abstract boolean mo25464g(Object obj, long j);

    /* renamed from: h */
    public final int m25463h(Class<?> cls) {
        return this.f2225a.arrayBaseOffset(cls);
    }

    /* renamed from: i */
    public final int m25462i(Class<?> cls) {
        return this.f2225a.arrayIndexScale(cls);
    }

    /* renamed from: j */
    public final int m25461j(Object obj, long j) {
        return this.f2225a.getInt(obj, j);
    }

    /* renamed from: k */
    public final long m25460k(Object obj, long j) {
        return this.f2225a.getLong(obj, j);
    }

    /* renamed from: l */
    public final long m25459l(Field field) {
        return this.f2225a.objectFieldOffset(field);
    }

    /* renamed from: m */
    public final Object m25458m(Object obj, long j) {
        return this.f2225a.getObject(obj, j);
    }

    /* renamed from: n */
    public final void m25457n(Object obj, long j, int i) {
        this.f2225a.putInt(obj, j, i);
    }

    /* renamed from: o */
    public final void m25456o(Object obj, long j, long j2) {
        this.f2225a.putLong(obj, j, j2);
    }

    /* renamed from: p */
    public final void m25455p(Object obj, long j, Object obj2) {
        this.f2225a.putObject(obj, j, obj2);
    }
}
