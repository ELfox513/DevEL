package p144o7;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: o7.s1 */
/* loaded from: classes2.dex */
public final class C5212s1 {

    /* renamed from: a */
    public static final Unsafe f19540a = m14078B();

    /* renamed from: b */
    public static final Class<?> f19541b = C5120d.m14627b();

    /* renamed from: c */
    public static final boolean f19542c = m14050m(Long.TYPE);

    /* renamed from: d */
    public static final boolean f19543d = m14050m(Integer.TYPE);

    /* renamed from: e */
    public static final AbstractC5217e f19544e = m14037z();

    /* renamed from: f */
    public static final boolean f19545f = m14063Q();

    /* renamed from: g */
    public static final boolean f19546g = m14064P();

    /* renamed from: h */
    public static final long f19547h;

    /* renamed from: i */
    public static final long f19548i;

    /* renamed from: j */
    public static final long f19549j;

    /* renamed from: k */
    public static final long f19550k;

    /* renamed from: l */
    public static final long f19551l;

    /* renamed from: m */
    public static final long f19552m;

    /* renamed from: n */
    public static final long f19553n;

    /* renamed from: o */
    public static final long f19554o;

    /* renamed from: p */
    public static final long f19555p;

    /* renamed from: q */
    public static final long f19556q;

    /* renamed from: r */
    public static final long f19557r;

    /* renamed from: s */
    public static final long f19558s;

    /* renamed from: t */
    public static final long f19559t;

    /* renamed from: u */
    public static final long f19560u;

    /* renamed from: v */
    public static final int f19561v;

    /* renamed from: w */
    public static final boolean f19562w;

    /* renamed from: o7.s1$a */
    /* loaded from: classes2.dex */
    public static class C5213a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        /* renamed from: a */
        public Unsafe run() {
            Field[] declaredFields;
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* renamed from: o7.s1$b */
    /* loaded from: classes2.dex */
    public static final class C5214b extends AbstractC5217e {
        public C5214b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: e */
        public double mo14031e(Object obj, long j) {
            return Double.longBitsToDouble(m14028h(obj, j));
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: f */
        public float mo14030f(Object obj, long j) {
            return Float.intBitsToFloat(m14029g(obj, j));
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: m */
        public void mo14023m(Object obj, long j, double d) {
            m14020p(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: n */
        public void mo14022n(Object obj, long j, float f) {
            m14021o(obj, j, Float.floatToIntBits(f));
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: c */
        public boolean mo14033c(Object obj, long j) {
            if (C5212s1.f19562w) {
                return C5212s1.m14046q(obj, j);
            }
            return C5212s1.m14045r(obj, j);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: d */
        public byte mo14032d(Object obj, long j) {
            if (C5212s1.f19562w) {
                return C5212s1.m14043t(obj, j);
            }
            return C5212s1.m14042u(obj, j);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: k */
        public void mo14025k(Object obj, long j, boolean z) {
            if (C5212s1.f19562w) {
                C5212s1.m14074F(obj, j, z);
            } else {
                C5212s1.m14073G(obj, j, z);
            }
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: l */
        public void mo14024l(Object obj, long j, byte b) {
            if (C5212s1.f19562w) {
                C5212s1.m14071I(obj, j, b);
            } else {
                C5212s1.m14070J(obj, j, b);
            }
        }
    }

    /* renamed from: o7.s1$c */
    /* loaded from: classes2.dex */
    public static final class C5215c extends AbstractC5217e {
        public C5215c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: e */
        public double mo14031e(Object obj, long j) {
            return Double.longBitsToDouble(m14028h(obj, j));
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: f */
        public float mo14030f(Object obj, long j) {
            return Float.intBitsToFloat(m14029g(obj, j));
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: m */
        public void mo14023m(Object obj, long j, double d) {
            m14020p(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: n */
        public void mo14022n(Object obj, long j, float f) {
            m14021o(obj, j, Float.floatToIntBits(f));
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: c */
        public boolean mo14033c(Object obj, long j) {
            if (C5212s1.f19562w) {
                return C5212s1.m14046q(obj, j);
            }
            return C5212s1.m14045r(obj, j);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: d */
        public byte mo14032d(Object obj, long j) {
            if (C5212s1.f19562w) {
                return C5212s1.m14043t(obj, j);
            }
            return C5212s1.m14042u(obj, j);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: k */
        public void mo14025k(Object obj, long j, boolean z) {
            if (C5212s1.f19562w) {
                C5212s1.m14074F(obj, j, z);
            } else {
                C5212s1.m14073G(obj, j, z);
            }
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: l */
        public void mo14024l(Object obj, long j, byte b) {
            if (C5212s1.f19562w) {
                C5212s1.m14071I(obj, j, b);
            } else {
                C5212s1.m14070J(obj, j, b);
            }
        }
    }

    /* renamed from: o7.s1$d */
    /* loaded from: classes2.dex */
    public static final class C5216d extends AbstractC5217e {
        public C5216d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: c */
        public boolean mo14033c(Object obj, long j) {
            return this.f19563a.getBoolean(obj, j);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: d */
        public byte mo14032d(Object obj, long j) {
            return this.f19563a.getByte(obj, j);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: e */
        public double mo14031e(Object obj, long j) {
            return this.f19563a.getDouble(obj, j);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: f */
        public float mo14030f(Object obj, long j) {
            return this.f19563a.getFloat(obj, j);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: k */
        public void mo14025k(Object obj, long j, boolean z) {
            this.f19563a.putBoolean(obj, j, z);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: l */
        public void mo14024l(Object obj, long j, byte b) {
            this.f19563a.putByte(obj, j, b);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: m */
        public void mo14023m(Object obj, long j, double d) {
            this.f19563a.putDouble(obj, j, d);
        }

        @Override // p144o7.C5212s1.AbstractC5217e
        /* renamed from: n */
        public void mo14022n(Object obj, long j, float f) {
            this.f19563a.putFloat(obj, j, f);
        }
    }

    /* renamed from: A */
    public static Object m14079A(Object obj, long j) {
        return f19544e.m14027i(obj, j);
    }

    /* renamed from: C */
    public static boolean m14077C() {
        return f19546g;
    }

    /* renamed from: D */
    public static boolean m14076D() {
        return f19545f;
    }

    /* renamed from: E */
    public static void m14075E(Object obj, long j, boolean z) {
        f19544e.mo14025k(obj, j, z);
    }

    /* renamed from: F */
    public static void m14074F(Object obj, long j, boolean z) {
        m14071I(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: G */
    public static void m14073G(Object obj, long j, boolean z) {
        m14070J(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: H */
    public static void m14072H(byte[] bArr, long j, byte b) {
        f19544e.mo14024l(bArr, f19547h + j, b);
    }

    /* renamed from: K */
    public static void m14069K(Object obj, long j, double d) {
        f19544e.mo14023m(obj, j, d);
    }

    /* renamed from: L */
    public static void m14068L(Object obj, long j, float f) {
        f19544e.mo14022n(obj, j, f);
    }

    /* renamed from: M */
    public static void m14067M(Object obj, long j, int i) {
        f19544e.m14021o(obj, j, i);
    }

    /* renamed from: N */
    public static void m14066N(Object obj, long j, long j2) {
        f19544e.m14020p(obj, j, j2);
    }

    /* renamed from: O */
    public static void m14065O(Object obj, long j, Object obj2) {
        f19544e.m14019q(obj, j, obj2);
    }

    /* renamed from: j */
    public static int m14053j(Class<?> cls) {
        if (f19546g) {
            return f19544e.m14035a(cls);
        }
        return -1;
    }

    /* renamed from: k */
    public static int m14052k(Class<?> cls) {
        if (f19546g) {
            return f19544e.m14034b(cls);
        }
        return -1;
    }

    /* renamed from: n */
    public static Field m14049n(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: o */
    public static long m14048o(Field field) {
        AbstractC5217e abstractC5217e;
        if (field == null || (abstractC5217e = f19544e) == null) {
            return -1L;
        }
        return abstractC5217e.m14026j(field);
    }

    /* renamed from: p */
    public static boolean m14047p(Object obj, long j) {
        return f19544e.mo14033c(obj, j);
    }

    /* renamed from: q */
    public static boolean m14046q(Object obj, long j) {
        return m14043t(obj, j) != 0;
    }

    /* renamed from: r */
    public static boolean m14045r(Object obj, long j) {
        return m14042u(obj, j) != 0;
    }

    /* renamed from: s */
    public static byte m14044s(byte[] bArr, long j) {
        return f19544e.mo14032d(bArr, f19547h + j);
    }

    /* renamed from: t */
    public static byte m14043t(Object obj, long j) {
        return (byte) ((m14039x(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    /* renamed from: u */
    public static byte m14042u(Object obj, long j) {
        return (byte) ((m14039x(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: v */
    public static double m14041v(Object obj, long j) {
        return f19544e.mo14031e(obj, j);
    }

    /* renamed from: w */
    public static float m14040w(Object obj, long j) {
        return f19544e.mo14030f(obj, j);
    }

    /* renamed from: x */
    public static int m14039x(Object obj, long j) {
        return f19544e.m14029g(obj, j);
    }

    /* renamed from: y */
    public static long m14038y(Object obj, long j) {
        return f19544e.m14028h(obj, j);
    }

    /* renamed from: o7.s1$e */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC5217e {

        /* renamed from: a */
        public Unsafe f19563a;

        /* renamed from: a */
        public final int m14035a(Class<?> cls) {
            return this.f19563a.arrayBaseOffset(cls);
        }

        /* renamed from: b */
        public final int m14034b(Class<?> cls) {
            return this.f19563a.arrayIndexScale(cls);
        }

        /* renamed from: c */
        public abstract boolean mo14033c(Object obj, long j);

        /* renamed from: d */
        public abstract byte mo14032d(Object obj, long j);

        /* renamed from: e */
        public abstract double mo14031e(Object obj, long j);

        /* renamed from: f */
        public abstract float mo14030f(Object obj, long j);

        /* renamed from: g */
        public final int m14029g(Object obj, long j) {
            return this.f19563a.getInt(obj, j);
        }

        /* renamed from: h */
        public final long m14028h(Object obj, long j) {
            return this.f19563a.getLong(obj, j);
        }

        /* renamed from: i */
        public final Object m14027i(Object obj, long j) {
            return this.f19563a.getObject(obj, j);
        }

        /* renamed from: j */
        public final long m14026j(Field field) {
            return this.f19563a.objectFieldOffset(field);
        }

        /* renamed from: k */
        public abstract void mo14025k(Object obj, long j, boolean z);

        /* renamed from: l */
        public abstract void mo14024l(Object obj, long j, byte b);

        /* renamed from: m */
        public abstract void mo14023m(Object obj, long j, double d);

        /* renamed from: n */
        public abstract void mo14022n(Object obj, long j, float f);

        /* renamed from: o */
        public final void m14021o(Object obj, long j, int i) {
            this.f19563a.putInt(obj, j, i);
        }

        /* renamed from: p */
        public final void m14020p(Object obj, long j, long j2) {
            this.f19563a.putLong(obj, j, j2);
        }

        /* renamed from: q */
        public final void m14019q(Object obj, long j, Object obj2) {
            this.f19563a.putObject(obj, j, obj2);
        }

        public AbstractC5217e(Unsafe unsafe) {
            this.f19563a = unsafe;
        }
    }

    static {
        boolean z;
        long m14053j = m14053j(byte[].class);
        f19547h = m14053j;
        f19548i = m14053j(boolean[].class);
        f19549j = m14052k(boolean[].class);
        f19550k = m14053j(int[].class);
        f19551l = m14052k(int[].class);
        f19552m = m14053j(long[].class);
        f19553n = m14052k(long[].class);
        f19554o = m14053j(float[].class);
        f19555p = m14052k(float[].class);
        f19556q = m14053j(double[].class);
        f19557r = m14052k(double[].class);
        f19558s = m14053j(Object[].class);
        f19559t = m14052k(Object[].class);
        f19560u = m14048o(m14051l());
        f19561v = (int) (7 & m14053j);
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z = true;
        } else {
            z = false;
        }
        f19562w = z;
    }

    /* renamed from: B */
    public static Unsafe m14078B() {
        try {
            return (Unsafe) AccessController.doPrivileged(new C5213a());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: I */
    public static void m14071I(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m14067M(obj, j2, ((255 & b) << i) | (m14039x(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: J */
    public static void m14070J(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        m14067M(obj, j2, ((255 & b) << i) | (m14039x(obj, j2) & ((255 << i) ^ (-1))));
    }

    /* renamed from: P */
    public static boolean m14064P() {
        Unsafe unsafe = f19540a;
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
            if (C5120d.m14626c()) {
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
            Logger logger = Logger.getLogger(C5212s1.class.getName());
            Level level = Level.WARNING;
            logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    /* renamed from: Q */
    public static boolean m14063Q() {
        Unsafe unsafe = f19540a;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (m14051l() == null) {
                return false;
            }
            if (C5120d.m14626c()) {
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
            Logger logger = Logger.getLogger(C5212s1.class.getName());
            Level level = Level.WARNING;
            logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    /* renamed from: i */
    public static <T> T m14054i(Class<T> cls) {
        try {
            return (T) f19540a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: m */
    public static boolean m14050m(Class<?> cls) {
        if (!C5120d.m14626c()) {
            return false;
        }
        try {
            Class<?> cls2 = f19541b;
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

    /* renamed from: z */
    public static AbstractC5217e m14037z() {
        Unsafe unsafe = f19540a;
        if (unsafe == null) {
            return null;
        }
        if (C5120d.m14626c()) {
            if (f19542c) {
                return new C5215c(unsafe);
            }
            if (!f19543d) {
                return null;
            }
            return new C5214b(unsafe);
        }
        return new C5216d(unsafe);
    }

    /* renamed from: l */
    public static Field m14051l() {
        Field m14049n;
        if (C5120d.m14626c() && (m14049n = m14049n(Buffer.class, "effectiveDirectAddress")) != null) {
            return m14049n;
        }
        Field m14049n2 = m14049n(Buffer.class, "address");
        if (m14049n2 == null || m14049n2.getType() != Long.TYPE) {
            return null;
        }
        return m14049n2;
    }
}
