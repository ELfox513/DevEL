package p237z4;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: z4.d3 */
/* loaded from: classes2.dex */
public final class C7627d3 {

    /* renamed from: a */
    public static final Logger f37647a = Logger.getLogger(C7627d3.class.getName());

    /* renamed from: b */
    public static final Unsafe f37648b;

    /* renamed from: c */
    public static final Class<?> f37649c;

    /* renamed from: d */
    public static final boolean f37650d;

    /* renamed from: e */
    public static final boolean f37651e;

    /* renamed from: f */
    public static final AbstractC7631d f37652f;

    /* renamed from: g */
    public static final boolean f37653g;

    /* renamed from: h */
    public static final boolean f37654h;

    /* renamed from: i */
    public static final long f37655i;

    /* renamed from: j */
    public static final long f37656j;

    /* renamed from: k */
    public static final long f37657k;

    /* renamed from: l */
    public static final long f37658l;

    /* renamed from: m */
    public static final long f37659m;

    /* renamed from: n */
    public static final long f37660n;

    /* renamed from: o */
    public static final long f37661o;

    /* renamed from: p */
    public static final long f37662p;

    /* renamed from: q */
    public static final long f37663q;

    /* renamed from: r */
    public static final long f37664r;

    /* renamed from: s */
    public static final long f37665s;

    /* renamed from: t */
    public static final long f37666t;

    /* renamed from: u */
    public static final long f37667u;

    /* renamed from: v */
    public static final long f37668v;

    /* renamed from: w */
    public static final int f37669w;

    /* renamed from: x */
    public static final boolean f37670x;

    /* renamed from: z4.d3$a */
    /* loaded from: classes2.dex */
    public static final class C7628a extends AbstractC7631d {
        public C7628a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: a */
        public final void mo826a(Object obj, long j, double d) {
            m823d(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: b */
        public final void mo825b(Object obj, long j, float f) {
            m824c(obj, j, Float.floatToIntBits(f));
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: j */
        public final float mo817j(Object obj, long j) {
            return Float.intBitsToFloat(m820g(obj, j));
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: k */
        public final double mo816k(Object obj, long j) {
            return Double.longBitsToDouble(m819h(obj, j));
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: e */
        public final void mo822e(Object obj, long j, boolean z) {
            if (C7627d3.f37670x) {
                C7627d3.m841l(obj, j, z);
            } else {
                C7627d3.m839n(obj, j, z);
            }
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: f */
        public final void mo821f(Object obj, long j, byte b) {
            if (C7627d3.f37670x) {
                C7627d3.m851b(obj, j, b);
            } else {
                C7627d3.m842k(obj, j, b);
            }
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: i */
        public final boolean mo818i(Object obj, long j) {
            if (C7627d3.f37670x) {
                return C7627d3.m858J(obj, j);
            }
            return C7627d3.m857K(obj, j);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: l */
        public final byte mo815l(Object obj, long j) {
            if (C7627d3.f37670x) {
                return C7627d3.m860H(obj, j);
            }
            return C7627d3.m859I(obj, j);
        }
    }

    /* renamed from: z4.d3$b */
    /* loaded from: classes2.dex */
    public static final class C7629b extends AbstractC7631d {
        public C7629b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: a */
        public final void mo826a(Object obj, long j, double d) {
            m823d(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: b */
        public final void mo825b(Object obj, long j, float f) {
            m824c(obj, j, Float.floatToIntBits(f));
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: j */
        public final float mo817j(Object obj, long j) {
            return Float.intBitsToFloat(m820g(obj, j));
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: k */
        public final double mo816k(Object obj, long j) {
            return Double.longBitsToDouble(m819h(obj, j));
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: e */
        public final void mo822e(Object obj, long j, boolean z) {
            if (C7627d3.f37670x) {
                C7627d3.m841l(obj, j, z);
            } else {
                C7627d3.m839n(obj, j, z);
            }
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: f */
        public final void mo821f(Object obj, long j, byte b) {
            if (C7627d3.f37670x) {
                C7627d3.m851b(obj, j, b);
            } else {
                C7627d3.m842k(obj, j, b);
            }
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: i */
        public final boolean mo818i(Object obj, long j) {
            if (C7627d3.f37670x) {
                return C7627d3.m858J(obj, j);
            }
            return C7627d3.m857K(obj, j);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: l */
        public final byte mo815l(Object obj, long j) {
            if (C7627d3.f37670x) {
                return C7627d3.m860H(obj, j);
            }
            return C7627d3.m859I(obj, j);
        }
    }

    /* renamed from: z4.d3$c */
    /* loaded from: classes2.dex */
    public static final class C7630c extends AbstractC7631d {
        public C7630c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: a */
        public final void mo826a(Object obj, long j, double d) {
            this.f37671a.putDouble(obj, j, d);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: b */
        public final void mo825b(Object obj, long j, float f) {
            this.f37671a.putFloat(obj, j, f);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: e */
        public final void mo822e(Object obj, long j, boolean z) {
            this.f37671a.putBoolean(obj, j, z);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: f */
        public final void mo821f(Object obj, long j, byte b) {
            this.f37671a.putByte(obj, j, b);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: i */
        public final boolean mo818i(Object obj, long j) {
            return this.f37671a.getBoolean(obj, j);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: j */
        public final float mo817j(Object obj, long j) {
            return this.f37671a.getFloat(obj, j);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: k */
        public final double mo816k(Object obj, long j) {
            return this.f37671a.getDouble(obj, j);
        }

        @Override // p237z4.C7627d3.AbstractC7631d
        /* renamed from: l */
        public final byte mo815l(Object obj, long j) {
            return this.f37671a.getByte(obj, j);
        }
    }

    /* renamed from: A */
    public static int m867A(Object obj, long j) {
        return f37652f.m820g(obj, j);
    }

    /* renamed from: B */
    public static long m866B(Object obj, long j) {
        return f37652f.m819h(obj, j);
    }

    /* renamed from: D */
    public static boolean m864D(Object obj, long j) {
        return f37652f.mo818i(obj, j);
    }

    /* renamed from: E */
    public static float m863E(Object obj, long j) {
        return f37652f.mo817j(obj, j);
    }

    /* renamed from: F */
    public static double m862F(Object obj, long j) {
        return f37652f.mo816k(obj, j);
    }

    /* renamed from: H */
    public static byte m860H(Object obj, long j) {
        return (byte) (m867A(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* renamed from: I */
    public static byte m859I(Object obj, long j) {
        return (byte) (m867A(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* renamed from: J */
    public static boolean m858J(Object obj, long j) {
        return m860H(obj, j) != 0;
    }

    /* renamed from: K */
    public static boolean m857K(Object obj, long j) {
        return m859I(obj, j) != 0;
    }

    /* renamed from: a */
    public static byte m852a(byte[] bArr, long j) {
        return f37652f.mo815l(bArr, f37655i + j);
    }

    /* renamed from: c */
    public static void m850c(Object obj, long j, double d) {
        f37652f.mo826a(obj, j, d);
    }

    /* renamed from: d */
    public static void m849d(Object obj, long j, float f) {
        f37652f.mo825b(obj, j, f);
    }

    /* renamed from: e */
    public static void m848e(Object obj, long j, int i) {
        f37652f.m824c(obj, j, i);
    }

    /* renamed from: f */
    public static void m847f(Object obj, long j, long j2) {
        f37652f.m823d(obj, j, j2);
    }

    /* renamed from: h */
    public static void m845h(Object obj, long j, boolean z) {
        f37652f.mo822e(obj, j, z);
    }

    /* renamed from: i */
    public static void m844i(byte[] bArr, long j, byte b) {
        f37652f.mo821f(bArr, f37655i + j, b);
    }

    /* renamed from: j */
    public static Field m843j(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: l */
    public static void m841l(Object obj, long j, boolean z) {
        m851b(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: n */
    public static void m839n(Object obj, long j, boolean z) {
        m842k(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: r */
    public static boolean m835r() {
        return f37654h;
    }

    /* renamed from: s */
    public static boolean m834s() {
        return f37653g;
    }

    /* renamed from: z4.d3$d */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC7631d {

        /* renamed from: a */
        public Unsafe f37671a;

        /* renamed from: a */
        public abstract void mo826a(Object obj, long j, double d);

        /* renamed from: b */
        public abstract void mo825b(Object obj, long j, float f);

        /* renamed from: c */
        public final void m824c(Object obj, long j, int i) {
            this.f37671a.putInt(obj, j, i);
        }

        /* renamed from: d */
        public final void m823d(Object obj, long j, long j2) {
            this.f37671a.putLong(obj, j, j2);
        }

        /* renamed from: e */
        public abstract void mo822e(Object obj, long j, boolean z);

        /* renamed from: f */
        public abstract void mo821f(Object obj, long j, byte b);

        /* renamed from: g */
        public final int m820g(Object obj, long j) {
            return this.f37671a.getInt(obj, j);
        }

        /* renamed from: h */
        public final long m819h(Object obj, long j) {
            return this.f37671a.getLong(obj, j);
        }

        /* renamed from: i */
        public abstract boolean mo818i(Object obj, long j);

        /* renamed from: j */
        public abstract float mo817j(Object obj, long j);

        /* renamed from: k */
        public abstract double mo816k(Object obj, long j);

        /* renamed from: l */
        public abstract byte mo815l(Object obj, long j);

        public AbstractC7631d(Unsafe unsafe) {
            this.f37671a = unsafe;
        }
    }

    static {
        long j;
        boolean z;
        Unsafe m833t = m833t();
        f37648b = m833t;
        f37649c = C7642g.m770b();
        boolean m865C = m865C(Long.TYPE);
        f37650d = m865C;
        boolean m865C2 = m865C(Integer.TYPE);
        f37651e = m865C2;
        AbstractC7631d abstractC7631d = null;
        if (m833t != null) {
            if (C7642g.m771a()) {
                if (m865C) {
                    abstractC7631d = new C7629b(m833t);
                } else if (m865C2) {
                    abstractC7631d = new C7628a(m833t);
                }
            } else {
                abstractC7631d = new C7630c(m833t);
            }
        }
        f37652f = abstractC7631d;
        f37653g = m831v();
        f37654h = m832u();
        long m828y = m828y(byte[].class);
        f37655i = m828y;
        f37656j = m828y(boolean[].class);
        f37657k = m827z(boolean[].class);
        f37658l = m828y(int[].class);
        f37659m = m827z(int[].class);
        f37660n = m828y(long[].class);
        f37661o = m827z(long[].class);
        f37662p = m828y(float[].class);
        f37663q = m827z(float[].class);
        f37664r = m828y(double[].class);
        f37665s = m827z(double[].class);
        f37666t = m828y(Object[].class);
        f37667u = m827z(Object[].class);
        Field m830w = m830w();
        if (m830w != null && abstractC7631d != null) {
            j = abstractC7631d.f37671a.objectFieldOffset(m830w);
        } else {
            j = -1;
        }
        f37668v = j;
        f37669w = (int) (7 & m828y);
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z = true;
        } else {
            z = false;
        }
        f37670x = z;
    }

    /* renamed from: C */
    public static boolean m865C(Class<?> cls) {
        if (!C7642g.m771a()) {
            return false;
        }
        try {
            Class<?> cls2 = f37649c;
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

    /* renamed from: G */
    public static Object m861G(Object obj, long j) {
        return f37652f.f37671a.getObject(obj, j);
    }

    /* renamed from: b */
    public static void m851b(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m848e(obj, j2, ((255 & b) << i) | (m867A(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: g */
    public static void m846g(Object obj, long j, Object obj2) {
        f37652f.f37671a.putObject(obj, j, obj2);
    }

    /* renamed from: k */
    public static void m842k(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        m848e(obj, j2, ((255 & b) << i) | (m867A(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: t */
    public static Unsafe m833t() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C7636e3());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: u */
    public static boolean m832u() {
        Unsafe unsafe = f37648b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            if (C7642g.m771a()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f37647a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(valueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: v */
    public static boolean m831v() {
        Unsafe unsafe = f37648b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (m830w() == null) {
                return false;
            }
            if (C7642g.m771a()) {
                return true;
            }
            cls.getMethod("getByte", cls2);
            cls.getMethod("putByte", cls2, Byte.TYPE);
            cls.getMethod("getInt", cls2);
            cls.getMethod("putInt", cls2, Integer.TYPE);
            cls.getMethod("getLong", cls2);
            cls.getMethod("putLong", cls2, cls2);
            cls.getMethod("copyMemory", cls2, cls2, cls2);
            cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
            return true;
        } catch (Throwable th) {
            Logger logger = f37647a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(valueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: x */
    public static <T> T m829x(Class<T> cls) {
        try {
            return (T) f37648b.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: y */
    public static int m828y(Class<?> cls) {
        if (f37654h) {
            return f37652f.f37671a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: z */
    public static int m827z(Class<?> cls) {
        if (f37654h) {
            return f37652f.f37671a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: w */
    public static Field m830w() {
        Field m843j;
        if (C7642g.m771a() && (m843j = m843j(Buffer.class, "effectiveDirectAddress")) != null) {
            return m843j;
        }
        Field m843j2 = m843j(Buffer.class, "address");
        if (m843j2 != null && m843j2.getType() == Long.TYPE) {
            return m843j2;
        }
        return null;
    }
}
