package p168r4;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: r4.rp3 */
/* loaded from: classes2.dex */
public final class rp3 {

    /* renamed from: a */
    public static final Unsafe f30656a;

    /* renamed from: b */
    public static final Class<?> f30657b;

    /* renamed from: c */
    public static final boolean f30658c;

    /* renamed from: d */
    public static final boolean f30659d;

    /* renamed from: e */
    public static final qp3 f30660e;

    /* renamed from: f */
    public static final boolean f30661f;

    /* renamed from: g */
    public static final boolean f30662g;

    /* renamed from: h */
    public static final long f30663h;

    /* renamed from: i */
    public static final long f30664i;

    /* renamed from: j */
    public static final boolean f30665j;

    /* renamed from: A */
    public static long m7397A(ByteBuffer byteBuffer) {
        return f30660e.m7712o(byteBuffer, f30664i);
    }

    /* renamed from: F */
    public static /* synthetic */ boolean m7392F(Object obj, long j) {
        return ((byte) ((f30660e.m7714m(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: G */
    public static /* synthetic */ boolean m7391G(Object obj, long j) {
        return ((byte) ((f30660e.m7714m(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: c */
    public static int m7387c(Class<?> cls) {
        if (f30662g) {
            return f30660e.m7716k(cls);
        }
        return -1;
    }

    /* renamed from: d */
    public static int m7386d(Class<?> cls) {
        if (f30662g) {
            return f30660e.m7715l(cls);
        }
        return -1;
    }

    /* renamed from: f */
    public static Field m7384f(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: i */
    public static boolean m7381i() {
        return f30662g;
    }

    /* renamed from: j */
    public static boolean m7380j() {
        return f30661f;
    }

    /* renamed from: l */
    public static int m7378l(Object obj, long j) {
        return f30660e.m7714m(obj, j);
    }

    /* renamed from: m */
    public static void m7377m(Object obj, long j, int i) {
        f30660e.m7713n(obj, j, i);
    }

    /* renamed from: n */
    public static long m7376n(Object obj, long j) {
        return f30660e.m7712o(obj, j);
    }

    /* renamed from: o */
    public static void m7375o(Object obj, long j, long j2) {
        f30660e.m7711p(obj, j, j2);
    }

    /* renamed from: p */
    public static boolean m7374p(Object obj, long j) {
        return f30660e.mo7725b(obj, j);
    }

    /* renamed from: q */
    public static void m7373q(Object obj, long j, boolean z) {
        f30660e.mo7724c(obj, j, z);
    }

    /* renamed from: r */
    public static float m7372r(Object obj, long j) {
        return f30660e.mo7723d(obj, j);
    }

    /* renamed from: s */
    public static void m7371s(Object obj, long j, float f) {
        f30660e.mo7722e(obj, j, f);
    }

    /* renamed from: t */
    public static double m7370t(Object obj, long j) {
        return f30660e.mo7721f(obj, j);
    }

    /* renamed from: u */
    public static void m7369u(Object obj, long j, double d) {
        f30660e.mo7720g(obj, j, d);
    }

    /* renamed from: v */
    public static Object m7368v(Object obj, long j) {
        return f30660e.m7710q(obj, j);
    }

    /* renamed from: w */
    public static void m7367w(Object obj, long j, Object obj2) {
        f30660e.m7709r(obj, j, obj2);
    }

    /* renamed from: x */
    public static void m7366x(byte[] bArr, long j, byte b) {
        f30660e.mo7726a(bArr, f30663h + j, b);
    }

    /* renamed from: y */
    public static void m7365y(long j, byte[] bArr, long j2, long j3) {
        f30660e.mo7718i(j, bArr, j2, j3);
    }

    /* renamed from: z */
    public static byte m7364z(long j) {
        return f30660e.mo7719h(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0141  */
    static {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.rp3.<clinit>():void");
    }

    /* renamed from: B */
    public static Unsafe m7396B() {
        try {
            return (Unsafe) AccessController.doPrivileged(new np3());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: C */
    public static boolean m7395C(Class<?> cls) {
        int i = wk3.f33218a;
        try {
            Class<?> cls2 = f30657b;
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
    public static /* synthetic */ void m7388b(Throwable th) {
        Logger.getLogger(rp3.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th.toString()));
    }

    /* renamed from: e */
    public static Field m7385e() {
        int i = wk3.f33218a;
        Field m7384f = m7384f(Buffer.class, "effectiveDirectAddress");
        if (m7384f == null) {
            Field m7384f2 = m7384f(Buffer.class, "address");
            if (m7384f2 != null && m7384f2.getType() == Long.TYPE) {
                return m7384f2;
            }
            return null;
        }
        return m7384f;
    }

    /* renamed from: g */
    public static void m7383g(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        qp3 qp3Var = f30660e;
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        qp3Var.m7713n(obj, j2, ((255 & b) << i) | (qp3Var.m7714m(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: h */
    public static void m7382h(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        qp3 qp3Var = f30660e;
        int i = (((int) j) & 3) << 3;
        qp3Var.m7713n(obj, j2, ((255 & b) << i) | (qp3Var.m7714m(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: k */
    public static <T> T m7379k(Class<T> cls) {
        try {
            return (T) f30656a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }
}
