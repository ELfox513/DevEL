package p018b5;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: b5.rb */
/* loaded from: classes2.dex */
public final class C0856rb {

    /* renamed from: a */
    public static final Unsafe f2272a;

    /* renamed from: b */
    public static final Class<?> f2273b;

    /* renamed from: c */
    public static final boolean f2274c;

    /* renamed from: d */
    public static final boolean f2275d;

    /* renamed from: e */
    public static final AbstractC0839qb f2276e;

    /* renamed from: f */
    public static final boolean f2277f;

    /* renamed from: g */
    public static final boolean f2278g;

    /* renamed from: h */
    public static final long f2279h;

    /* renamed from: i */
    public static final boolean f2280i;

    /* renamed from: B */
    public static boolean m25364B(Object obj, long j) {
        return f2276e.mo25464g(obj, j);
    }

    /* renamed from: C */
    public static boolean m25363C() {
        return f2278g;
    }

    /* renamed from: D */
    public static boolean m25362D() {
        return f2277f;
    }

    /* renamed from: E */
    public static int m25361E(Class<?> cls) {
        if (f2278g) {
            return f2276e.m25463h(cls);
        }
        return -1;
    }

    /* renamed from: a */
    public static int m25360a(Class<?> cls) {
        if (f2278g) {
            return f2276e.m25462i(cls);
        }
        return -1;
    }

    /* renamed from: c */
    public static Field m25358c(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: f */
    public static double m25355f(Object obj, long j) {
        return f2276e.mo25470a(obj, j);
    }

    /* renamed from: g */
    public static float m25354g(Object obj, long j) {
        return f2276e.mo25469b(obj, j);
    }

    /* renamed from: h */
    public static int m25353h(Object obj, long j) {
        return f2276e.m25461j(obj, j);
    }

    /* renamed from: i */
    public static long m25352i(Object obj, long j) {
        return f2276e.m25460k(obj, j);
    }

    /* renamed from: k */
    public static Object m25350k(Object obj, long j) {
        return f2276e.m25458m(obj, j);
    }

    /* renamed from: r */
    public static void m25343r(Object obj, long j, boolean z) {
        f2276e.mo25468c(obj, j, z);
    }

    /* renamed from: s */
    public static void m25342s(byte[] bArr, long j, byte b) {
        f2276e.mo25467d(bArr, f2279h + j, b);
    }

    /* renamed from: t */
    public static void m25341t(Object obj, long j, double d) {
        f2276e.mo25466e(obj, j, d);
    }

    /* renamed from: u */
    public static void m25340u(Object obj, long j, float f) {
        f2276e.mo25465f(obj, j, f);
    }

    /* renamed from: v */
    public static void m25339v(Object obj, long j, int i) {
        f2276e.m25457n(obj, j, i);
    }

    /* renamed from: w */
    public static void m25338w(Object obj, long j, long j2) {
        f2276e.m25456o(obj, j, j2);
    }

    /* renamed from: x */
    public static void m25337x(Object obj, long j, Object obj2) {
        f2276e.m25455p(obj, j, obj2);
    }

    /* renamed from: y */
    public static /* bridge */ /* synthetic */ boolean m25336y(Object obj, long j) {
        return ((byte) ((f2276e.m25461j(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: z */
    public static /* bridge */ /* synthetic */ boolean m25335z(Object obj, long j) {
        return ((byte) ((f2276e.m25461j(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x013b  */
    static {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018b5.C0856rb.<clinit>():void");
    }

    /* renamed from: A */
    public static boolean m25365A(Class<?> cls) {
        int i = C0682h7.f1846a;
        try {
            Class<?> cls2 = f2273b;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: b */
    public static Field m25359b() {
        int i = C0682h7.f1846a;
        Field m25358c = m25358c(Buffer.class, "effectiveDirectAddress");
        if (m25358c == null) {
            Field m25358c2 = m25358c(Buffer.class, "address");
            if (m25358c2 != null && m25358c2.getType() == Long.TYPE) {
                return m25358c2;
            }
            return null;
        }
        return m25358c;
    }

    /* renamed from: d */
    public static void m25357d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC0839qb abstractC0839qb = f2276e;
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        abstractC0839qb.m25457n(obj, j2, ((255 & b) << i) | (abstractC0839qb.m25461j(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: e */
    public static void m25356e(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC0839qb abstractC0839qb = f2276e;
        int i = (((int) j) & 3) << 3;
        abstractC0839qb.m25457n(obj, j2, ((255 & b) << i) | (abstractC0839qb.m25461j(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: j */
    public static <T> T m25351j(Class<T> cls) {
        try {
            return (T) f2272a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: l */
    public static Unsafe m25349l() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C0788nb());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: m */
    public static /* bridge */ /* synthetic */ void m25348m(Throwable th) {
        Logger logger = Logger.getLogger(C0856rb.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(valueOf.length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }
}
