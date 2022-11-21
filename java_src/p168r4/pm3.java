package p168r4;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p168r4.lm3;
import p168r4.pm3;
/* renamed from: r4.pm3 */
/* loaded from: classes2.dex */
public abstract class pm3<MessageType extends pm3<MessageType, BuilderType>, BuilderType extends lm3<MessageType, BuilderType>> extends uk3<MessageType, BuilderType> {
    private static final Map<Object, pm3<?, ?>> zzb = new ConcurrentHashMap();
    public ip3 zzc = ip3.m10572a();
    public int zzd = -1;

    /* renamed from: A */
    public static Object m8270A(ao3 ao3Var, String str, Object[] objArr) {
        return new ko3(ao3Var, str, objArr);
    }

    /* renamed from: j */
    public static um3 m8262j() {
        return qm3.m7784e();
    }

    /* renamed from: l */
    public static xm3 m8260l() {
        return ln3.m9607e();
    }

    /* renamed from: m */
    public static <E> ym3<E> m8259m() {
        return jo3.m10229e();
    }

    /* renamed from: o */
    public static <T extends pm3<T, ?>> T m8257o(T t, byte[] bArr, int i, int i2, bm3 bm3Var) {
        T t2 = (T) t.mo4087B(4, null, null);
        try {
            ro3 m10584b = io3.m10585a().m10584b(t2.getClass());
            m10584b.mo7406h(t2, bArr, 0, i2, new xk3(bm3Var));
            m10584b.mo7409e(t2);
            if (t2.zza == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (bn3 e) {
            e = e;
            if (e.m12741c()) {
                e = new bn3(e);
            }
            e.m12743a(t2);
            throw e;
        } catch (IOException e2) {
            if (e2.getCause() instanceof bn3) {
                throw ((bn3) e2.getCause());
            }
            bn3 bn3Var = new bn3(e2);
            bn3Var.m12743a(t2);
            throw bn3Var;
        } catch (IndexOutOfBoundsException unused) {
            bn3 m12740d = bn3.m12740d();
            m12740d.m12743a(t2);
            throw m12740d;
        }
    }

    /* renamed from: s */
    public static <T extends pm3<T, ?>> T m8254s(T t, byte[] bArr) {
        T t2 = (T) m8257o(t, bArr, 0, bArr.length, bm3.m12746a());
        m8264h(t2);
        return t2;
    }

    /* renamed from: u */
    public static <T extends pm3<T, ?>> T m8253u(T t, byte[] bArr, bm3 bm3Var) {
        T t2 = (T) m8257o(t, bArr, 0, bArr.length, bm3Var);
        m8264h(t2);
        return t2;
    }

    /* renamed from: z */
    public static <T extends pm3> void m8248z(Class<T> cls, T t) {
        zzb.put(cls, t);
    }

    /* renamed from: B */
    public abstract Object mo4087B(int i, Object obj, Object obj2);

    @Override // p168r4.ao3
    /* renamed from: G */
    public final int mo8269G() {
        int i = this.zzd;
        if (i == -1) {
            int mo7410d = io3.m10585a().m10584b(getClass()).mo7410d(this);
            this.zzd = mo7410d;
            return mo7410d;
        }
        return i;
    }

    @Override // p168r4.ao3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ zn3 mo8268a() {
        lm3 lm3Var = (lm3) mo4087B(5, null, null);
        lm3Var.m9613p(this);
        return lm3Var;
    }

    @Override // p168r4.ao3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ zn3 mo8267b() {
        return (lm3) mo4087B(5, null, null);
    }

    @Override // p168r4.uk3
    /* renamed from: d */
    public final int mo6493d() {
        return this.zzd;
    }

    @Override // p168r4.uk3
    /* renamed from: e */
    public final void mo6492e(int i) {
        this.zzd = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return io3.m10585a().m10584b(getClass()).mo7411c(this, (pm3) obj);
        }
        return false;
    }

    @Override // p168r4.bo3
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ ao3 mo8265f() {
        return (pm3) mo4087B(6, null, null);
    }

    public final int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int mo7405i = io3.m10585a().m10584b(getClass()).mo7405i(this);
        this.zza = mo7405i;
        return mo7405i;
    }

    public final String toString() {
        return co3.m12380a(this, super.toString());
    }

    /* renamed from: v */
    public final <MessageType extends pm3<MessageType, BuilderType>, BuilderType extends lm3<MessageType, BuilderType>> BuilderType m8252v() {
        return (BuilderType) mo4087B(5, null, null);
    }

    /* renamed from: w */
    public final boolean m8251w() {
        pm3<MessageType, BuilderType> pm3Var;
        byte byteValue = ((Byte) mo4087B(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean mo7412a = io3.m10585a().m10584b(getClass()).mo7412a(this);
        if (true != mo7412a) {
            pm3Var = null;
        } else {
            pm3Var = this;
        }
        mo4087B(2, pm3Var, null);
        return mo7412a;
    }

    /* renamed from: x */
    public final BuilderType m8250x() {
        BuilderType buildertype = (BuilderType) mo4087B(5, null, null);
        buildertype.m9613p(this);
        return buildertype;
    }

    /* renamed from: h */
    public static <T extends pm3<T, ?>> T m8264h(T t) {
        if (t != null && !t.m8251w()) {
            bn3 bn3Var = new bn3(new gp3(t).getMessage());
            bn3Var.m12743a(t);
            throw bn3Var;
        }
        return t;
    }

    /* renamed from: y */
    public static <T extends pm3> T m8249y(Class<T> cls) {
        Map<Object, pm3<?, ?>> map = zzb;
        pm3<?, ?> pm3Var = map.get(cls);
        if (pm3Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                pm3Var = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (pm3Var == null) {
            pm3Var = (pm3) ((pm3) rp3.m7379k(cls)).mo4087B(6, null, null);
            if (pm3Var != null) {
                map.put(cls, pm3Var);
            } else {
                throw new IllegalStateException();
            }
        }
        return pm3Var;
    }

    /* renamed from: i */
    public static Object m8263i(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    /* renamed from: k */
    public static um3 m8261k(um3 um3Var) {
        int i;
        int size = um3Var.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size + size;
        }
        return um3Var.mo6484C(i);
    }

    /* renamed from: n */
    public static <E> ym3<E> m8258n(ym3<E> ym3Var) {
        int i;
        int size = ym3Var.size();
        if (size == 0) {
            i = 10;
        } else {
            i = size + size;
        }
        return ym3Var.mo4192S(i);
    }

    /* renamed from: p */
    public static <T extends pm3<T, ?>> T m8256p(T t, ll3 ll3Var) {
        bm3 m12746a = bm3.m12746a();
        try {
            rl3 mo7756B = ll3Var.mo7756B();
            T t2 = (T) t.mo4087B(4, null, null);
            try {
                try {
                    ro3 m10584b = io3.m10585a().m10584b(t2.getClass());
                    m10584b.mo7404j(t2, sl3.m7125U(mo7756B), m12746a);
                    m10584b.mo7409e(t2);
                    try {
                        mo7756B.mo7456h(0);
                        m8264h(t2);
                        m8264h(t2);
                        return t2;
                    } catch (bn3 e) {
                        e.m12743a(t2);
                        throw e;
                    }
                } catch (bn3 e2) {
                    e = e2;
                    if (e.m12741c()) {
                        e = new bn3(e);
                    }
                    e.m12743a(t2);
                    throw e;
                }
            } catch (IOException e3) {
                if (e3.getCause() instanceof bn3) {
                    throw ((bn3) e3.getCause());
                }
                bn3 bn3Var = new bn3(e3);
                bn3Var.m12743a(t2);
                throw bn3Var;
            } catch (RuntimeException e4) {
                if (e4.getCause() instanceof bn3) {
                    throw ((bn3) e4.getCause());
                }
                throw e4;
            }
        } catch (bn3 e5) {
            throw e5;
        }
    }

    /* renamed from: r */
    public static <T extends pm3<T, ?>> T m8255r(T t, ll3 ll3Var, bm3 bm3Var) {
        try {
            rl3 mo7756B = ll3Var.mo7756B();
            T t2 = (T) t.mo4087B(4, null, null);
            try {
                try {
                    ro3 m10584b = io3.m10585a().m10584b(t2.getClass());
                    m10584b.mo7404j(t2, sl3.m7125U(mo7756B), bm3Var);
                    m10584b.mo7409e(t2);
                    try {
                        mo7756B.mo7456h(0);
                        m8264h(t2);
                        return t2;
                    } catch (bn3 e) {
                        e.m12743a(t2);
                        throw e;
                    }
                } catch (RuntimeException e2) {
                    if (e2.getCause() instanceof bn3) {
                        throw ((bn3) e2.getCause());
                    }
                    throw e2;
                }
            } catch (bn3 e3) {
                e = e3;
                if (e.m12741c()) {
                    e = new bn3(e);
                }
                e.m12743a(t2);
                throw e;
            } catch (IOException e4) {
                if (e4.getCause() instanceof bn3) {
                    throw ((bn3) e4.getCause());
                }
                bn3 bn3Var = new bn3(e4);
                bn3Var.m12743a(t2);
                throw bn3Var;
            }
        } catch (bn3 e5) {
            throw e5;
        }
    }

    @Override // p168r4.ao3
    /* renamed from: c */
    public final void mo8266c(wl3 wl3Var) {
        io3.m10585a().m10584b(getClass()).mo7408f(this, xl3.m5261l(wl3Var));
    }
}
